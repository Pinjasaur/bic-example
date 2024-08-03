# Search

<!-- https://pagefind.app/docs/ -->
<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js"></script>
<div id="search"></div>
<script>
  window.addEventListener("DOMContentLoaded", (event) => {
    new PagefindUI({
      element: "#search",
      showSubResults: true,
      autofocus: true,
      // Strip .html from URLs
      processResult: function (result) {
        const removeHTML = url => url.replaceAll(/\.html/g, "")
        result.url = removeHTML(result.url)
        if (result.sub_results)
          result.sub_results = result.sub_results.map(sub_result => {
            sub_result.url = removeHTML(sub_result.url)
            return sub_result
          })
        return result
      }
    });
  });
</script>
