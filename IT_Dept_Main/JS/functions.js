// Function for redirecting after button clicks
function redirect(URL) {
    window.location.href = URL;
}

// Function for alerting user for login form incorrect validation
function alert_user(ID) {
    let Warning = document.getElementById(ID);
    Warning.style.display = 'block';
    setTimeout(() => {Warning.style.display = 'none';}, 5000);
}