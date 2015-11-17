$(function () {
    $.ajax({
        url: '/Categories/GetCategories',
        type: 'GET',
        dataType: "json",
        complete: function (jsondata) {
            $.parseJSON(jsondata.responseText).forEach(function (item) {

                $("#CategoryList").append("<li>" + "<a href='/Categories/Summary/" + encodeURIComponent(item) + "'>" + item + "</a>");
            });
        }
    });
    $(document).ready(function(){
        var s=1E3;$(".selbel").each(function(){$(this).after('<div class="selnew" style="z-index:'+s--+'"><input readonly="readonly" class="selvis" type="text" /><input name="'+$(this).attr("name")+'" type="hidden" /><div style="z-index:'+s--+'"></div></div>')}); $(".selbel option").each(function(){var a="";$(this).is(":selected")&&(a="actsel",$(this).parent("select").next().find(".selvis").val($(this).text()).next().val($(this).val()));$(this).parent("select").next().find("div").append("<span val='"+$(this).val()+"' class='"+a+"'>"+$(this).text()+"</span>")}); $(".selnew span").click(function(){$(this).parent("div").fadeOut(250).prev().val($(this).attr("val")).prev().val($(this).text());$(this).parent("div").find(".actsel").removeClass("actsel");$(this).addClass("actsel");return!1});$(".selnew div").mouseleave(function(){$(this).fadeOut(250)});$(".selnew input").click(function(){$(this).next().next().fadeToggle(250);return!1});$(".selnew input").focus(function(){$(this).blur()});$(".selnew").prev().remove();
        $("#contact_form form").submit(function(someV){
            someV.preventDefault();
            var error_msg = "";
            $(".req").each(function(){
                if ( $(this).val() =="" ) {
                    $(this).addClass("not_valid");
                    $(this).focus(function(){ $(this).removeClass("not_valid"); });
                    error_msg = "Please fill all required fields. ";
                }
            });
            if ( $(".selvis").val() == "How Did You Find Us?" ) {
                $(".selvis").addClass("not_valid");
                $(".selvis").focus(function(){ $(this).removeClass("not_valid"); });
                error_msg = "Please fill all required fields. ";
            }
            if ( $("#hyman").prop('checked') == false ) {
                error_msg += "Please confirm that you are human. ";
            }
            if ( error_msg.length == "" ) {
                $.ajax({
                    url: '/Content/js/form.php',
                    type: 'POST',
                    dataType: "json",
                    data: $('#contact_form form').serialize(),
                    success: function(msg){
                        $("#contact_form").append(msg.answer);
                        $("#form_mess a").click(function(someV){
                            someV.preventDefault();
                            $("#form_mess").animate({left:"-2000px"}, 1000, function(){ $(this).remove(); });
                        });
                        $("#contact_form input[type='text'], #contact_form input[type='email'], #contact_form textarea").val("");
                        $("#contact_form input.selvis").val("How Did You Find Us?");
                        $("#contact_form #hyman").prop('checked', false);
                    }
                });
            } else {
                $("#contact_form").append("<div class='text-align:center;' id='form_mess'>"+error_msg+"<a href='#'>Close</a></div>");
                $("#form_mess a").click(function(someV){
                    someV.preventDefault();
                    $("#form_mess").animate({left:"-2000px"}, 1000, function(){ $(this).remove(); });
                });
            }
        });
    });
});