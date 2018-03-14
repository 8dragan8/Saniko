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

        var parametar = this.value;
        // $.post('prikaz fakture.php', {parametar}, function(response){
            xmlhttp.open("POST", "gethint.php?q=" + str, true);
            xmlhttp.send();
                // });
    });

    
});

$(function () {

    $('.form-faktura').on('submit', function (e) {
        // $('#skriveno').next().collapse('toggle');

      e.preventDefault();
      var parametar = 'faktura=' + this.childNodes[1].childNodes[1].value;

      $.ajax({
        type: 'post',
        url: 'prikaz fakture.php',
        data: parametar,
    }).done(
        function (result) {
          $('#txtHint-0').append(result);
        }

    )

    });


  });
