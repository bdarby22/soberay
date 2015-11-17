

<?php

if($HTTP_POST_VARS) {
$body = ""; 

while(list($key, $val) = each($HTTP_POST_VARS)) 
{
  $body .= "$key: $val\n";
}
$headers = "From: ".$_POST['email'];
mail("gversh@infosaic.com",// to
"Contact form",
$body,$headers);


}

// end form processing
?>