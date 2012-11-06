$(document).ready(function(){
	$(document).bind('deviceready', function(){
		//Phonegap ready
		onDeviceReady();
	});

	var output = $('#output');

	$.ajax({
		url: 'http://lukekowald.com/mobile/github/phonegap-start/server-components/question.php',
		dataType: 'jsonp',
		jsonp: 'jsoncallback',
		timeout: 5000,
		success: function(data, status){
			
			//var question = '<p>(Category ID: '+item.CategoryID+')<br>Question: '+item.Question+'</p>';
			//output.append(question);
			
			$.each(data, function(i,item){ 
				var rndquestion = '<h1>'+item.Question+'</h1>'
				+ '<p>Category ID: '+item.CategoryID+'<br>Question ID: '
				+ item.QuestionID+'</p>';
			
				output.append(rndquestion);
			});
		},
		error: function(){
		   output.text('There was an error loading the data.');
		}
	});
});