function redirect(URL) {
    window.location.href = URL;
}

function alert_user(ID) {
    let Warning = document.getElementById(ID);
    Warning.style.display = 'block';
    setTimeout(() => {Warning.style.display = 'none';}, 5000);
}