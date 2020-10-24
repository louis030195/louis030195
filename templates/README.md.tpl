### 👋

“Tsze-kung asked what constituted the superior man. The Master said, “He acts before he speaks, and afterwards speaks according to his actions.”” - Confucius

If you want a dive into my thoughts direction <https://publish.obsidian.md/louis030195/README>

#### 👷 Check out what I'm currently working on
{{range recentContributions 5}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .OccurredAt}})
{{- end}}

#### Medium posts
{{range rss "https://medium.com/feed/@@louis.beaumont" 5}}
Title: [{{.Title}}]({{.URL}})
Published: {{humanize .PublishedAt}}
{{end}}

#### My Latest Gists
{{range gists 5}}
[{{.Description}}]({{.URL}})
Created: {{humanize .CreatedAt}}
{{end}}

#### 🌱 My latest projects
{{range recentRepos 5}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}

#### 🔭 Latest releases I've contributed to
{{range recentReleases 5}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{- end}}

#### 📫 How to reach me

- Twitter: https://www.twitter.com/louis_3195
- Blog: https://publish.obsidian.md/louis030195/Introduction
