# Module 1: Introduction to Sampling
---

Imagine you are listening to your favorite song

<img width="640" height="480" alt="image" src="https://github.com/user-attachments/assets/ec1199ce-15b9-4bbb-aff8-626ab600bd08" />

When a singer performs, their voice is a **continuous sound wave**. It changes smoothly over time.

<img width="772" height="512" alt="Screenshot 2026-08-05 130538" src="https://github.com/user-attachments/assets/f73efafb-3570-465c-843a-04c875da5abb" />


This type of signal is called an **analog signal**.

Now think about how Spotify, YouTube, or your phone stores that same song.

Computers cannot directly store continuous analog signals.

Instead, they convert them into numbers.

But how can a continuously changing signal become numbers?

The answer is

> **Sampling**

Sampling is the **first step** in converting real-world analog signals into digital data.

Without sampling,

there would be no

- Digital music
- Digital cameras
- Mobile phones
- Internet calls
- Medical imaging
- Software Defined Radio (SDR)
- Digital television
- GPS receivers

Sampling is one of the most fundamental concepts in digital signal processing and communication.

---

# Why Do We Need Sampling?

Modern electronic devices are digital.

Examples include

- Smartphones
- Computers
- Tablets
- Raspberry Pi
- Arduino
- DSP Processors
- FPGA Boards

Digital devices understand only

```
0 and 1
```

However,

the real world is analog.

Examples include

- Human voice
- Music
- Radio waves
- Temperature
- Pressure
- Light intensity

These signals vary continuously.

Digital systems cannot directly process continuous signals.

Therefore,

we first convert them into a digital form.

The very first step of this conversion is

**Sampling.**

---

# The Digital Revolution

Before digital electronics became common,

communication systems were almost entirely analog.

Examples include

- Analog telephones
- AM Radio
- FM Radio
- Analog television

Today,

almost every communication system is digital.

Examples include

- 4G
- 5G
- Wi-Fi
- Bluetooth
- GPS
- Satellite Communication
- Voice over IP (VoIP)

Although these systems transmit digital information,

the original information often starts as an analog signal.

For example,

```
Human Voice

↓

Microphone

↓

Electrical Analog Signal

↓

Sampling

↓

Digital Signal

↓

Transmission
```

Without sampling,

digital communication would not exist.

---

# What is Sampling?

## Definition

**Sampling is the process of measuring the value of a continuous-time signal at specific intervals of time to produce a discrete-time signal.**

Simply put,

instead of recording **every instant** of a signal,

we record only selected points.

Imagine taking snapshots of a moving object.

Instead of recording every possible moment,

you capture

```
●      ●      ●      ●      ●
```

Each dot represents one **sample**.

The collection of these samples can later be used to reconstruct the original signal.

---

# Visualizing Sampling

Suppose the original analog signal is

```
          /\        /\
         /  \      /  \
        /    \    /    \
_______/      \__/      \_____
```

After sampling,

```
          ●         ●
        ●   ●     ●   ●
______●______●___●______●_____
```

The smooth curve is the original signal.

The dots are the sampled values.

---

# A Real-World Analogy

Imagine watching a football match.

Instead of watching the entire game,

someone takes a photograph every second.

```
Time

0 s   1 s   2 s   3 s   4 s

📸    📸    📸    📸    📸
```

Each photograph captures the scene at a specific instant.

Together,

the photographs provide a good representation of the game.

Sampling works the same way.

Instead of recording every instant,

the system records the signal at regular intervals.

---

# Everyday Examples of Sampling

## Digital Audio

When recording music,

the microphone captures analog sound.

The Analog-to-Digital Converter (ADC) samples it thousands of times every second.

For example,

Audio CDs use

```
44,100 samples every second
```

This is called a

```
44.1 kHz Sampling Rate
```

---

## Digital Camera

A real-world scene is continuous.

A camera samples the light using millions of pixels.

Each pixel measures the brightness and color at one location.

Together,

the pixels reconstruct the entire image.

---

## Video

A movie is actually a sequence of sampled images.

For example,

```
30 frames per second
```

means

```
30 image samples every second.
```

---

## Temperature Sensor

Suppose a weather station measures temperature every second.

```
12:00:00

25°C

12:00:01

25.1°C

12:00:02

25.2°C

12:00:03

25.2°C
```

Each measurement is a sample.

---

## GPS Receiver

A GPS receiver continuously receives radio signals from satellites.

These incoming analog signals are sampled before digital processing begins.

Without sampling,

the receiver cannot determine your position.

---

## Software Defined Radio (SDR)

In SDR,

the antenna receives analog radio waves.

The Analog-to-Digital Converter samples the signal,

allowing software to perform filtering, demodulation, decoding, and signal analysis.

---

# The Complete Signal Journey

Almost every modern communication system follows this sequence:

```
Real World Signal

↓

Sensor / Antenna / Microphone

↓

Analog Signal

↓

Sampling

↓

Quantization

↓

Encoding

↓

Digital Data

↓

Digital Processing

↓

Transmission or Storage
```

Sampling is the bridge between the analog world and the digital world.

---

# Why Sampling is Important in Digital Communication

Sampling allows digital systems to process real-world signals.

Once a signal has been sampled,

we can

- Store it
- Compress it
- Encrypt it
- Filter it
- Transmit it
- Analyze it
- Reconstruct it later

Without sampling,

modern communication technologies such as

- Wi-Fi
- Bluetooth
- LTE
- 5G
- SDR
- Digital Television

would not be possible.

---

# Summary

Sampling is the process of converting a continuous-time signal into a discrete-time signal by measuring its value at regular intervals.

It forms the foundation of digital communication and digital signal processing.

Every digital communication system begins by sampling the incoming analog signal before any digital processing takes place.

Understanding sampling is essential before learning topics such as

- Nyquist Sampling Theorem
- Aliasing
- Quantization
- PCM
- ADCs
- Digital Modulation

These topics will be covered in the following modules.

---

# Key Takeaways

- The real world is mostly analog.
- Digital devices process information digitally.
- Sampling converts continuous-time signals into discrete-time signals.
- Each measurement taken is called a **sample**.
- Sampling is the first step in analog-to-digital conversion.
- Modern communication systems rely on sampling before digital processing begins.

---

# What's Next?

In the next module, we will explore the differences between **Analog Signals** and **Digital Signals**, understand their characteristics, and learn why digital communication has largely replaced analog communication.
