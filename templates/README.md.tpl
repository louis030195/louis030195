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

Using LLMs in production? [I'll help you for free in exchange of your knowledge](https://cal.com/louis030195/🤖).



<style>@import url('https://fonts.googleapis.com/css2?family=Inter&display=swap');</style><div class="newsletter-form-container"><form class="newsletter-form" action="https://app.loops.so/api/newsletter-form/clpn7vi4q00vdjw0ptm5jz65q" method="POST" style="display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%;"><input class="newsletter-form-input" name="newsletter-form-input" type="email" placeholder="you@example.com" required="" style="font-family: Inter, sans-serif; color: rgb(0, 166, 17); font-size: 14px; margin: 0px 10px 0px 0px; width: 100%; max-width: 300px; min-width: 100px; background: rgb(255, 255, 255); border: 1px solid rgb(209, 213, 219); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 2px; border-radius: 6px; padding: 8px 12px;"><button type="submit" class="newsletter-form-button" style="background: rgb(0, 166, 17); font-size: 14px; color: rgb(255, 255, 255); font-family: Inter, sans-serif; display: flex; width: min-content; max-width: 300px; white-space: nowrap; height: 38px; align-items: center; justify-content: center; flex-direction: row; padding: 9px 17px; box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 2px; border-radius: 6px; text-align: center; font-style: normal; font-weight: 500; line-height: 20px; border: none; cursor: pointer;">⛔️ Follow my journey (no spam) 🐒</button><button type="button" class="newsletter-loading-button" style="background: rgb(0, 166, 17); font-size: 14px; color: rgb(255, 255, 255); font-family: Inter, sans-serif; display: none; width: min-content; max-width: 300px; white-space: nowrap; height: 38px; align-items: center; justify-content: center; flex-direction: row; padding: 9px 17px; box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 2px; border-radius: 6px; text-align: center; font-style: normal; font-weight: 500; line-height: 20px; border: none; cursor: pointer;">Please wait...</button></form><div class="newsletter-success" style="display: none; align-items: center; justify-content: center; width: 100%;"><p class="newsletter-success-message" style="font-family: Inter, sans-serif; color: rgb(0, 0, 0); font-size: 20px;">🌝 ❤️ 🌚</p></div><div class="newsletter-error" style="display: none; align-items: center; justify-content: center; width: 100%;"><p class="newsletter-error-message" style="font-family: Inter, sans-serif; color: rgb(185, 28, 28); font-size: 20px;">Oops! Something went wrong, please try again</p></div>
<button 
class='newsletter-back-button'
type='button' 
style='color:#6b7280;font: 14px, Inter, sans-serif;margin:10px auto;text-align:center;display:none;background:transparent;border:none;cursor:pointer'
onmouseout='this.style.textDecoration="none"' 
onmouseover='this.style.textDecoration="underline"'>
&larr; Back
</button>
</div><script>
function submitHandler(event) {
  event.preventDefault();
  var container = event.target.parentNode;
  var form = container.querySelector(".newsletter-form");
  var formInput = container.querySelector(".newsletter-form-input");
  var success = container.querySelector(".newsletter-success");
  var errorContainer = container.querySelector(".newsletter-error");
  var errorMessage = container.querySelector(".newsletter-error-message");
  var backButton = container.querySelector(".newsletter-back-button");
  var submitButton = container.querySelector(".newsletter-form-button");
  var loadingButton = container.querySelector(".newsletter-loading-button");

  const rateLimit = () => {
    errorContainer.style.display = "flex";
    errorMessage.innerText = "Too many signups, please try again in a little while";
    submitButton.style.display = "none";
    formInput.style.display = "none";
    backButton.style.display = "block";
  }

  // Compare current time with time of previous sign up
  var time = new Date();
  var timestamp = time.valueOf();
  var previousTimestamp = localStorage.getItem("loops-form-timestamp");

  // If last sign up was less than a minute ago
  // display error
  if (previousTimestamp && Number(previousTimestamp) + 60000 > timestamp) {
    rateLimit();
    return;
  }
  localStorage.setItem("loops-form-timestamp", timestamp);

  submitButton.style.display = "none";
  loadingButton.style.display = "flex";

  var formBody = "userGroup=website&email=" + encodeURIComponent(formInput.value);
  fetch(event.target.action, {
    method: "POST",
    body: formBody,
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  })
    .then((res) => [res.ok, res.json(), res])
    .then(([ok, dataPromise, res]) => {
      if (ok) {
        // If response successful
        // display success
        success.style.display = "flex";
        form.reset();
      } else {
        // If response unsuccessful
        // display error message or response status
        dataPromise.then(data => {
          errorContainer.style.display = "flex";
          errorMessage.innerText = data.message
            ? data.message
            : res.statusText;
        });
      }
    })
    .catch(error => {
      // check for cloudflare error
      if (error.message === "Failed to fetch") {
        rateLimit();
        return;
      }
      // If error caught
      // display error message if available
      errorContainer.style.display = "flex";
      if (error.message) errorMessage.innerText = error.message;
      localStorage.setItem("loops-form-timestamp", '');
    })
    .finally(() => {
      formInput.style.display = "none";
      loadingButton.style.display = "none";
      backButton.style.display = "block";
    });
}
function resetFormHandler(event) {
  var container = event.target.parentNode;
  var formInput = container.querySelector(".newsletter-form-input");
  var success = container.querySelector(".newsletter-success");
  var errorContainer = container.querySelector(".newsletter-error");
  var errorMessage = container.querySelector(".newsletter-error-message");
  var backButton = container.querySelector(".newsletter-back-button");
  var submitButton = container.querySelector(".newsletter-form-button");

  success.style.display = "none";
  errorContainer.style.display = "none";
  errorMessage.innerText = "Oops! Something went wrong, please try again";
  backButton.style.display = "none";
  formInput.style.display = "flex";
  submitButton.style.display = "flex";
}

var formContainers = document.getElementsByClassName(
  "newsletter-form-container"
);

for (var i = 0; i < formContainers.length; i++) {
  var formContainer = formContainers[i]
  var handlersAdded = formContainer.classList.contains('newsletter-handlers-added')
  if (handlersAdded) continue;
  formContainer
    .querySelector(".newsletter-form")
    .addEventListener("submit", submitHandler);
  formContainer
    .querySelector(".newsletter-back-button")
    .addEventListener("click", resetFormHandler);
  formContainer.classList.add("newsletter-handlers-added");
}
</script>



## 🗺️ Cheatsheet - The Hitchhiker guide to louis030195

<iframe src="https://link.excalidraw.com/readonly/Vle2esPYM9VKdkOM5dpk" width="100%" height="600px" style="border: none;"></iframe>

## 🔗 Links

- [Teach me something by sending an anonymous feedback](https://www.admonymous.co/louis030195)
- [**brain.louis030195.com**: Raw, unfiltered, unpolitically correct shower thoughts (and PKM)](https://brain.louis030195.com)
- [**louis030195.com**: Automatically updated website displaying various activities](https://louis030195.com)
- [**github.com**: Talk is cheap, some things I created and open sourced](https://github.com/louis030195)
- [**twitter.com**: Twitter](https://twitter.com/@louis030195)
- [**youtube.com**: My Youtube channel](https://www.youtube.com/channel/UCQyHp-A6Y4hwRt7qmi_TYOQ)
- [**goodreads.com**: My book tracking on Goodreads](https://www.goodreads.com/user/show/103091881-louis-beaumont)
- [**linkedin.com**: LinkedIn](https://www.linkedin.com/in/louis030195)

## 🧠 My Personal Knowledge Management System

<iframe src="https://link.excalidraw.com/readonly/DviU0fJZwiBdSiakPikb" width="100%" height="600px" style="border: none;"></iframe>

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


