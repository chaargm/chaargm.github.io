# ⏱️ Modular Voice Timer (v1.1)

A standalone, single-file HTML countdown timer with integrated Text-to-Speech (TTS) and audio cues. Built with a modular vanilla JavaScript architecture for easy maintenance and scaling.

## 🚀 Quick Start
1. Open `index.html` in any modern web browser.
2. Click **Start Timer** to begin the 10-minute countdown.
3. **Note:** Browsers require a user click (Start) before they will allow the audio/voice to play.

## 🛠️ Project Architecture
The code is contained in one file but organized into four distinct modules:
- **State Module**: Manages the countdown data and timer intervals.
- **Audio Service**: Handles the Web Audio API (beeps) and SpeechSynthesis (TTS).
- **UI Module**: Manages DOM updates and time formatting (`MM:SS`).
- **Tests Module**: Runs automated logic checks in the browser console on load.

## 📢 Audio Logic Specs
- **Every 60s**: System beep + TTS announcement (e.g., "9 minutes remaining").
- **Final 60s**: TTS announcements every **10 seconds** (e.g., "50 seconds", "40 seconds").
- **At 0s**: "Time is up" announcement + final beep.

## 🧪 Testing & Debugging
- **Automated Tests**: Open the **Browser Console (F12)** to see the results of the internal unit tests.
- **Manual Jump**: To test the final minute logic without waiting:
  - **Option A**: Double-click the **timer numbers** on the screen to jump to 01:05.
  - **Option B**: Run `State.timeLeft = 65; UI.update();` in the console.

## 📝 Handoff Notes for Next Session
- **Status**: Stable. Unit tests passing. Audio/TTS verified.
- **Tech Stack**: HTML5, CSS3, Vanilla JS (No dependencies).
- **Planned Enhancements**: 
  - Add Pause/Resume functionality.
  - Add an input field for custom durations.
  - Implement a visual "progress bar" or circular ring.
