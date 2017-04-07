$('.ui.form')
	.form({
	  fields: {
	    email : {
	    	identifier:'email',
	    	rules:[
	    		{
	    		type:'empty',
	    		prompt:'Please enter your email',
	    		type:'email',
	    		prompt:'Enter a valid email'
	    		}
	    	]
	    },
	  }
	})
	;

function checkloginEmail(a){
		
		$.post('checkemail.jsp',{
			email:a
		},
		
				function(data,status){
			if(data.trim()=="valid"){
			$("#log_email_status").html('<span style="color:red">User does not exist</span>');
			$("#login_submit").attr('disabled','disabled');
			}else{
				$("#log_email_status").html('');
				$("#login_submit").removeAttr('disabled');
			}
			
		});
	}