
// 		$('#sub').click(function(){
// 			$.post('login22.login',{memberId:$('#memberId').val(),password:$('#password').val()},function(data){
// 				alert(data);
// 			});
// 		})


//成功的 登入
$(document).ready(function(){
    $('#sub').click(function(){
        $.ajax({url: "/PCC/login.login",type:"POST",
        	data:$('#formid').serialize(),
        	success: function(data){
			if(data=="會員" || data=="管理員"){
				location.replace('http://localhost:8080/PCC/index.jsp');
			}else if(data=="登入失敗"){
				alert("無此帳號");
			}
        }});
    });
});
//註冊的
$(document).ready(function(){
	$('#account').blur(function(){
//		alert("離開了");
		$.post("/PCC/registy.login",{"memberId":"$('#account')","password":"$('#password')"},function(data){
			if(data=="不可使用的帳號"){
				alert("不可");
//				$('#ac-icon').attr('i').addClass('fa fa-times');
//				<i class="fa fa-times" aria-hidden="true"></i>
			}else{
				alert("ok");
			}
		});
//		$.ajax({
//			url:"/PCC/registy.login",type="POST",
//			data:{memberId:$('#account').val(),password:$('#password').val()},
//			success: function(data){
//				if(data=="不可使用的帳號"){
//					alert("不可");
////					$('#ac-icon').attr('i').addClass('fa fa-times');
////					<i class="fa fa-times" aria-hidden="true"></i>
//				}else{
//					alert("ok");
//				}
//			}});
	});
	
});
		
		
		
		
		
// $.ajax({ 
//     url:"/login22.login",    
//     type:"POST", 
//     contentType: "application/json; charset=utf-8",
//     data: , //Stringified Json Object
//     async: false,    //Cross-domain requests and dataType: "jsonp" requests do not support synchronous operation
//     cache: false,    //This will force requested pages not to be cached by the browser          
//     processData:false, //To avoid making query String instead of JSON
//     success: function(resposeJsonObject){
//         // Success Message Handler
//         alert("ok");
//     }
// });



// 		$('#sub').click(function(){
// 			$.getJSON('login22.login',{'memberId':memberId,'password':password},funtion(data){
// 				$.each(data, function(i, field){
// 	                $("div").append(field + " ");
// 	                alert(data);
// 	            });
				
// 			});
// 		})
		
		
// 		$(document).ready(function(){
// 		$('#memberId').blur(function(){
// 			alert("123");
// 		})
			
// 		});
		
		
		
		
		
		
		
		
		
		
// 		$(document).ready(function(){
// 			$('#sub').on('click',function(){			
// // 			var memberId =$('memberId').val();
// // 				$.get('MemberService',{'memberId':memberId},function(data){
// // 					$('#memberId-error').text(data);
// // 					if(memberId!=''){
// // 						//可以用
// // // 						$('#memberId-error').addClass('');
// // 					}else if(data==""){
						
// // 					}else{
						
// // 					}
// // 				});
// 			});
// 		});
		
// // 		$(function() {

// // 		})
		
		