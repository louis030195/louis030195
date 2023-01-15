<link rel="shortcut icon" href="/favicon.ico">
# [louis030195.com](https://louis030195.com) 🤔

Hi, I'm Louis, I am a carbon-based bipedal life form descended from an 🐒.
This year I [made 3000 contributions on GitHub](https://github.com/louis030195), 
[read 50 books](https://www.goodreads.com/user/show/103091881-louis-beaumont), 
and [written 500,000 words on a public Obsidian](https://brain.louis030195.com).
I also [founded](https://linkedin.com/in/louis030195) an AI startup that got incubated in the latest [Techstars](https://techstars.com) batch.

I have specific interests in:
- [Artificial intelligence](https://brain.louis030195.com/Computing/Intelligence/Artificial+intelligence) (language models, multi-modal, cross-modal, unsupervised, alignment, private computation)
- Using tech to augment the human condition: BCI, memory streams, second-brains, AI assistants, solving aging, suffering, and death
- [Philosophy of science, science, compound knowledge](https://brain.louis030195.com/Philosophy/Epistemology/Compound+Knowledge), [prompting humans and machines](https://brain.louis030195.com/Computing/Prompt), structured and deep [conversations](https://brain.louis030195.com/Philosophy/Humans/Conversation)
- [Environment design & personal growth](https://brain.louis030195.com/Personal+growth/Personal+growth)

I'm currently about to change what I spend most of my days on, please read [this](https://brain.louis030195.com/Business/Looking+for+co-founders+to+build+the+future).

Additionally, if you want to know more about my personality, here is a [cheatsheet](https://brain.louis030195.com/Louis/Louis+-+Cheatsheet).

I'm crazy about big questions, and don't like weather-conversations so I created [langa.me](https://langa.me), here are some prompts for you:

[LANGA]

<!-- Calendly badge widget begin -->
<link href="https://assets.calendly.com/assets/external/widget.css" rel="stylesheet">
<script src="https://assets.calendly.com/assets/external/widget.js" type="text/javascript" async></script>
<script type="text/javascript">window.onload = function() { Calendly.initBadgeWidget({ url: 'https://calendly.com/louis030195/rand?hide_gdpr_banner=1', text: 'Have a random talk with me', color: '#90a959', textColor: '#151515', branding: true }); }</script>

## 🔗 [Links](https://brain.louis030195.com/Links)

- [Teach me something by sending an anonymous feedback](https://www.admonymous.co/louis030195)
- [**louis030195.com**: Automatically updated website displaying various activities](https://louis030195.com)
- [**github.com**: Talk is cheap, some things I created and open sourced](https://github.com/louis030195)
- [**twitter.com**: Brain dumps](https://twitter.com/@louis030195)
- [**youtube.com**: My Youtube channel](https://www.youtube.com/channel/UCQyHp-A6Y4hwRt7qmi_TYOQ)
- [**goodreads.com**: My book tracking on Goodreads](https://www.goodreads.com/user/show/103091881-louis-beaumont)
- [**linkedin.com**: Business networking](https://www.linkedin.com/in/louis030195)
- [**last.fm**: Audio memory stream](https://www.last.fm/user/louis030195)

**ETH**: 0x0Cf3e9A82D2FCa4bE60577085a56df2c0Bb1F637

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

### 🎬 Youtube Videos
{{range rss "https://www.youtube.com/feeds/videos.xml?channel_id=UCQyHp-A6Y4hwRt7qmi_TYOQ" 5}}
- [{{.Title}}]({{.URL}}) - {{humanize .PublishedAt}}
{{- end}}

### 🌱 My latest projects
{{range recentRepos 5}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}

### 🔭 Latest releases I've contributed to
{{range recentReleases 5}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{- end}}
