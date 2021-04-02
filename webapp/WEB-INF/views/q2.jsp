<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="common.jsp" %>

<html>
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <title>Analysis</title>
      
      <style>
      	.heading_style_1 h2::after {
		    width: 820px;
		    height: 5px;
		    background: #ddd;
		    content: "";
		    display: block;
		    margin: 15px 0 30px;
		}
      </style>
      
      <script>

		function check1(){

			$.ajax({
				url : "${requestScope.croot}/q2Proc.do",
				type : "post",
				data : {answer : "1"},
				success : function(q2_cnt){
					if(q2_cnt == 1){
						document.goq3.submit();
					}
					else
						alert("실패")
				},

				error : function(){
					alert("서버접속실패")
				}
	
			})

		}

		function check2(){
			
			$.ajax({
				url : "${requestScope.croot}/q2Proc.do",
				type : "post",
				data : {answer : "2"},
				success : function(q2_cnt){
					if(q2_cnt == 1){
						document.goq3.submit();
					}
					else
						alert("실패")
				},

				error : function(){
					alert("서버접속실패")
				}
	
			})

		}

		function check3(){

			$.ajax({
				url : "${requestScope.croot}/q2Proc.do",
				type : "post",
				data : {answer : "3"},
				success : function(q2_cnt){
					if(q2_cnt == 1){
						document.goq3.submit();
					}
					else
						alert("실패")
				},

				error : function(){
					alert("서버접속실패")
				}
	
			})

		}

			

      </script>
      
   </head>
   <body id="default_theme" class="services">
      <!-- header -->
      <header class="header header_style1">
         
      </header>



      <!-- end header -->
      <!-- section -->
      <br>

      <section class="layout_padding_board layer_style" style="padding-top: 130px;">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <div class="full text_align_center">
                     <div class="heading_main center_head_border heading_style_1">
                        <h2>현재  <span>자산비중</span>이 가장 큰 것은? <span style="font-size: 20px; color: black;"><b>(부동산 제외)</b></span></h2>
                     </div>
                  </div>
               </div>
            </div>
          </div>

            <div class="container"><center>

              <div class="row">
              <div class="col-sm-12"><br>
              <button type="button" name="q2" class="btn btn-lg btn-service" style="font-size: 23px; height:20%;" onClick="check1()"><b>예금 / 적금</b></button><br><br><br>
              <button type="button" name="q2"  class="btn btn-lg btn-service" style="font-size: 23px; height:20%;" onClick="check2()"><b>연금 / 펀드</b></button><br><br><br>
              <button type="button" name="q2"  class="btn btn-lg btn-service" style="font-size: 23px; height:20%;" onClick="check3()"><b>주식 / 선물 / ETF</b></button><br><br><br>
				
            </div>
          </div>

            </div>

	</section>

           
      <footer class="footer_style_2">
         
         <!-- footer bottom -->
         <div class="footer_bottom">
            <p><strong>Copyright © 2021 from KITE</strong></p>
         </div>
      </footer>
      <form name="goq3" method="post" action="${requestScope.croot}/q3.do"></form>
   </body>
</html>
