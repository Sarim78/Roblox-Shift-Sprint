# ShiftToSprint

A lightweight Roblox LocalScript that enables shift-to-sprint functionality.

## Features
- Hold Left Shift to sprint
- Configurable sprint and walk speed
- Ignores input when typing in a GUI

## Installation

1. Open **Roblox Studio** and go to the **Explorer** panel
2. Navigate to **StarterPlayer → StarterPlayerScripts**
3. Right-click **StarterPlayerScripts** and insert a **LocalScript**
4. Name it `ShiftToSprint`
5. Paste the contents of `ShiftSprint.lua` into the script

> ⚠️ Do **not** place this in `StarterCharacterScripts` and it should live in
> `StarterPlayerScripts` to avoid re-running on respawn issues.

Your Explorer should look like this:

```
StarterPlayer
└── StarterPlayerScripts
    └── ShiftToSprint   ← place it here
```

## Configuration

Open the script and adjust these values at the top:

| Variable | Default | Description |
|----------|---------|-------------|
| `sprintSpeed` | `32` | Speed while holding Shift |
| `walkSpeed` | `16` | Normal walking speed |

## Usage

Simply hold **Left Shift** while your character is moving to sprint.
Release to return to normal walk speed.

## License
MIT
