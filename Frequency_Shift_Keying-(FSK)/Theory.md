# Frequency Shift Keying (FSK)

**Frequency Shift Keying (FSK)** is a digital modulation technique in which the **frequency of a carrier wave is changed according to the digital information being transmitted**, while the **amplitude** and **phase** of the carrier remain constant.

In simple terms,

- Binary **1** is represented by one carrier frequency.
- Binary **0** is represented by another carrier frequency.

Unlike ASK, where the transmitter changes the **amplitude** of the carrier, FSK changes only its **frequency**.

<img width="990" height="590" alt="image" src="https://github.com/user-attachments/assets/2eac2efa-72d5-4ae2-b75e-43936d704416" />

Every sinusoidal wave has three important properties:

| Property | Meaning |
|----------|---------|
| **Amplitude** | The height (strength) of the wave |
| **Frequency** | How many cycles occur every second |
| **Phase** | The starting position of the wave |

Before learning FSK, it is important to understand **frequency**.

Frequency tells us **how fast a wave repeats itself**.

<img width="407" height="491" alt="image" src="https://github.com/user-attachments/assets/a4a4d589-3cfb-4ff7-9078-a73aa0e5dfbd" />

> source: https://www.facebook.com/onheaven.viz/posts/frequency-is-defined-as-the-number-of-wave-cycles-completed-in-one-second-it-is-/1115160030803355/ 

It is measured in Hertz (Hz)
> 1 Hz = 1 cycle per second

For example,
 - 10 Hz means the wave completes **10 cycles every second**.
 - 1000 Hz means the wave completes **1000 cycles every second**.
 - 1 MHz means the wave completes **1,000,000 cycles every second**.

A higher frequency means **more oscillations occur in the same amount of time**.

---

# The Fundamental Concepts
 - **Mark and Space**: In binary FSK, the higher frequency (f₁) is traditionally called the Mark frequency (representing binary 1), while the lower frequency (f₀) is called the Space frequency (representing binary 0) 
 - **Carrier Frequency** **f<sub>c</sub**>: The center frequency exactly halfway between the Mark and Space frequencies
 - **Frequency Deviation** **(Δ f)**: The maximum frequency shift away from the center carrier frequency

