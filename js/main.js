$(document).ready(function(){
    $(".phpFaktura").click(function(e){
        console.log('faktura');
        $(this).toggleClass('active');
        $(this).next().collapse('toggle');
    });
   
    $(".phpBrNaloga-dugme").click(function(e){
    var red = this.parentNode.parentNode;
    console.log('dugme');
        $(red).toggleClass('active');
        $(red).next().collapse('toggle');
    });

    $(".phpFaktura-dugme").click(function(e){
    //     $.ajax({
    //         type: "POST",
    //         url: "prikaz fakture.php"
    //       }).done(function( data) {
    //         alert( "Request is done" );
    //       });

        var post = this.value;
        $.post('prikaz fakture.php', {post}, function(response){
            // now you can use `response` came from your_file.php after execution
        });
    });

    
});

// function getButtonValue(e) {
//     // $(e.currentTarget.parent.parent).toggleClass('bg-info');
//     $(this).next().collapse('toggle');
// }