---
layout: page
permalink: /blog/categories/fullpage
---
 
<h3> Posts by Category : {{ page.title }} </h3>

<div class="card">
{% for post in site.categories.fullpage %}<!--기존 date_to_string -->
 <li class="category-posts"><span>{{ post.date | date: "%Y.%m.%d" }}</span> &nbsp; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</div>