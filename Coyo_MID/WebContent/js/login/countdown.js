var secondsRemaining;
var intervalHandle;

function tick() {
	// grab the h1
	var timeDisplay = document.getElementById("time");

	// turn the seconds into mm:ss
	var min = Math.floor(secondsRemaining / 60);
	var sec = secondsRemaining - (min * 60);

	// add a leading zero (as a string value) if seconds less than 10
	if (sec < 10) {
		sec = "0" + sec;
	}

	// concatenate with colon
	var message = min.toString() + ":" + sec;

	// now change the display
	timeDisplay.innerHTML = message;

	// stop is down to zero
	if (secondsRemaining === 0) {
		alert("Done!");
		clearInterval(intervalHandle);
		// resetPage();
	}

	// subtract from seconds remaining
	secondsRemaining--;

}

function startCountdown() {

	function resetPage() {
		document.getElementById("inputArea").style.display = "block";
	}

	// get countents of the "minutes" text box
	var minutes = 0.5;

	// how many seconds
	secondsRemaining = minutes * 60;

	// every second, call the "tick" function
	// have to make it into a variable so that you can stop the interval
	// later!!!
	intervalHandle = setInterval(tick, 1000);

	// hide the form
	document.getElementById("inputArea").style.display = "none";

}

window.onload = function() {

	var startBtn = document.getElementById("sendBtn");
	startBtn.onclick = function() {
		startCountdown();
	};

	// add to the DOM, to the div called "inputArea"
	document.getElementById("inputArea").appendChild(inputMinutes);
	document.getElementById("inputArea").appendChild(startButton)
}