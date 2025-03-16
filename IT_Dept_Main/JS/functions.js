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

// Function for loading content
function loadBatch(faculty) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "load.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    document.querySelector(".toggle-btns").innerHTML = "";
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.querySelector(".batch-select").innerHTML = xhr.responseText;
        }
    };

    xhr.send("Faculty=" + faculty);
}

function loadButton(batch, faculty) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "load.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.querySelector(".toggle-btns").innerHTML = xhr.responseText;
        }
    };

    xhr.send("Faculty=" + faculty + "&Batch=" + batch);
}

function updateButtonState(toggle, button_id) {
    if (toggle.checked === true) {
        var state = "ON";
    } else {
        var state = "OFF";
    }

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "load.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            console.log("Response: " + xhr.responseText);
        }
    };

    xhr.send("button_id=" + button_id + "&state=" + state);
}