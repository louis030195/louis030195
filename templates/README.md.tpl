<link rel="shortcut icon" href="/favicon.ico">
# [louis030195.com](https://louis030195.com) 🤔

Hi, I'm Louis, I am a carbon-based bipedal life form descended from an 🐒.

In 2022 I [made 7000 contributions on GitHub](https://github.com/louis030195), 
[read 93 books](https://www.goodreads.com/user/show/103091881-louis-beaumont), 
and written 1.000,000 words in Obsidian.
- I also founded an AI startup that became a 5 figure business in only a few months and got into in the latest [Techstars](https://techstars.com) batch.
- In 2023, I built [An AI assistant for Obsidian](https://github.com/louis030195/obsidian-ava) in a month that became a 4 figure business used by 10.000 users. This was part of [Buildspace n&ws2](https://buildspace.so).
- Later I joined 🍊 [OrangeDAO](https://orangedao.xyz) [f1 fellowship](https://opensea.io/assets/matic/0x5014156591996f7dcb4f814dc387291204f8341f/13), building [Embedbase](https://embedbase.xyz)
- I just finished [Buildspace SF1](https://buildspace.so/sf1)
- Working on something new 👨‍🚀... 

[🐒 Follow my journey into the start-up zoo.](https://substack.com/@louis030195?utm_source=profile-page)

## 🗺️ Cheatsheet - The Hitchhiker guide to louis030195

<iframe src="https://link.excalidraw.com/readonly/Vle2esPYM9VKdkOM5dpk" width="100%" height="600px" style="border: none;"></iframe>

## 🔗 Links

- [Teach me something by sending an anonymous feedback](https://www.admonymous.co/louis030195)
- [**lightbrain.louis030195.com**: The near side of my second brain](https://lightbrain.louis030195.com)
- [**brain.louis030195.com**: The dark side of second brain](https://brain.louis030195.com)
- [**louis030195.com**: Automatically updated website displaying various activities](https://louis030195.com)
- [**github.com**: Talk is cheap, some things I created and open sourced](https://github.com/louis030195)
- [**twitter.com**: Twitter](https://twitter.com/@louis030195)
- [**youtube.com**: My Youtube channel](https://www.youtube.com/channel/UCQyHp-A6Y4hwRt7qmi_TYOQ)
- [**goodreads.com**: My book tracking on Goodreads](https://www.goodreads.com/user/show/103091881-louis-beaumont)
- [**linkedin.com**: LinkedIn](https://www.linkedin.com/in/louis030195)

## 🌊 My memory stream

**Here is a list of some of my inputs and outputs, my memory stream.**

Like my outputs? [Help me building the future](https://www.linkedin.com/in/louis030195/).

## 🗒 My [Raindrop](https://raindrop.io) brain food

<iframe style="border: 0; width: 100%; height: 450px; background-color: transparent;" allowfullscreen frameborder="0" src="https://raindrop.io/louis030195/public-26885635/embed/sort=-created&theme=dark&hide=header%2Cadd"></iframe>

[START]

## 🥦 [All my brain food](https://louis030195.notion.site/Readwise-9ba0d6289ae748c59f76bec591548c66?pvs=4)

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


