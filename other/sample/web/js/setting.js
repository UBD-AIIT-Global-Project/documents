// JavaScript Document

var countNo=1;
var maxItem=4;
var slWidth = 960;
var slSpeed = 600;
var slInterval = 3000;

//slider function
function scrollSlider(){
	countNo++;
	if(countNo > maxItem){ countNo=1;}
	var leftPixcels = -slWidth*(countNo-1);
	 jQuery("#sliderItem").animate(
	{"left":leftPixcels+"px"},slSpeed);
}

jQuery(document).ready(function(){

	jQuery("a[href^=#]").click(function(){
		var Hash = jQuery(this.hash);
		var HashOffset = jQuery(Hash).offset().top;
		jQuery("html,body").animate({
			scrollTop: HashOffset
		}, 1000);
		return false;
	});
	
	init = setInterval("scrollSlider()", slInterval);
	
	jQuery(".leftBtn").click(function(){
		clearInterval (init);
		countNo--;
		if(countNo < 1){ countNo=maxItem;}
		var leftPixcels = -slWidth*(countNo-1);
		jQuery("#sliderItem").animate(
		{"left":leftPixcels+"px"},slSpeed);
		init = setInterval("scrollSlider()", slInterval);
	});

	jQuery(".rightBtn").click(function(){
		clearInterval (init);
		countNo++;
		if(countNo > maxItem){ countNo=1;}
		var leftPixcels = -slWidth*(countNo-1);
		jQuery("#sliderItem").animate(
		{"left":leftPixcels+"px"},slSpeed);
		init = setInterval("scrollSlider()", slInterval);
	});

	//slider
	jQuery(".rightBtn").css("cursor","pointer");
	jQuery(".leftBtn").css("cursor","pointer");
	jQuery("a.lightbox").lightBox();
});





