function padNumber(number) {
    return number < 10 ? '0' + number : number;
}

function updateClock() {
    const now = new Date();

    const year = now.getFullYear();
    const month = padNumber(now.getMonth() + 1); // Months are zero-indexed
    const day = padNumber(now.getDate());
    const weekday = now.toLocaleString('en-us', { weekday: 'long' });

    let hours = now.getHours();
    const minutes = padNumber(now.getMinutes());
    const seconds = padNumber(now.getSeconds());
    const ampm = hours >= 12 ? 'PM' : 'AM';

    hours = hours % 12;
    hours = hours ? hours : 12;
    const timeString = `${padNumber(hours)}:${minutes}:${seconds} ${ampm}`;

    const dateString = `${year}-${month}-${day} ${weekday}`;

    document.getElementById('date').textContent = dateString;
    document.getElementById('time').textContent = timeString;
}

updateClock();

setInterval(updateClock, 1000);
