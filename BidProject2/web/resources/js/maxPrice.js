

$(document).ready(function(){
	var fprice = null;
	
	var code = $("#code").val();
			
	$.ajax({
		type:"get",
		url:"/BidProject/maxPrice.au?code="+code,
		dataType : "json",
		success:function(data){
			var table = "<table id='timetable' style='margin-left: auto; margin-right: auto;' ><tr><th>Days</th><th>Hours</th><th>Minutes</th></tr><tr><td class='timerbox'><span class='timer'>0</span>&nbsp;<span class='timer'>";
			var table2 = "</span></td></tr></table>"
			var result = comma(data.finalPrice);
			$("#output").html("KRW " + result);
			if(data.term == 'fin'){
				$("#dtime").html("<table id='timetable' style='margin-left: auto; margin-right: auto;' ><tr><th>Days</th><th>Hours</th><th>Minutes</th></tr><tr><td class='t1'>&nbsp;00&nbsp;</td><td class='t2'>&nbsp;00&nbsp;</td><td class='t3'>&nbsp;00</td></tr>")
				$("#submit").html("<input type='button' id='submitbutton' value='경매가 종료되었습니다'/>")
			}else{
				$("#dtime").html(table + data.term.substring(0,1) + "</span></td><td class='timerbox'><span class='timer'>" + data.term.substring(1,2) + "</span>&nbsp;<span class='timer'>" + data.term.substring(2,3) + "</span></td><td class='timerbox'><span class='timer'>" +  data.term.substring(3,4) + "</span>&nbsp;<span class='timer'>" + data.term.substring(4,5) + table2);
				$("#submit").html("<input type='submit'  id='submitbutton' value='PLACE BID'/>")
			}
			
			
		},
		error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    	}
	
	});
	setInterval(function() {
			var code = $("#code").val();
			
			$.ajax({
				type:"get",
				url:"maxPrice.au?code="+code,
				dataType : "json",
				success:function(data){
					var table = "<table id='timetable' style='margin-left: auto; margin-right: auto;'><tr><th>Days</th><th>Hours</th><th>Minutes</th></tr><tr><td class='timerbox'><span class='timer'>0</span>&nbsp;<span class='timer'>";
					var table2 = "</span></td></tr></table>"
					var result = comma(data.finalPrice);
					$("#output").html("KRW " + result);
					$("#checkhere").html("<input type='hidden' id='checkprice' value='" + data.finalPrice + "'>");
					if(data.term == 'fin'){
						$("#dtime").html("<table id='timetable' style='margin-left: auto; margin-right: auto;' ><tr><th>Days</th><th>Hours</th><th>Minutes</th></tr><tr><td class='t1'>&nbsp;00&nbsp;</td><td class='t2'>&nbsp;00&nbsp;</td><td class='t3'>&nbsp;00</td></tr>")
						$("#submit").html("<input type='button' id='submitbutton'  value='경매가 종료되었습니다'/>")
					}else{
						$("#dtime").html(table + data.term.substring(0,1) + "</span></td><td class='timerbox'><span class='timer'>" + data.term.substring(1,2) + "</span>&nbsp;<span class='timer'>" + data.term.substring(2,3) + "</span></td><td class='timerbox'><span class='timer'>" +  data.term.substring(3,4) + "</span>&nbsp;<span class='timer'>" + data.term.substring(4,5) + table2);
						$("#submit").html("<input type='submit' id='submitbutton' value='PLACE BID'/>")
					}
				},
				error:function(request,status,error){
		            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    	}
				 
			});
		}, 3000);

		
	function comma(str) {

	    str = String(str);

	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

	}
		
	
	
});
