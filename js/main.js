$(document).ready(function(){
    $(".phpFaktura").click(function(e){
        console.log('faktura');
        $(this).toggleClass('active');
        $(this).next().collapse('toggle');
    });
   
    $(".phpFaktura-dugme").click(function(e){
    var red = this.parentNode.parentNode;
    console.log('dugme');
        $(red).toggleClass('active');
        $(red).next().collapse('toggle');
    });
    
});

// function getButtonValue(e) {
//     // $(e.currentTarget.parent.parent).toggleClass('bg-info');
//     $(this).next().collapse('toggle');
// }