# UNO - Raylib Graphical Edition
Your UNO console game, converted to a full graphical app using Raylib.

## What's new vs the console version
- Full graphical window with colored cards
- Click cards to play them, click the deck to draw
- CPU players think with a visible delay
- Color picker popup for Wild / +4 cards
- Win screen and main menu
- Supports 2–4 players (human or CPU)

---

## How to build on Windows (step by step)

### Step 1 — Install w64devkit (MinGW GCC)
1. Go to: https://github.com/skeeto/w64devkit/releases
2. Download `w64devkit-x.xx.x.zip`
3. Extract it somewhere, e.g. `C:\w64devkit`
4. Add `C:\w64devkit\bin` to your Windows PATH

### Step 2 — Install Raylib
1. Go to: https://github.com/raysan5/raylib/releases
2. Download `raylib-5.x.x_win64_mingw-w64.zip`
3. Extract it, then:
   - Copy `lib\libraylib.a`  → into `C:\w64devkit\x86_64-w64-mingw32\lib\`
   - Copy `include\raylib.h` → into `C:\w64devkit\lib\gcc\x86_64-w64-mingw32\xx.x.x\include\`
   
   (or just put both files in the same folder as uno_raylib.c)

### Step 3 — Build
Double-click `build.bat`  
OR open a terminal in this folder and run:

```
gcc uno_raylib.c -o uno.exe -lraylib -lm -lopengl32 -lgdi32 -lwinmm
```

### Step 4 — Play!
Double-click `uno.exe`

---

## Controls
| Action | How |
|---|---|
| Play a card | Click it (highlighted = playable) |
| Draw a card | Click the deck pile |
| Choose color | Click one of the 4 color buttons |
| Go to menu | Click "Menu" button top-left |

---

## Quickest alternative: use raylib.com web IDE
If you don't want to install anything:
1. Go to https://www.raylib.com/
2. Click "Try raylib online"
3. Paste the code from `uno_raylib.c`
4. Hit Run — plays instantly in browser!
