---
title: "(구)타임스페이스 History"
layout: post
summary: (구)타임스페이스 개발 History
categories: timespace
thumbnail: projects/timespace1.1_metro.jpg
author: TimeSpace
---

# 이전 (구)타임스페이스 개발 히스토리

(구)작업결과확인: <a href="http://webassets.dothome.co.kr/metro/" target="_blank">(구)타임스페이스 v1.1</a>

<pre>
/*타입스페이스 v1.5 */ 
2019.07.04 작업시작
기존 관리자단 short_open_tag 단축오류 미처리부분 <?php로 처리OK.
앞으로 git README.md 파일로 내역정리.

/*타입스페이스 v1.4 */ 
20170926 PHP7, 마리아DB에서 사용가능하게 수정 + php태그를 표준형으로 변경 <?= -> <?php echo
/*타입스페이스 v1.31 */ 
20161208 파일을 2개로 나누는 것이 좋지 않아서 파일 1개로
PHP버전 5.3.3 기준으로 이상 일때 와 이하 일때 나누었습니다.
닷홈 호스팅에서도 정상 작동하는 것을 확인 하였습니다.
단, PHP버전 5.3.3 이상(5.6.28까지 OK) 에서는 IE11 이상에서만 정상 작동합니다.
이번버전의 수정에서 가장 큰 차이점은
- php5.3.3 이하 = encoder 0.4.8(GNU버전:소스코드에디터+파일FTP)를 사용.(IE+크롬 모두 사용가능)
- php5.3.3 이상(5.6.28까지OK) = 위와 같은 기능을 하는 elFinder 2.1(GNU버전)을 사용.(IE11버전포함 이상에서만 사용가능)

