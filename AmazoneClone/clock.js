function updateClock() {
    const now = new Date(); // Get the current date and time
    let hours = now.getHours();
    let minutes = now.getMinutes();
    let seconds = now.getSeconds();

    // Add leading zero if the number is less than 10
    hours = hours < 10 ? "0" + hours : hours;
    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    // Combine the time into HH:MM:SS format
    const time = `${hours}:${minutes}:${seconds}`;

    // Display the clock
    document.getElementById("clock").textContent = time;
}

// Call updateClock every second
setInterval(updateClock, 1000);

// Run the function on page load
updateClock();
