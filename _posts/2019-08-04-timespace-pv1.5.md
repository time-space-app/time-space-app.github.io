---
title: "pv1.5 미리보기"
layout: post
summary: pv1.5 미리보기 사이트 오픈
categories: timespace
thumbnail: projects/pv1.5.jpg
author: TimeSpace
---

# 타임스페이스 pv1.5 미리보기 사이트 오픈

작업결과확인: <a href="http://time-space.biz/_fullpage/" target="_new">http://time-space.biz/_fullpage/</a>

pv1.6 앞으로 할일:
<ul>
 <li>업로드 저장소를 기존 local 스토리지에서 swift service 스토리지로 사용하게...</li>
 <li>또는, 업로드 폴더자체를 마운트 스토리지 처럼 사용가능하게 변경할지 고민중.</li>
 <li>Redis서비스 로그인은 쿠키를 Key로 Resdis 값을 비교, 기존 코딩은 세션만 사용하기 때문에 변경할지 고민중...</li>
 <li>기존 로그인 인증에 세션만 사용한다면, Redis서비스 로그인 코딩은 사용할 필요 없음.</li>
 <li>Redis를 사용하는 목적은 CI/DI지속적인 배포 시 세션이 끊기게 됩니다. 즉, CI/DI시 세션이 끊기는 것을 방지하기 위해 Resdis에 Cookie키와 Value값을 저장하는데, 필요없다면, 굳이 Redis로 지속적인 배포 시 세션을 유지할 필요는 없습니다.^^</li>
 <li>게다가, Cookie 사용 코딩은 2010년 초부터 보안이슈 때문에 세션으로 변경하는 작업을 했던 기억이 있습니다.</li>
 <li>그런데, 클라우드라고 다시 Cookie로 돌아 갈 수는 없다고 생각 됩니다.</li>
</ul>
pv1.5 지금까지 작업결과: v1.5 + 파스타 클라우드기반 코딩 + phpMyAdmin
<ul>
 <li>타임스페이스 v1.5 를 클라우드(파스타)용으로 변경한 타임스페이스 pv1.5 입니다. </li>
 <li>DB외부 접근이 어려 클라우드 특성상 내부에 phpMyAdim 플러그인도 클라우드용으로 변경해서 추가</li>
</ul>
phpMyAdmin: 기술참조
<ul>
 <li>https://www.phpmyadmin.net/license/</li>
 <li>GNU General Public License, version 2</li>
 <li>https://github.com/atineoSE/sample-php-app-cloudfoundry</li>
 <li>https://stackoverflow.com/questions/44068922/cloud-foundry-php-website-instance-crashes-with-custom-mime-configuration</li>
</ul>
