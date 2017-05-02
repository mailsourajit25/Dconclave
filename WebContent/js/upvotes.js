function avote(aid,func){
	var data={
			type:"answer",value:aid,op:func//Here op serves the purpose of the function that is acting on page load or on clicking the page upvote 
	};
	$.ajax({
		type:"GET",
		url:"upvote",
		contentType:"application/json",
		data:data,
		success:function(upvotes){
			if(upvotes[0]==1)
				$("#aupvote"+aid).attr('disabled','disabled');
			if(func=='u')
			$(".aupvote"+aid).text(upvotes[1]);
			
		}
		
	});
	
}


//func=u for upvote click and func=l for page load 
function qvote(qid,func){
	var data={
			type:"ques",value:qid,op:func 
	};
	$.ajax({
		type:"GET",
		url:"upvote",
		data:data,
		success:function(upvotes){
			if(upvotes[0]==1)
				$("#qupvote"+qid).attr('disabled','disabled');
			if(func=='u')
			$(".qupvote"+qid).text(upvotes[1]);
		
		}
		
	});
}