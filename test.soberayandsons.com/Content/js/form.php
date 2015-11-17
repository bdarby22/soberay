<?php
    if ( isset($_POST["name"]) ) {
        $username = substr(htmlspecialchars(trim($_POST['name'])), 0, 1000); 
        $usercomp =  substr(htmlspecialchars(trim($_POST['company'])), 0, 1000); 
        $useremail =  substr(htmlspecialchars(trim($_POST['email'])), 0, 1000); 
        $userwebsite =  substr(htmlspecialchars(trim($_POST['url'])), 0, 1000); 
        $userhdyfa =  substr(htmlspecialchars(trim($_POST['hdyfa'])), 0, 1000); 
        $usermess1 =  substr(htmlspecialchars(trim($_POST['message1'])), 0, 1000000); 
        $usermess2 =  substr(htmlspecialchars(trim($_POST['message2'])), 0, 1000000); 
        
        $mess = "From: ".$username."\nCompany: ".$usercomp."\nEmail: ".$useremail."\nWebsite: ".$userwebsite."\nHow Did You Find Us: ".$userhdyfa."\nIf Through Web Search, What Search Term did You Use?: ".$usermess1."\nMessage: ".$usermess2."\n";
        $title = "New message from SoberayandSons";

        $to = 'sales@soberaysons.com'; 
        
        $from=$username."<".$useremail.">"; 
        
        if (mail($to, $title, $mess, 'From:'.$from)) {
            $output_array = array('answer' => "<div class='text-align:center;' id='form_mess'>Your message has been sent successfully. <a href='/'>Close</a>.</div>", 'error' => 'false');
            
        } else {
            $output_array = array('answer' => "<div class='text-align:center;' id='form_mess'>We have a problem with server. Please, try again later. <a href='/'>Close</a>.</div>", 'error' => 'true');
        }
        echo json_encode($output_array);
    } else {
        echo("Are you hacker?");
    }
?>