
# 🌿 Leap Runner 3D

**Leap Runner 3D** is a fast-paced endless runner game built with **Godot 4** and powered by the beautiful low-poly assets from the [3D Leap Land Asset Pack](https://essssam.itch.io/3d-leap-land). Dodge obstacles, collect gems, and leap across floating platforms as far as you can!
 
 This Game was done on principals of FreeCodeCamp course "Dock&Roll".
 We used the tutorial and asssets as a base for an application.
 
---

## 🎮 Gameplay

- 🌥️ Run on modular grass and dirt platforms in the sky
- 🚧 Avoid dynamic obstacles like spikes, bees, and bombs
- 💎 Collect coins, gems, and powerups to boost your score and jump height
- 🔁 Platforms are generated infinitely as you progress
- 🎵 Ambient music and sounds enhance the immersive vibe

---

## 🛠 Built With

- **Godot Engine 4.3+**
- **GDScript** for all gameplay logic
- **3D Leap Land Asset Pack** by Essssam (FBX/OBJ models)
- Custom shaders and procedural spawning
- Modular `Platform.tscn`, `Obstacle.tscn`, and `Player.tscn` scenes

---

## 🚀 Features

| Feature           | Description                                                  |
|------------------|--------------------------------------------------------------|
| Endless Terrain   | Procedurally generated grass and dirt platforms              |
| Smooth Movement   | Jumping, gravity, and sliding using `CharacterBody3D`        |
| Collision System  | Player-environment and obstacle interaction                  |
| Animated UI       | Main menu with animated sky, clouds, and interactive buttons |
| Modular Design    | Each platform and obstacle is a reusable `.tscn` prefab      |

---

## 📂 Folder Structure

```

res\://
├── Assets/              # Imported FBX/OBJ models, textures, audio
├── Scenes/
│   ├── Main.tscn        # Game entry point
│   ├── Platform.tscn    # Single platform piece
│   ├── Player.tscn      # Controllable player scene
│   ├── Obstacle.tscn    # Spikes, enemies, etc.
│   └── AboutScreen.tscn # Optional About/Info screen
├── Scripts/
│   ├── Player.gd
│   ├── PlatformSpawner.gd
│   └── GameManager.gd
├── UI/                 # Buttons, menu screens, HUD
└── README.md

```

---

## 🎨 Credits

- **Assets**:  
  [3D Leap Land](https://essssam.itch.io/3d-leap-land) by Essssam  
  Licensed for commercial & non-commercial use with credit.

- **Engine**:  
  [Godot Engine](https://godotengine.org) – open-source, MIT licensed

- **Author**:  
  Mariia GLushenkova – [your-portfolio-link.com] or GitHub
  Alisa Ermel 

---

## 🕹️ Controls

| Action       | Key     |
|--------------|---------|
| Move Left    | ← or A  |
| Move Right   | → or D  |
| Jump         | ↑ or W or Space |
| Pause/Menu   | Esc     |

---

## 📥 How to Play

1. Clone or download this repo
2. Open in Godot 4.3 or higher
3. Press ▶ to run
4. Enjoy leaping endlessly 🌤️

---

## 💡 Next Goals

- Add level transitions and difficulty scaling
- Introduce enemy AI (like chasing bees)
- Save high scores between sessions
- Add music and sound toggle in options menu

---

## 📷 Screenshots

---

Feel free to fork and build on it! Contributions are welcome 🚀

