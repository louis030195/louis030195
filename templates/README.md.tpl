
# [louis030195.com](https://louis030195.com) 🤔

Hi, I'm Louis, I am a carbon-based bipedal life form descended from an 🐒. I like [programming](https://github.com/louis030195) (machines or humans),
[reading](https://www.goodreads.com/user/show/103091881-louis-beaumont),
[writing, and thinking](https://brain.louis030195.com).
I'm trying to be less wrong every day, I'm delighted by artificial intelligence, fundamental sciences, epistemology, rationality and transhumanism.

I am co-founder and CTO of [inkdrop.ai](https://inkdrop.ai), [join us 🥰](https://www.linkedin.com/company/inkdrop-ai).
I'm crazy about big questions, and don't like weather-conversations so I created [langa.me](https://langa.me).

<!-- Calendly badge widget begin -->
<link href="https://assets.calendly.com/assets/external/widget.css" rel="stylesheet">
<script src="https://assets.calendly.com/assets/external/widget.js" type="text/javascript" async></script>
<script type="text/javascript">window.onload = function() { Calendly.initBadgeWidget({ url: 'https://calendly.com/louis030195/rand?hide_gdpr_banner=1', text: 'Have a random talk with me', color: '#90a959', textColor: '#151515', branding: true }); }</script>

## 🔗 Links

[brain.louis030195.com/Links](https://brain.louis030195.com/Links)

## 🌊 My memory stream

**Here is a list of some of my inputs and outputs, my memory stream.**

Like my outputs? [Help me building the future](https://www.linkedin.com/in/louis030195/).

## 🗒 My [Raindrop](https://raindrop.io) brain food

<iframe style="border: 0; width: 100%; height: 500px; background-color: transparent;" allowfullscreen frameborder="0" src="https://raindrop.io/louis-beaumont/public-26885635/embed/sort=-created&theme=dark&perpage=5&hide=header%2C+add"></iframe>

## 📝 [My Napkin brain food](https://app.napkin.one/public/XgQC29r1reVhS53v8P3aM49Ea6k2) 

[START]

### 🎙 My recent podcast episodes
{{range rss "https://anchor.fm/s/7871f944/podcast/rss" 5}}
- [{{.Title}}]({{.URL}}) ({{humanize .PublishedAt}})
{{- end}}

<!-- Hack to join array with "," https://stackoverflow.com/questions/21305865/golang-separating-items-with-comma-in-template -->
### 📚 What I'm currently reading
{{range goodReadsCurrentlyReading 5}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{humanize .DateUpdated}}
{{- end}}

### ✍ My latest Goodreads reviews
{{range goodReadsReviews 5}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{.Rating}}/5 - {{humanize .DateUpdated}}
{{- end}}


### 🗒 Medium posts
{{range rss "https://medium.com/feed/@@louis030195" 5}}
- [{{.Title}}]({{.URL}}) - {{humanize .PublishedAt}}
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
