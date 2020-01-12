jQuery(document).ready(function(){
	"use strict";


	var owl = $('.owl-carousel');
    owl.owlCarousel({
        loop: true,
        items: 1,
        nav: true,
        thumbs: true,
        thumbImage: true,
        thumbContainerClass: 'owl-thumbs',
        thumbItemClass: 'owl-thumb-item'
    });
	
});