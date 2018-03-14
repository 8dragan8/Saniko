// $(document).ready(function(){
//     $(".red-harmonika").click(function(e){
//         console.log('faktura');
//         $(this).toggleClass('active');
//         $(this).next().collapse('toggle');
//     });
   
//     $(".phpBrNaloga-dugme").click(function(e){
//     var red = this.parentNode.parentNode;
//     console.log('dugme');
//         $(red).toggleClass('active');
//         $(red).next().collapse('toggle');
//     });

    
// });

// $(function () {

//     $('.form-faktura').on('submit', function (e) {
//         // $('#skriveno').next().collapse('toggle');

//       e.preventDefault();
//       var parametar = 'faktura=' + this.childNodes[1].childNodes[1].value;

//       $.ajax({
//         type: 'post',
//         url: 'prikaz fakture.php',
//         data: parametar,
//     }).done(
//         function (result) {
//           $('#txtHint-0').append(result);
//         }

//     )

//     });


//   });

function faktura (elem) {
        var ovo = elem.getAttribute('brojReda');
        var aktivniRed = '#' + ovo + '-red';
        var skriveniRed = '#' + ovo + '-skriveni-red';
        var parametar = elem.value;
        $(aktivniRed).next().collapse('toggle');
        if (!$(elem).attr("ucitano")) {
            
            var posting = $.post("prikaz fakture.php", {faktura: parametar});
            posting.done(
                function(result) {
                    $(skriveniRed).empty().append(result);
                    $(elem).attr("ucitano", "true");
                }
            );
        }
    };



function nalog (elem) {
        var ovo = elem.getAttribute('brojReda');
        var aktivniRed = '#' + ovo + '-red';
        var skriveniRed = '#' + ovo + '-skriveni-red';
        var parametar = elem.value;
        $(aktivniRed).next().collapse('toggle');
        if (!$(elem).attr("ucitano")) {

            var posting = $.post("prikaz naloga.php", {nalog: parametar});
            posting.done(
                function(result) {
                    $(skriveniRed).empty().append(result);
                    $(elem).attr("ucitano", "true");
                }
            );
        }
    };