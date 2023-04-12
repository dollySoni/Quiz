<?php
// Initialize the session.
// If you are using session_name("something"), don't forget it now!


$id = $_SESSION['login_id'];
// If it's desired to kill the session, also delete the session cookie.
// Note: This will destroy the session, and not just the session data!

if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}
// Finally, destroy the session.
$_SESSION = array();
session_destroy();
header("Location: login.php");
exit;
?>