$(document).ready(function(){
	setInterval(function() {
		var total = $("#catchTotal").val();
		
		for(var i=1; i<total+1; i++){
			var termname = "#term" + i;
			var term = $(termname).val();
			var timetestname = "#timetest" + i;
			var myBidname = "#myBid" + i;
			var secretCodename = "#secretCode" + i;
			var confirmname = "#confirm" + i;
			var finalPrice = "#price" + i;
			
			var months = parseInt(term.substring(5, 7));
			var days = parseInt(term.substring(8, 10));
			var hours = parseInt(term.substring(11, 13));
			var minutes = parseInt(term.substring(14, 16));
			var seconds = parseInt(term.substring(17, 19));
			
			// Set the unit values in milliseconds.
			var msecPerMinute = 1000 * 60;
			var msecPerHour = msecPerMinute * 60;
			var msecPerDay = msecPerHour * 24;
			if(months == "1" || "3" || "5" || "7" || "8" || "10" || "12"){
				var msecPerMonth = msecPerDay * 31;
			}else if(months == "2"){
				var msecPerMonth = msecPerDay * 29;
			}else{
				var msecPerMonth = msecPerDay * 30;
			}
			
	
			// Set a date and get the milliseconds
			var date = new Date();
			var dateMsec = date.getTime();
	
			date.setMonth(months-1);
			date.setDate(days);
			date.setHours(hours, minutes, seconds, 0);
	
			// Get the difference in milliseconds.
			var interval = date.getTime() - dateMsec;
	
			// Calculate how many days the interval contains. Subtract that
			// many days from the interval to determine the remainder.
			var months = Math.floor(interval / msecPerMonth );
			interval = interval - (months * msecPerMonth );
			
			var days = Math.floor(interval / msecPerDay );
			interval = interval - (days * msecPerDay );
	
			// Calculate the hours, minutes, and seconds.
			var hours = Math.floor(interval / msecPerHour );
			interval = interval - (hours * msecPerHour );
	
			var minutes = Math.floor(interval / msecPerMinute );
			interval = interval - (minutes * msecPerMinute );
	
			var seconds = Math.floor(interval / 1000);
			
			$(timetestname).html(months + " months, " +  days + " days, " + hours + " hours, " + minutes + " minutes, " + seconds + " seconds.");
			
			
			
			if($(confirmname).val() == 1){
				$(myBidname).html('<a href="/BidProject/trade.mp?code=' + $(secretCodename).val() + 
						          '&finalPrice=' + $(finalPrice).val() + '">낙찰자 연결</a>')
			}else{
				if(months < 0 || days < 0 || hours < 0 || minutes < 0 || seconds < 0){
					$(myBidname).html('<a href="/BidProject/confirm.mp?code=' + $(secretCodename).val() + '">판매확정</a>')
				}else{
					$(myBidname).html('<a href="/BidProject/auction.au?code=' + $(secretCodename).val() + '">상품 정보가기</a>')
				};
			};
		};
	}, 1000);
});

