function loginout() {
					$.ajax({ 
					type : "POST", 
		       	 	url : "user/loginout.do",  
		       	 	data : {}, 
		        	dataType:'json', 
		        	success : function(data) {
		        		if(data.message=="succ"){
		        			location.href="login1.jsp";
		        		}
				},
			});
		}