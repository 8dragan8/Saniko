$(document).ready(function(){
    $(".red-harmonika").click(function(e){

        var ovo = this.getAttribute('brojReda');
        var skriveniRed = '#' + ovo + '-skriveni-red';
        var idNaloga = this.getAttribute('idNaloga');
        var idfakture = this.getAttribute('idfakture');



        console.log('faktura');
        $(this).toggleClass('active');
        $(this).next().collapse('toggle');

        if (!$(skriveniRed).attr("ucitano")) {
            
            tabs(ovo, idNaloga, idfakture, skriveniRed);
        }

    });

    // $('.nav-tabs > li').click(function(){

    //     var ckliknutiTab = $(this).find('a').attr('href');
    //     $(this.parentNode).next('.tab-content').find('.active').toggleClass('in active').end();
    //     $(this.parentNode).next('.tab-content').find(ckliknutiTab).addclass('in active').end();
    // })
   
    
});



// function faktura (elem) {
//         var ovo = elem.getAttribute('brojReda');
//         var aktivniRed = '#' + ovo + '-red';
//         var skriveniRed = '#' + ovo + '-skriveni-red';
//         var idfakture = elem.value;
//         $(aktivniRed).next().collapse('toggle');
//         if (!$(elem).attr("ucitano")) {
            
//             ajaxUpit('prikaz fakture.php', idfakture, skriveniRed);
//             $(elem).attr("ucitano", "true");
//         }
//     };



// function nalog (elem) {
//         var ovo = elem.getAttribute('brojReda');
//         var aktivniRed = '#' + ovo + '-red';
//         var skriveniRed = '#' + ovo + '-skriveni-red';
//         var idNaloga = elem.value;
//         $(aktivniRed).next().collapse('toggle');
//         if (!$(elem).attr("ucitano")) {

//             ajaxUpit('prikaz naloga.php', idNaloga, skriveniRed);
//             $(elem).attr("ucitano", "true");
//         }
//     };


function ajaxUpit (php, parametar, meta) {

        $.ajax({
            method: "POST",
            url: php,
            data: { nalog: parametar, faktura: parametar }
          }).done(
            function(result) {
                $(meta).append(result);
          });

    };


function tabs (ovo, idNaloga, idfakture, skriveniRed) {

    var tabovi = "<ul class='nav nav-tabs'>";
    var menu1 = "#menu1-" + ovo;
    var menu2 = "#menu2-" + ovo;


    tabovi += "<li class='active'> <a data-toggle='tab' href='#menu1-" + ovo +"'>Nalog</a></li>";
    tabovi += "<li><a data-toggle='tab' href='#menu2-" + ovo +"'>Faktura</a></li>";
    tabovi += "</ul>";
    
    tabovi += "<div class='tab-content'>";
    tabovi += "<div id='menu1-" + ovo +"' class='tab-pane active'>";
    // tabovi += menu1;
    tabovi += "</div>";
    tabovi += "<div id='menu2-" + ovo +"' class='tab-pane'>";
    // tabovi += menu2;
    tabovi += "</div>";
    tabovi += "</div>";
    
    $(skriveniRed).append(tabovi);
    $(skriveniRed).attr("ucitano", "true");
    
    ajaxUpit('prikaz naloga.php', idNaloga, menu1);
    ajaxUpit('prikaz fakture.php', idfakture, menu2);

    



};