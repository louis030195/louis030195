<link rel="shortcut icon" href="/favicon.ico">
# [louis030195.com](https://louis030195.com) 🤔

Hi, I'm Louis, I am a carbon-based bipedal life form descended from an 🐒.
In 2022 I [made 4000 contributions on GitHub](https://github.com/louis030195), 
[read 93 books](https://www.goodreads.com/user/show/103091881-louis-beaumont), 
and [written 700,000 words on a public Obsidian](https://brain.louis030195.com).
- I also founded an AI startup that went from 0 to $40k ARR in a few months and got into in the latest [Techstars](https://techstars.com) batch.
- In 2023, I built [An AI assistant for Obsidian](https//github.com/louis030195/obsidian-ava), aligned with my desire to reduce the friction between our physical and digital mind. This was part of [Buildspace n&ws2](https://buildspace.so).
- I also built [Embedbase](https://embedbase.xyz), [Getpilot](https://getpilot.differentai.xyz/), and now focusing on [Solpilot, copilot for smart contracts](https://solpilot.xyz), as part of [OrangeDAO](https://orangedao.xyz) F1 fellowship.

## 🔗 [Links](https://brain.louis030195.com/Links)

- [Cheatsheet](https://brain.louis030195.com/Louis/Louis+-+Cheatsheet)
- [Teach me something by sending an anonymous feedback](https://www.admonymous.co/louis030195)
- [**louis030195.com**: Automatically updated website displaying various activities](https://louis030195.com)
- [**github.com**: Talk is cheap, some things I created and open sourced](https://github.com/louis030195)
- [**twitter.com**: Brain dumps](https://twitter.com/@louis030195)
- [**youtube.com**: My Youtube channel](https://www.youtube.com/channel/UCQyHp-A6Y4hwRt7qmi_TYOQ)
- [**goodreads.com**: My book tracking on Goodreads](https://www.goodreads.com/user/show/103091881-louis-beaumont)
- [**linkedin.com**: Business networking](https://www.linkedin.com/in/louis030195)
- [**last.fm**: Audio memory stream](https://www.last.fm/user/louis030195)
- [Opensea](https://opensea.io/louis030195) - 0x0Fa497B3ebFD52978168737650Ba832d19Dcb2be

## 🌊 My memory stream

**Here is a list of some of my inputs and outputs, my memory stream.**

Like my outputs? [Help me building the future](https://www.linkedin.com/in/louis030195/).

## 🗒 My [Raindrop](https://raindrop.io) brain food

<iframe style="border: 0; width: 100%; height: 450px; background-color: transparent;" allowfullscreen frameborder="0" src="https://raindrop.io/louis030195/public-26885635/embed/sort=-created&theme=dark&hide=header%2Cadd"></iframe>

[START]

<!-- Hack to join array with "," https://stackoverflow.com/questions/21305865/golang-separating-items-with-comma-in-template -->
### 📚 What I'm currently reading
{{range goodReadsCurrentlyReading 10}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{humanize .DateUpdated}}
{{- end}}

### ✍ My latest Goodreads reviews
{{range goodReadsReviews 5}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{.Rating}}/5 - {{humanize .DateUpdated}}
{{- end}}

#### 👷 Check out what I'm currently working on
{{range recentContributions 5}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .OccurredAt}})
{{- end}}

#### 📓 Gists I wrote
{{range gists 5}}
- [{{.Description}}]({{.URL}}) ({{humanize .CreatedAt}})
{{- end}}

#### ⭐ Recent Stars
{{range recentStars 5}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .StarredAt}})
{{- end}}

### 🎬 Youtube Videos
{{range rss "https://www.youtube.com/feeds/videos.xml?channel_id=UCQyHp-A6Y4hwRt7qmi_TYOQ" 5}}
- [{{.Title}}]({{.URL}}) - {{humanize .PublishedAt}}
{{- end}}


