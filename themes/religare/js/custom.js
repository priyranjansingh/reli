/*Theme    : assan
 * Author  : Design_mylife
 * Version : V1.8
 * 
 */

 $( window ).resize(function() {
    $(".navbar-collapse").css({ maxHeight: $(window).height() - $(".navbar-header").height() + "px" });
});

/*========tooltip and popovers====*/
$(document).ready(function () {
$("[data-toggle=popover]").popover();

$("[data-toggle=tooltip]").tooltip();
});




//transparent header

$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.transparent-header').css("background", "#252525");
        } else {
            $('.transparent-header').css("background", "transparent");
        }
    });
});

 //Search         
    (function () {

        $('.top-search').on('click', function() {
            $('.search').fadeIn(500, function() {
              $(this).toggleClass('search-toggle');
            });     
        });

        $('.search-close').on('click', function() {
            $('.search').fadeOut(500, function() {
                $(this).removeClass('search-toggle');
            }); 
        });

    }());



/***********************************************************
     * ACCORDION
     ***********************************************************/
    $('.panel-ico a[data-toggle="collapse"]').on('click', function () {
        if ($(this).closest('.panel-heading').hasClass('active')) {
            $(this).closest('.panel-heading').removeClass('active');
        } else {
            $('.panel-heading a[data-toggle="collapse"]').closest('.panel-heading').removeClass('active');
            $(this).closest('.panel-heading').addClass('active');
        }
    });
    
$(document).ready(function () {
    $range = $("#range");
    $range.ionRangeSlider({
         type: "single",
         prefix: "INR",
         values: ["30000"],
         grid: false
    });
    $range.on("change", function () {
        getQuote();
    });
    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green',
    });
});
function validate(){
    var error = true;
    $("#quotation_form input[type=text]").each(function(){
        if($.trim($(this).val()) === ""){
            var error = $(this).attr("data-error");
            $(this).parent().next("div.error").html(error);
            error = false;
        }
    });
    return error;
}
$(document).ready(function(){
    $("#get_quote").click(function(){
        if(validate()){
            $("#quotation_form").attr("action","http://localhost/reli/policy/send");
            $("#quotation_form").submit();
        }
    });
    $("#buy_quote").click(function(){
        if(validate()){
            $("#quotation_form").attr("action","http://localhost/reli/policy/purchase");
            $("#quotation_form").submit();
        }
    });
    
    $("#policy_purchase").click(function(){
        $("#proposer_form").submit();
    });
});

function getQuote(){
        var parent = $("#plan_parent").val();
        var age = $("#age").val();
        var region = $("#region").val();
        var tenure = $("#tenure").val();
        var type = $("#plan_type").val();
        var range = $("#range").val();
        $.ajax({
          url: "http://localhost/reli/policy/detail",
          data: {"parent":parent,"age":age,"region":region,"tenure":tenure,"type":type,"range":range},
          method: "POST"
        }).done(function(data) {
          var result = $.parseJSON(data);
          $("span.policy_premium_amount").html(result[0].premium);
          $("input.policy_premium_amount").val(result[0].premium);
          if(result.length > 1){
            var slider = $("#range").data("ionRangeSlider");
            slider.update({
                values: [result[0].policy_amount,result[1].policy_amount],
                min: result[1].policy_amount,
                max: result[1].policy_amount
            });
          }
        });
    }