$(function () {
    ResetTweet();
    var tweetText = $("#tweetbox");

    //show how many characters left in tweet
    $("#tweetbox").keyup(function () {
        //set length of tweet to display
        $("#tweetlength").html(140 - $("#tweetbox").val().length);
        //if space entered and long enough to contain a url try and shorten it
        if (event.keyCode == 32 && tweetText.val().length > 5) {          
                tweetText.val(shortenUrl(tweetText.val()));
        };
    });

        //send tweet
        $("#sendtweet").click(function () {
        //don't try and send a tweet longer than 140 characters    
        if ($("#tweetbox").val().length < 140) {
            $.ajax({
                url: '/Pages/SendTweet/',
                type: "POST",
                data: $("#theform").serialize(),
                datatype: "json",
                success: function (response, stat) {
                    if (response == true) {
                        $("#messages").html("Message Sent!").fadeOut(5000);
                        ResetTweet();
                    } else {
                        $("#messages").html("<span style='color:red;'>An error occurred</span>").fadeOut(5000);
                    }
                }
            });
        } else {
            alert("Cannot send tweet with more than 140 characters!");
        }
    });
});

var ResetTweet = function() {
    $("#tweetbox").val("");
    $("#tweetlength").html(140);
};

var shortenUrl = function (text) {
    //regular expression that SHOULD match all url's except bit.ly ones to prevent double shortening a url that was already shortened
    var exp = /(ftp|http|https):\/\/(?!bit\.ly)(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/ig;

    //replace the text by making a call to bit.ly's shortening api and return the new text including shortened urls.
    text = text.replace(exp, function ($1) {

//        var bitlyAPI = "";
//        $.getJSON("/api/bitly", null, function(result) {
//            bitlyAPI = result;
//        });
        
        var newUrl = "";
        $.ajax({
            url: "http://api.bitly.com/v3/shorten?login=soberayandsons&apiKey=R_3db27908d0fb38ddeb5ff7e7f26d4ee0&longUrl=" + escape($1) + "&format=json",
            dataType: 'json',
            async: false,
            success: function (result) {
                newUrl = result.data.url;
            }
        });
        return newUrl;
    });
    return text;
};