/*타입스페이스 v1.30 */ 
20161206 PHP버전 5.4 이상에서 에러가 발생
PHP5.3포함 이하에서 v1.22까지 이하만 지원
PHP5.4포함 이상에서 v1.3까지 이상만 지원 (PHP5.6 까지 테스트OK)
이번버전에서 수정한 파일들중에 핵심은 2개 입니다.
1. time-space/manage/core/function/string.php 한글변환 함수
2. time-space/manage/core/GPLbase.class.php =& new 로 개체생성하는 부분 &제거
Ps. 닷홈 최신 호스팅에서는 코드에디터의 edit_area_compressor.php 파일에서
[... net::ERR_CONTENT_DECODING_FAILED 에러가 나옴.
위 오토셋과 같은 PHP5.6인데 원인을 모르겠습니다. 좀더 고민을 해 봐야 겠으나,
오토셋(php5.6)에서 테스트가 되어서 배포하게 되었습니다.
닷홈의 PHP버전에서 문제가 없을때까지 다른 호스팅을 고려해 봐야 겠습니다.

*다음작업예정
디자인템플릿 추가
게시판 자동 추가/삭제/수정관리 기능추가
DB관리 기능추가
2.0 버전제작예정

*작업완료
20140321(금)타임스페이스v1.1 설치버전 제작OK
20140320(목) php4와 php5호환기능 추가로 필수수정파일 1개로 간소화
필수수정파일위치: time-space/manage/core/config/db.php

20140227 회원관리 필드2개 추가OK
time-space V1.1 버전 업

20140123 수정
cms_write.php 관리자페이지입력폼에 php코드 입력가능한 코드 수정 CKEDITOR.config.protectedSource.push(/<\?[\s\S]*?\?>/g);(추가)
------------------------
메트로UI 디자인 작업완료(time-space.biz.에 적용(2014-01-22 화)
fair,sunny,rain, snow,partly-cloudy,cloudy,mostly-cloudy
js참조 : http://david.dupplaw.me.uk/developer (ie8지원않됨.) 메트로js는 ie8 지원하지 않음.
http://dynamicguru.com/tools/html.php
http://www.jeremymartin.name/projects.php?project=asciible
http://droptiles.com/
http://www.drewgreenwell.com/
http://livetilejs.apphb.com/
www.love2dev.com (호의적)
http://rollstory.tistory.com/73
메트로 스타일은 Microsoft의 윈도우즈 폰 7에서 처음 소개되었고 윈도우즈 8에도 메트로 스타일 UI이 적용되면서 더 많이 알려지게 되었습니다. 메트로 스타일의 UI는 touch-and-tile 인터페이스로 잘 알려져 있으며 컨텐츠, 정보, 움직임 등에 촛점을 맞춰 디자인된 것입니다. 커다란 타일위에 글씨나 이미지로 컨텐츠의 내용이 눈에 잘들어오는 장점이 있어서 최근 여러 웹사이트에서 메트로 스타일을 적용하고 있습니다. 그래서, 이번 작업에서는 메트로 스타일의 디자인으로 워드프레스기반 홈페이지를 만들예정입니다. 그래서, 마이크로소프트에서 제공하는 메트로UI 디자인가이드를 따라 홈페이지를 만들예정입니다.
http://metroui.org.ua/ 최종참조로 time-space 사이트 개발

14. 모바일 사이트 time-space/mobile 개발

13. WordPress 셋팅 후 디자인템플릿 입히기 OK
구글무료서비스추가: 계정 softline@netsgo.com
구글웹마스터도구 사이트추가 : http://www.google.com/webmasters/ (사이트일반관리,접속통계일반,검색어로봇관리)
구글사이트분석기 사이트추가 : http://www.google.com/analytics (접속통계상세분석-추천)

2013.8.28(수)

12. 게시판 관리자부분 CK에디터 붙이기 OK

2013.8.27(화)

10. 서브페이지 sub_layout.html 제작 후 메인/서브페이지 프로그램 입히기 OK

11. 회원로그인및 간편회원가입추가,  비밀글 표현 추가 OK

2013.8.21(수)

9. 관리자단 회원관리 디자인 입히기 및 첨부파일 업로드 테스트 OK

게시판 디자인 파일 http://time-space.biz/time-space/board/list.html

2013.8.1(목)

버전별IE포함 크로스브라우징이 가능하도록 디자인,js소스 변경처리 완료

2013.7.21(일)

홈페이지 폴더및파일구조 만들기

time-space/layout.html 메인페이지 레이아웃 만들기

2013.7.13(토)

time-space/mobile/layout.html 모바일 메인페이지디자인 레이아웃 만들기

2013.6.22(토)

html5용으로 time-space.biz 사이트 수정중, http://www.my-debugbar.com/wiki/IETester/HomePage 설치(IE테스터로 버전별 호환성 점검)

표준CSS 참조사이트 : http://www.w3schools.com/

2013.6.30(일)

﻿주석처리했음. 이상하게 DOCTYPE를 선언해 주면 상단에 여백이 생긴다 ㅜㅜ

2013.6.29(토)

favicon 생성후 타임스페이스에 적용

파비콘 생성 사이트 http://convertico.org/

파일 저장시 encode in utf-8 without BOM 으로 하면 크롬에서 한글이 깨져 보임 그냥 encode in utf-8 로 저장
<img src="/assets/img/projects/timespacev1.1_encode.jpg" width="100%" height="auto">
2013.6.27(목)

구글번역기 추가참조: https://translate.google.com/manager/website/?hl=ko

레이아웃이 깨져서 작업실패

2013.6.20(목)
IE9이상에서 파일관리자 에디터 커서가 마음대로 움직이는 에러수정
/time-space/plus/editarea/edit_area.js 수정 (if( t.isIE >= 9 )t.isIE = false;)
지금까지 작업한 것 http://time-space.biz 에 업로드 앞으로 웹에서 실시간으로 수정예정

-----------time-space 구조------------

/host/home1/webassets/html/index.html(프레임셋호출)

->./time-space/index.html(메인디자인)

----------파일 매니저 부분 ( 폴더명: code, docs, plug, skin, testingdata, ckeditor공통 총 6개 )

->./time-space/index.php(time-space root)

->./time-space/code.php(time-space config)

->./time-space/login.php(time-space management) --> change /time-space/manage/rhksflwk.php

->./time-space/sess_login.php(time-space loginproc: $_SESSION['login_security']) --> change /time-space/manage/rhksflwk/auth.php

->./time-space/save.php(time-space edit file list setup)
->./time-space/code/tree/type.php(tree list filet-ype setup)

->./time-space/code/edit/file.php(time-space ckeditor path setup)

->./time-space/code/base/loader.php(time-space loader setup)

->./time-space/testingdata(time-space ckeditor fileupload folder)

----------보드 매니저 부분 ( 폴더명: board, manage, upload, ckeditor공통 총 4개 )

->./time-space/ckeditor/upload.php(time-space ckeditor fileupload setup)

->./time-space/board(time-space board system)

->./time-space/upload(time-space board fileupload folder)

->./time-space/manage/rhksflwk.php(time-space Board-manager system folder)

->./time-space/manage/core/config/db.php(time-space Board-manager DB config - mysqli 5)

->./time-space/manage/core/database/GPLmysql.class.php(time-space DB config - mysql 4)

8.공지사항 팝업창 관리기능 추가(메인최신글포함) OK

2013.6.18(화)

7.회원관리자페이지 OK

2013.6.16(일)

6.회원로그인세션생성 OK

2013.6.9(일)

4.첨부파일 및 댓글처리 작업완료

5.A/S게시판 답변완료기능 추가 OK

2013.6.8(토)

3. 영문게시판 수정(U), 삭제(C) 작업완료

참조:테이블 키 삭제 및 추가

ALTER TABLE T_BOARD DROP PRIMARY KEY;

ALTER TABLE T_BOARD

ADD PRIMARY KEY (SEQ, BOARDID);

2013.6.7(금)

2. 영문게시판 쓰기(C), 리스트(R) 작업완료

2013.6.01(토)

1. 게시판 테이블 4개 생성

 1) TIME-SPACE.T_BOARD (게시판테이블)

 2) TIME-SPACE.T_ATTACH_FILE (첨부파일 업로드테이블)

 3) TIME-SPACE.T_BOARD_COMMENT (게시판 댓글테이블)

 4) TIME-SPACE.T_MEMBER (회원 테이블)
</pre>