<?php
// page = main
if (!isset($_GET['page'])) {
    $_GET['page'] = "main";
}

// copy const
if (date('Y') == YEARSSTART) {
    $copyrite = YEARSSTART;
} else {
    $copyrite = YEARSSTART . " - " . date("Y");
}

//modules in my site
$modules = array("main", "wars", "program", "registration", "errors", "adminPanel");

//module = main or go to 404
if (!isset($_GET['module'])) {
    $_GET['module'] = 'main';
} elseif (!in_array($_GET['module'], $modules)) {
    header("location: /?module=errors&page=404");
    exit();
}

//get ADMIN KEY
if (isset($_POST['email'], $_POST['login'], $_POST['password'])) {
    if ($_POST['email'] == ADMINEMAIL && $_POST['login'] == ADMINLOGIN && $_POST['password'] == ADMINPASSWORD) {
        if ($_SERVER['REMOTE_ADDR'] == ADMINID) {
            setcookie("AdminKey", ADMINKEY, time() + 3600 * 24 * 3, '/');
        }
    }
}

//get admin panel
if (isset($_COOKIE['AdminKey']) && $_COOKIE['AdminKey'] == ADMINKEY) {
    $adminPanel = 1;
} else {
    $adminPanel = 0;
}

//unset ADMINKEY
if (isset($_POST['adminExitButton'])) {
    unset($_COOKIE['AdminKey']);
    setcookie("AdminKey", "", time() - 3600, "/");
    header("location: /?module=main&page=main");
}

//set variables for wars
if (!isset($_SESSION['comp'])) {
    $_SESSION['comp'] = 20;
}
if (!isset($_SESSION['user'])) {
    $_SESSION['user'] = 15;
}


if (!isset($_GET['link'])) {
    $_GET['link'] = ".";
}
