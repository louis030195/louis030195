#!/usr/bin/env python3
"""
Show 20 last played tracks
"""
import argparse

import os
import sys

import pylast

# You have to have your own unique two values for API_KEY and API_SECRET
# Obtain yours from https://www.last.fm/api/account for Last.fm


API_KEY = os.environ["LASTFM_API_KEY"]
API_SECRET = os.environ["LASTFM_API_SECRET"]

lastfm_username = os.environ["LASTFM_USERNAME"]
lastfm_password = os.environ["LASTFM_PASSWORD"]
lastfm_password_hash = pylast.md5(lastfm_password)

lastfm_network = pylast.LastFMNetwork(
    api_key=API_KEY,
    api_secret=API_SECRET,
    username=lastfm_username,
    password_hash=lastfm_password_hash,
)


def track_and_timestamp(track):
    return f"{track.playback_date}\t{track.track}"


def print_track(track):
    print(track_and_timestamp(track))


TRACK_SEPARATOR = " - "


def split_artist_track(artist_track):
    artist_track = artist_track.replace(" – ", " - ")
    artist_track = artist_track.replace("“", '"')
    artist_track = artist_track.replace("”", '"')

    (artist, track) = artist_track.split(TRACK_SEPARATOR)
    artist = artist.strip()
    track = track.strip()
    print("Artist:\t\t'" + artist + "'")
    print("Track:\t\t'" + track + "'")

    # Validate
    if len(artist) == 0 and len(track) == 0:
        sys.exit("Error: Artist and track are blank")
    if len(artist) == 0:
        sys.exit("Error: Artist is blank")
    if len(track) == 0:
        sys.exit("Error: Track is blank")

    return (artist, track)

def get_recent_tracks(username, number):
    recent_tracks = lastfm_network.get_user(username).get_recent_tracks(limit=number)
    for i, track in enumerate(recent_tracks):
        printable = track_and_timestamp(track)
        print(" - " + printable)
    return recent_tracks


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Show 20 last played tracks",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter,
    )
    parser.add_argument("-u", "--username", help="Last.fm username")
    parser.add_argument(
        "-n",
        "--number",
        default=10,
        type=int,
        help="Number of tracks to show (when no artist given)",
    )
    args = parser.parse_args()

    if not args.username:
        args.username = lastfm_username

    try:
        get_recent_tracks(args.username, args.number)
    except pylast.WSError as e:
        print("Error: " + str(e))

# End of file