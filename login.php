<?php
require 'config.php';

if(isset($_SESSION['login_id'])){
    header('Location: http://localhost:3000/');
    exit;
}
require 'vendor/autoload.php';
// Creating new google client instance
$client = new Google_Client();
// Enter your Client ID
$client->setClientId('584734149097-7a1eubruh4qc5g154h56b0mb9abv73tt.apps.googleusercontent.com');
// Enter your Client Secrect
$client->setClientSecret('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');
// Enter the Redirect URL
$client->setRedirectUri('http://localhost/quize/login.php');
// Adding those scopes which we want to get (email & profile Information)
$client->addScope("email");
$client->addScope("profile");
if(isset($_GET['code'])):
    $token = $client->fetchAccessTokenWithAuthCode($_GET['code']);
    if(!isset($token["error"])){
        $client->setAccessToken($token['access_token']);
        // getting profile information
        $google_oauth = new Google_Service_Oauth2($client);
       //echo "<pre>"; print_r($google_oauth);die;
        $google_account_info = $google_oauth->userinfo->get();
        $_SESSION['login_id'] =mysqli_real_escape_string($db_connection, $google_account_info->id);
        header('Location: http://localhost:3000/');
            exit;
    }
    else{
        header('Location: login.php');
        exit;
    }
    
else: 
    // Google Login Url = $client->createAuthUrl(); 

   
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <div class="_container">
        <h2 class="heading">Login</h2>
    </div>
    <div class="_container btn">
        
        <a type="button" class="login-with-google-btn" href="<?php echo $client->createAuthUrl(); ?>">
            Sign in with Google
        </a>
    </div>
</body>
</html>
<?php endif; ?>
