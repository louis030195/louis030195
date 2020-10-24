### 👋

“Tsze-kung asked what constituted the superior man. The Master said, “He acts before he speaks, and afterwards speaks according to his actions.”” - Confucius

If you want a dive into my thoughts direction <https://publish.obsidian.md/louis030195/README>

#### 👷 Check out what I'm currently working on
{{range recentContributions 5}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .OccurredAt}})
{{- end}}

#### :books: Medium posts
{{range rss "https://medium.com/feed/@@louis.beaumont" 5}}
Title: [{{.Title}}]({{.URL}})
Published: {{humanize .PublishedAt}}
{{end}}

#### :shell: My Latest Gists
{{range gists 3}}
[{{.Description}}]({{.URL}})
Created: {{humanize .CreatedAt}}
{{end}}

#### 🌱 My latest projects
{{range recentRepos 3}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}

#### 🔭 Latest releases I've contributed to
{{range recentReleases 3}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{- end}}
