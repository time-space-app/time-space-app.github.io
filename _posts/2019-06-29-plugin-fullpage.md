---
title: "부트스트랩4.0기반 fullPage플러그인 준비"
layout: post
summary: 타임스페이스에 사용될 fullpage플러그인
categories: fullpage
thumbnail: posts/hello.jpg
author: TimeSpace
---

# 부트스트랩4.0기반 fullPage플러그인

작업결과확인: <a href="/plugins/fullpage.html" target="_blank">[/plugins/fullpage.html]</a>

부트스트랩4.0기반 fullPage플러그인 사용결과:
<ul>
 <li>부트스트랩 레이아웃 시작 파일은 https://getbootstrap.com/docs/4.0/getting-started/introduction/</li>
 <li>위 URL에서 Starter template# 에서 복사해서 시작 하세요. -> index_layout.html -> index.html</li>
 <li>서브 네비게이션 메뉴 추가: 기술참조: https://bootsnipp.com/snippets/35p8X</li>
 <li>fullPage js플러그인 One page 스크롤 기능추가: 기술참조: https://alvarotrigo.com/fullPage/</li>
 <li>fullPage js플러그인 좌우 스크롤 기능추가: OK.</li>
 <li>다국어지원 플러그인 기능추가: 작업중...</li>
</ul>
<p>
특이사항: 주의: 위 fullPage 플러그인 버전v3.x 이상은 더이상 오픈소스가 아닙니다. 그래서, v2.97버전을 CDN으로 페이지에서 사용가능합니다. https://cdnjs.com/libraries/fullPage.js/2.9.7 음... 역시 결국은 어느정도 안정화 되면, 유료버전으로 바뀌는 군요...) https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.css https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.js 위 v2.9.7은 MIT라이센스 입니다. 그나마 다행입니다.^^ 아래는 해당 문서 상단내용 발췌했습니다.
</p>
<pre>
 /*!
 * fullPage 2.9.7
 * https://github.com/alvarotrigo/fullPage.js
 * @license MIT licensed
 *
 * Copyright (C) 2015 alvarotrigo.com - A project by Alvaro Trigo
 */
</pre>