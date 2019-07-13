---
layout: page
title: Styleguide
---
  <!--에디터 상단 아이콘 전용-->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
  <!--코드미러 전용-->
  <link href="/plugins/codemirror/lib/codemirror.css" rel="stylesheet">
  <link href="/plugins/codemirror/addon/dialog/dialog.css" rel="stylesheet">
  <link href="/plugins/codemirror/addon/search/matchesonscrollbar.css" rel="stylesheet">
  <link href="/plugins/codemirror/theme/midnight.css" rel="stylesheet">
  <script src="/plugins/codemirror/lib/codemirror.js"></script>
  <script src="/plugins/codemirror/mode/xml/xml.js"></script>
  <script src="/plugins/codemirror/mode/htmlmixed/htmlmixed.js"></script>
  <script src="/plugins/codemirror/addon/dialog/dialog.js"></script>
  <script src="/plugins/codemirror/addon/search/searchcursor.js"></script>
  <script src="/plugins/codemirror/addon/search/search.js"></script>
  <script src="/plugins/codemirror/addon/scroll/annotatescrollbar.js"></script>
  <script src="/plugins/codemirror/addon/search/matchesonscrollbar.js"></script>
  <script src="/plugins/codemirror/addon/search/jump-to-line.js"></script>
  <!--코드 자동완성기능 추가 예, html:5 + 탭키 -->
  <script src="/plugins/codemirror/lib/emmet.js"></script>
  <!--realtime 코어-->
  <link href="/plugins/codemirror/realtime.css" rel="stylesheet">
  <script src="/plugins/codemirror/realtime.js"></script>
  <style>#preview-code {width: 100%;border: 1px solid #cecece;padding: 20px;overflow-y: scroll;background-color: white;}</style>

<div class="row no-gutters">
  <div class="col-md-5 col-centered">
    <div id="editor" style="display: none;">
        <textarea  id="reditor" class="reditor" rows="4" cols="50" name="text_area" value=""></textarea>
    </div>
  </div>
  <div class="col-md-7 col-centered">
    <div id="preview" style="display: none;">
      <div id="preview-code"></div>
    </div>
  </div>        
</div>

<script>
  var myCodeMirror;

  $(document).ready(function() {
    $("#preview").css("display","block");
    $("#editor").css("display","block");
    
    var area = document.querySelector('textarea');
    if (area.addEventListener) {
      area.addEventListener('input', function() {
        $('#preview-code').html($(this).val());
      }, false);
    } else if (area.attachEvent) {
      area.attachEvent('onpropertychange', function() {
        $('#preview-code').html($(this).val());
      });
    }

    area.addEventListener("focus", function() {
        $('#preview-code').html($(this).val());
    });

    /* ajax url에서 Data 로드 Start */
    function ShowLoading() {
        d = document.createElement('div');
        $(d).addClass('card blog-post loading')
            .css({"background":"rgba(0,0,0,0.8)","color":"white","text-align":"center"})
            .html("<div card-body center>Data loading ...</div>")
            .prependTo($(".no-gutters"))
    }
    function HideLoading() { $(".loading").fadeOut(); $(".loading").remove();  }
    ShowLoading();
    function loadArticle(filename){ //alert(filename);//디버그
      $.ajax({
          type: 'GET',
          url: "/"+filename,
          cache: false,
          success: function(response){
              setTimeout(function(){ // 시간 지연
                  $("#reditor").val(response);
                  myCodeMirror.getDoc().setValue(response);
                  HideLoading();
              }, 3000);
          }
      });
    }
    loadArticle("styleguide_content.html");
    /* ajax url에서 Data 로드 End */
    /* $("#reditor").val('<h2>Codemirror단축키</h2>\n<p>Ctrl-F / Cmd-F : 검색 시작<br>\nCtrl-G / Cmd-G : 다음 검색<br>\nShift-Ctrl-G / Shift-Cmd-G : 이전 검색<br>\nShift-Ctrl-F / Cmd-Option-F : 1개씩 변경<br>\nShift-Ctrl-R / Shift-Cmd-Option-F : 전체변경<br>\n Alt-F : Persistent search (검색대화상자유지, enter to 다음검색, Shift-Enter to 이전검색)<br>\n Alt-G : 라인 이동<br></p>\n\n<h2>Real-Time HTML Editor</h2>\n<p>특징:  Right frame에 실시간 출력됨.<br>\n<b>자동 코딩 방법 : 태그 after Tab키 </b><br>\n<b>Tab키</b> 예1, htmnl:5 after 탭키.<br>\n<b>Tab키</b> 예2, form after 탭키.</p>'); */
    $('#preview-code').html($("#reditor").val());
            
    myCodeMirror =  CodeMirror.fromTextArea(document.getElementById('reditor'), {
      mode: 'htmlmixed',
      theme: 'default',
      lineNumbers: true,
      indentWithTabs : true,
      smartIndent : true,
      autofocus : true,
      lineWrapping : false,
      extraKeys: {"Alt-F": "findPersistent"},
      onChange: function (cm) {
      }
    });

    myCodeMirror.on("change",$.fn.cmChange);
    emmetCodeMirror(myCodeMirror);

    $(window).resize(function() {
        var bodyheight = $(this).height();

        $("#preview-code").height(bodyheight - 110);
        $(".reditor").height(bodyheight - 70);
        myCodeMirror.setSize($(".reditor").width(), bodyheight-110);

        synchronize_scroll();

    }).resize();

  });

  $.fn.cmChange = function(cm,cmChangeObject){
      $('#preview-code').html(cm.getValue());

      synchronize_scroll();

  }

  function synchronize_scroll() {
      //var kim1 = $('#preview-code').scrollTop() + $('#preview-code').innerHeight();
      //console.log("kim1: "+ kim1);
      //console.log("right: "+$('#preview-code')[0].scrollHeight);
      var rate_right_base = $('#preview-code')[0].scrollHeight;
      var rate_left = $('.CodeMirror-scroll')[0].scrollHeight;
      var rate_cal = (rate_left/rate_right_base);
      var isLeftScrollTopCalled = false;
      $('.CodeMirror-scroll').scroll(function (e) {
          if($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
              $('#preview-code').scrollTop($('#preview-code')[0].scrollHeight-$('#preview-code').innerHeight());
              return isRightScrollTopCalled = true;
          }

          if (isRightScrollTopCalled)  {
              return isRightScrollTopCalled = false;
          }
          $('#preview-code').scrollTop($(this).scrollTop()*rate_cal);
          isLeftScrollTopCalled = true;
      });
      var isRightScrollTopCalled = false;
      $('#preview-code').scroll(function (e) {
          if($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight + 200) {
              return isRightScrollTopCalled = true;
          }
          
          if (isLeftScrollTopCalled)  {
              return isLeftScrollTopCalled = false;
          }
          $('.CodeMirror-scroll').scrollTop($(this).scrollTop());
          isRightScrollTopCalled = true;
      });
    }
</script>