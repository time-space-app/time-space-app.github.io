---
layout: page
permalink: /blog/categories/timespace
---
<div id="results">
  <h1><!-- `key` listing for `value` --></h1>

  <ul class="results">
    <!-- results lists -->
  </ul>
</div>

<!-- Html Elements for Search -->
<div class="card">
<div id="search-container">
<input type="text" id="search-input" placeholder="search...">
<ul id="results-container"></ul>
</div>
</div>

<!-- Script pointing to jekyll-search.js -->
<script src="{{site.baseurl}}/dest/jekyll-search.js" type="text/javascript"></script>


<script type="text/javascript">
      SimpleJekyllSearch({
        searchInput: document.getElementById('search-input'),
        resultsContainer: document.getElementById('results-container'),
        json: '{{ site.baseurl }}/search2.json',
        searchResultTemplate: '<li><a href="{url}" title="{desc}">{title}</a></li>',
        noResultsText: 'No results found',
        limit: 10,
        fuzzy: false,
        exclude: ['Welcome']
      })
</script>
 
<h3> Posts by Category : {{ page.title }} </h3>

<div class="card">
{% for post in site.categories.timespace %}<!--기존 date_to_string -->
 <li class="category-posts"><span>{{ post.date | date: "%Y.%m.%d" }}</span> &nbsp; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</div>