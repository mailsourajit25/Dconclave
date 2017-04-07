
	$('#country')
	.dropdown()
	;
	$("#gender").dropdown();
	$('.ui.form')
	.form({
	  fields: {
	    firstname     :{
	    	identifier:'firstname',
	    	rules:[
	    		{
	    		type:'empty',
	    		prompt:'Please enter your First name'
	    		}
	    	]
	    },
	    lastname   : {
	    	identifier:'lastname',
	    	rules:[
	    		{
	    		type:'empty',
	    		prompt:'Please enter your Last name'
	    		}
	    	]
	    },
	    country:{
	    	identifier:'country',
	    	rules:[
	    		{
	    			type:'empty',
	    			promt:'Please Select a Country'
	    		}
	    	]
	    },
	    gender:{
	    	identifier:'gender',
	    	rules:[
	    		{
	    			type:'empty',
	    			prompt:'Choose a gender'
	    		}
	    	]
	    	
	    },
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
	    pass : {
	    	identifier:'pass',
	    	rules:[
	    		{
	                type   : 'empty',
	                prompt : 'Please enter a password'
	               },
	    		{
	    		type:'minLength[6]',
	    		prompt:'Password must contain 7 Characters'
	    		}
	    	]
	    },
	    pass2  : {
	    	identifier:'pass2',
	    	rules:[
	    		{
	             type   : 'empty',
	             prompt : 'Please re-enter password'
	            },
	    		{
	    		type:'match[pass]',
	    		prompt:'Password do not match'
	    		}
	    	]
	    },
	    terms  :{  identifier: 'terms',
	    rules: [
	        {
	          type   : 'checked',
	          prompt : 'You must agree to the terms and conditions'
	        }
	      ]
	    }
	  
	  }
	})
	;

	function checkEmail(a){
		
		$.post('checkemail.jsp',{
			email:a
		},
		
				function(data,status){
			if(data.trim()=="Exists"){
			$("#email_status").html('<span style="color:red">Email Already Exists</span>');
			$("#register").attr('disabled','disabled');
			}else if(data.trim()=="valid"){
				$("#email_status").html('<span style="color:green">Email is Valid</span>');
				$("#register").removeAttr('disabled');
			}
			
			
			
		});
	}
	

	$('.message .close')
	  .on('click', function() {
	    $(this)
	      .closest('.message')
	      .transition('fade')
	    ;
	  })
	;
	
