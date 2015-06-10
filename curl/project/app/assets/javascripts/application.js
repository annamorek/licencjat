//=require jquery
//=require jquery_ujs
//=require turbolinks
//=require_tree .


$( document ).ready(function() {

var  mn = $(".main-nav");
mns = "main-nav-scrolled";
hdr = $('header').height();

$(window).scroll(function() {
    if( $(this).scrollTop() > hdr ) {
        mn.addClass(mns);
    } else {
        mn.removeClass(mns);
    }
});



});