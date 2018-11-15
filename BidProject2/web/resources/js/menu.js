function enterkey() {
    if (window.event.keyCode == 13) {
         search();
    }
}
function search(){
	var word = $("#query").val();
	
	location.href="search.ct?word="+word;
	
}
 $(document).on('mouseover','#searchon', function(){
	$('#query').slideDown(200);
	
});
 $(document).on('mouseleave','#search', function(){
	$('#query').slideUp(200);
	
}); 