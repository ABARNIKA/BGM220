#  BGM220 – GC9A01 TFT LCD Display Interface

##  Project Overview
This project demonstrates **SPI communication** between a **Silicon Labs BGM220 Bluetooth SoC** and a **1.28-inch GC9A01 circular TFT LCD display**.

It initializes the display, renders text and numbers using custom fonts, shows a static logo background, and dynamically updates a counter in real time.  
The application is developed in **Simplicity Studio v5** using **Gecko SDK Suite v4.4.6**.

---

## ⚙️ Hardware Components
| Component | Description |
|------------|--------------|
| **BGM220-EK4314A** | Silicon Labs Bluetooth 5.3 SoC board (Cortex-M33) |
| **GC9A01 TFT LCD (240×240)** | 1.28-inch round color LCD using SPI interface |
| **mikroBUS header** | Used for SPI and GPIO connection |
| **Power Supply** | 3.3V regulated from board |

---

## 🔌 Pin Connections (BGM220 ↔ GC9A01)
| Signal | GC9A01 Pin | BGM220 Pin | Notes |
|---------|-------------|-------------|-------|
| **VCC** | Power | 3.3 V | Power supply |
| **GND** | Ground | GND | Common ground |
| **SCL / CLK** | SPI Clock | `PA6` *(SPIDRV USART MIKROE)* | SPI clock line |
| **SDA / MOSI** | SPI Data | `PA7` *(SPIDRV USART MIKROE)* | SPI data line |
| **CS** | Chip Select | `PC3` | Active low control |
| **DC** | Data/Command | `PB4` | Mode select (data vs command) |
| **RST** | Reset | `PC6` | Active low reset pin |
| **BLK / LED** | Backlight | `PB1` | Enables backlight |

---

## 🧠 Features
✅ SPI communication using Silicon Labs **SPIDRV** (DMA-based)  
✅ Custom font rendering with **5×7** and **32×48** pixel characters  
✅ Static **COUNT** text and dynamic numeric counter (0–20 loop)  
✅ **Logo background** drawn from `GC9A01_logo.h`  
✅ **Optimized redraw** – updates only the counter area, not full screen  
✅ **Onboard LED indicator** to show operation status  
✅ **UART debug messages** for monitoring LCD state  

---

## 🧱 Software Stack
| Layer | Component | Description |
|--------|------------|-------------|
| **Application** | `app.c` | Main logic: LCD init, text rendering, counter update |
| **Display Driver** | `GC9A01.c`, `GC9A01.h` | SPI-level control and drawing routines |
| **Fonts** | `Font40x64.h`, `small_font.h` | Large and small bitmap fonts |
| **Logo** | `GC9A01_logo.h` | Background image in RGB565 format |
| **Hardware Drivers** | SPIDRV, DMADRV, GPIO, Sleeptimer | From Gecko SDK |
| **SDK** | Gecko SDK Suite v4.4.6 | Hardware abstraction & platform services |

---

## 🧮 Functional Flow
1. **Initialization**
   - Initializes GPIO, SPI, and DMA drivers.
   - Enables LCD VCOM and powers the display.
   - Runs the full GC9A01 initialization sequence.

2. **Display Setup**
   - Loads background logo.
   - Prints `"COUNT"` text using `small_font.h`.

3. **Main Loop**
   - Refreshes only number area for efficiency.
   - Displays 0–20 counter in large font (`Font40x64`).
   - Waits 1 second using sleeptimer.
   - Resets counter after reaching 20.

---

## 🎨 Display Behavior
**At Startup:**
- LCD shows initialized logo background.  
- Text `"COUNT"` appears on screen.

**During Operation:**
- Numbers increment every second from `00` → `20`.  
- LED on the board toggles to indicate each update.

---

## 🧰 Development Environment
| Tool | Version |
|------|----------|
| **Simplicity Studio** | v5 |
| **Gecko SDK Suite** | v4.4.6 |
| **Compiler** | GNU ARM 12.2.1 |
| **MCU Core** | ARM Cortex-M33 |
| **Language** | C (C99) |

---

## 📂 Project Directory Structure
test_lcd/
├── ABC_lcd_tft/
│ ├── GC9A01.c
│ ├── GC9A01.h
│ ├── GC9A01_logo.h
│ ├── Font40x64.h
│ └── small_font.h
├── app.c
├── app.h
├── main.c
├── autogen/
├── config/
├── test_lcd.slcp
├── test_lcd.pintool
└── readme.md
















---

## 🚀 How to Build & Run
1. Open project in **Simplicity Studio v5**.  
2. Connect the **BGM220 board** via USB.  
3. Build and flash the firmware.  
4. Open a serial terminal (115200 baud) to monitor logs.  
5. Observe counter updates on the LCD every second.  

---

## 🧾 Example UART Logs
LCD Initialized Successfully
COUNT: 00
COUNT: 01
COUNT: 02
...
COUNT: 20

---

## 📸 Output Preview
- **LCD:** Displays background logo with text “COUNT”  
- **Counter:** Increments 0–20 every second  
- **LED:** Blinks in sync with counter updates  

### 🖼️ Demo Image
![BGM220 GC9A01 LCD Output](/home/abarnika/Downloads/MQTT.jpg)
*(Replace this link with your actual image later)*

---


## Future Enhancements
- Add lowercase & uppercase alphabets (A–Z, a–z) in `small_font.h`
- Support color gradients and animations
- Integrate BLE commands to control the LCD remotely

---

## Author
**Abarnika G**  
Embedded Systems Developer  
Focused on IoT, Bluetooth SoCs, and display interfaces  

GitHub: [ABARNIKA](https://github.com/ABARNIKA)

---
