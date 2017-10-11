	function menu_over(e) {
		e.setAttribute("class","nav-item active");
		
	}
	function menu_out(e) {
		e.setAttribute("class","nav-item");
	}
	
	$('.carousel').carousel();
	
  	$(document).ready(function () {	
  		
  		$('#myModal1').submit(function (event){
  			
  			event.preventDefault();
  			
  			var name = $('#name').val();
  			console.log(name);
  			
  			$.post("http://httpbin.org/post",
  					{"name": name },
  			function(data){
  						var myModal = $('#myModal');
  						myModal.modal();
  						
  						myModal.find('.modal-body').text(data.form.name+'님 가입 되었습니다.');
  					});	
  		});
  	
  		$('#signupForm').submit(function (event){
  			event.preventDefault();
  			 var myModal = $('#myModal1');
				myModal.modal();	
  		});

  		
  		$('#LoginForm').submit(function (event){

  			event.preventDefault();

  			var id = $('#id').val();
  			var pwd = $('#pwd').val();
  			console.log(id,pwd);
  			
  			$.post("http://httpbin.org/post",
  					{ id: id, pwd: pwd },
  			function(data){
  						var myModal = $('#myModal');
  						myModal.modal();
  						
  						myModal.find('.modal-body').text(data.form.id+'님 로그인 되었습니다.');
  					});	
  		});
  		
  	});