<link rel="shortcut icon" href="/favicon.ico">
# [louis030195.com](https://louis030195.com) 🤔

Carbon-based intelligence 🐒. Working on my 3rd AI startup (top secret 🕵️).

## 🗺️ Cheatsheet - The Hitchhiker guide to louis030195

<iframe src="https://link.excalidraw.com/readonly/BZRSRgsoF8sPs6Qcw4Tg" width="100%" height="600px" style="border: none;"></iframe>

## 🔗 Links

- [Teach me something by sending an anonymous feedback](https://www.admonymous.co/louis030195)
- [**brain.louis030195.com**: Raw, unfiltered, unpolitically correct shower thoughts (and PKM)](https://brain.louis030195.com)
- [**lu.ma**: tech/science events i organize](https://lu.ma/u/louis030195/events?past=1)
- [**louis030195.com**: Automatically updated website displaying various activities](https://louis030195.com)
- [**github.com**: Talk is cheap, some things I created and open sourced](https://github.com/louis030195)
- [**twitter.com**: Twitter](https://twitter.com/@louis030195)
- [**youtube.com**: My Youtube channel](https://www.youtube.com/channel/UCQyHp-A6Y4hwRt7qmi_TYOQ)
- [**goodreads.com**: My book tracking on Goodreads](https://www.goodreads.com/user/show/103091881-louis-beaumont)
- [**linkedin.com**: LinkedIn](https://www.linkedin.com/in/louis030195)

## 🌊 My memory stream

**Here is a list of Louis brain diet & outputs:**

[START]

<!-- Hack to join array with "," https://stackoverflow.com/questions/21305865/golang-separating-items-with-comma-in-template -->
### 📚 Books Louis is reading
{{range goodReadsCurrentlyReading 10}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{humanize .DateUpdated}}
{{- end}}

### ✍ Recent book reviews
{{range goodReadsReviews 5}}
- {{ range $index, $author := .Book.Authors}} {{if $index}},{{end}} **{{$author.Name}}** {{end}} - [{{.Book.Title}}]({{.Book.Link}}) - {{.Rating}}/5 - {{humanize .DateUpdated}}
{{- end}}

Anything that align with your interest? Let's have a 15-30 min remote coffee:

<!-- Cal inline embed code begins -->
<div style="width:100%;height:100%;overflow:scroll" id="my-cal-inline"></div>
<script type="text/javascript">
  (function (C, A, L) { let p = function (a, ar) { a.q.push(ar); }; let d = C.document; C.Cal = C.Cal || function () { let cal = C.Cal; let ar = arguments; if (!cal.loaded) { cal.ns = {}; cal.q = cal.q || []; d.head.appendChild(d.createElement("script")).src = A; cal.loaded = true; } if (ar[0] === L) { const api = function () { p(api, arguments); }; const namespace = ar[1]; api.q = api.q || []; typeof namespace === "string" ? (cal.ns[namespace] = api) && p(api, ar) : p(cal, ar); return; } p(cal, ar); }; })(window, "https://app.cal.com/embed/embed.js", "init");
Cal("init", "cof", {origin:"https://cal.com"});

  Cal.ns.cof("inline", {
	elementOrSelector:"#my-cal-inline",
	calLink: "louis030195/cof",
	layout: "month_view"
  });
  
  Cal.ns.cof("ui", {"styles":{"branding":{"brandColor":"#000000"}},"hideEventTypeDetails":false,"layout":"month_view"});
  </script>
  <!-- Cal inline embed code ends -->
