
#### 🤔

Hi, I'm Louis, I do a lot of software bricolage and book reading.
I enjoy learning every day about philosophy, hard sciences and of course everything around software (2.0).
I'm a practitioner of no/very low carb diet (since 2019)(and I'm still alive, are grains for humans?),
hormesis and such natural stressors human evolved in (inverse, always inverse).


This page show general activities automatically updated - [louis030195.com](https://louis030195.com)
Some (messy) thoughts - [brain.louis030195.com](https://brain.louis030195.com)

Bricoleur of <https://angel.co/company/langame>.

<!-- Hack to join array with "," https://stackoverflow.com/questions/21305865/golang-separating-items-with-comma-in-template -->
#### 📚 What I'm currently reading
{{range goodReadsCurrentlyReading 5}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{humanize .DateUpdated}}
{{- end}}

#### ✍ My latest Goodreads reviews
{{range goodReadsReviews 5}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{.Rating}}/5 - {{humanize .DateUpdated}}
{{- end}}


#### 🗒 Medium posts
{{range rss "https://medium.com/feed/@@louis030195" 5}}
- [{{.Title}}]({{.URL}}) - {{humanize .PublishedAt}}
{{- end}}

#### 🎬 Youtube Videos
{{range rss "https://www.youtube.com/feeds/videos.xml?channel_id=UCQyHp-A6Y4hwRt7qmi_TYOQ" 5}}
- [{{.Title}}]({{.URL}}) - {{humanize .PublishedAt}}
{{- end}}

#### ⚡ My Latest Gists
{{range gists 5}}
- [{{.Description}}]({{.URL}}) - Created: {{humanize .CreatedAt}}
{{- end}}

#### 🌱 My latest projects
{{range recentRepos 5}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}

#### 🔭 Latest releases I've contributed to
{{range recentReleases 5}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{- end}}

#### 🔗 Links

[<img src="assets/Website.png" alt="Website" width="40" height="40">](https://louis030195.com)
[<img src="assets/Obsidian.png" alt="Obsidian" width="40" height="40">](https://brain.louis030195.com)
[<img src="assets/GitHub.png" alt="GitHub" width="40" height="40">](https://github.com/louis030195)
[<img src="assets/Medium.png" alt="Medium" width="40" height="40">](https://louis-beaumont.medium.com)
[<img src="assets/Goodreads.png" alt="Goodreads" width="40" height="40">](https://www.goodreads.com/user/show/103091881-louis-beaumont)
[<img src="assets/Readwise.png" alt="Readwise" width="40" height="40">](https://readwise.io/@louis)
