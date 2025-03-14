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

// For button color change when clicked
document.addEventListener("DOMContentLoaded", function () {
    const buttons = document.querySelectorAll(".fac-btn");

    buttons.forEach(button => {
        button.addEventListener("click", function () {
            buttons.forEach(btn => btn.classList.remove("active"));
            this.classList.add("active");
        });
    });
});