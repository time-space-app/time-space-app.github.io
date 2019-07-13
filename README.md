---
layout: page
title: Docs
---

# 타임스페이스 작업 내역 문서
 - 앞으로 할일
    - 기술문서에 사용된 지킬프레임웍 카테고리 검색기능 추가
    - fullPage UI 플러그인 커스터 마이징
 - 2019.07.09 기술문서 블로그 생성.
    - 로컬PC에 루비rubyinstaller-devkit-2.5.5-1-x64 설치(https://rubyinstaller.org/) 후 블로그 생성
 - 2019.07.05 저장소 개발환경 생성.
    - Github DeskTOP 설치 후 VS code 개발툴 환경구성.
 - 2019.07.04 로컬 개발환경 생성.
    - 타임스페이스 프레임웍 개발환경 설치: wampserver3.1.9_x64.
    - wmap패널 localhost 항목에서 vhost를 사용해서, 여러 프로젝트 작업 가능처리.
    - 타임스페이스 v1.4 개발코드 실행.
<pre>
*wampserver3.1.9_x64 설치시:
주의) vs12_vcredist_x64 -> vs13_vcredist_x64 -> vs15_vcredist_x64 모두 설치해야 한다.

*wampserver3.1.9_x64 설정: 패널아이콘(마우스를 이용)해서...아래 2가지 설정 후 wamp재실행.
1.아파치설정- html내에서 php코드 실행가능하게
httpd.conf 항목추가
AddType application/x-httpd-php .php4 .php .phtml .ph .inc .html .htm
2.mysql설정- 
[client]
default-character-set=utf8
[mysqldump]
default-character-set = utf8
[mysql]
default-character-set=utf8
[mysqld]
init_connect="SET collation_connection = utf8_general_ci"
init_connect="SET NAMES utf8"
character-set-server = utf8
</pre>

새 기술문서 작성 방법(지킬플러그인사용) 예: 파일명= _posts/2019-06-29-plugin-fullpage.md
아래는 입력내용 예시
<pre>
---
title: "부트스트랩4.0기반 fullPage플러그인 사용"
layout: post
author: TimeSpace
summary: 타임스페이스에 사용될 fullpage플러그인
thumbnail: posts/hello.jpg
categories: fullPage
---

이 게시물은 _posts 디렉토리에서 찾을 수 있습니다. 계속해서 수정하고 사이트를 다시 빌드하여 변경 사항을 확인하십시오. 
여러 가지 방법으로 사이트를 재구성 할 수 있지만 가장 일반적인 방법은 웹 서버를 시작하고 
파일이 업데이트 될 때 사이트를 자동으로 재생성하는 jekyll serve를 실행하는 것입니다.

새 게시물을 추가하려면,
YYYY-MM-DD-name-of-post.ext 규약을 따르는 _posts 디렉토리에 파일을 추가하고 필요한 앞부분을 포함하십시오. 
이 게시물의 출처를보고 어떻게 작동하는지에 대한 아이디어를 얻으십시오.

Jekyll은 코드 스 니펫에 대한 강력한 지원도 제공합니다.
</pre>
```python
def print_hi(name):
  print("hello", name)
print_hi('Tom')
```
    
