# Common Terms in Digital Modulation

Bit Rate, Symbol Rate and Bandwidth

These three terms are often confused because they all describe **how fast information is transmitted**. However, they measure different things.

---

# 1. Bit Rate

## Definition

**Bit Rate** is the number of **binary bits transmitted every second**. It tells us **how quickly information is being sent**.
The unit of bit rate is _bits/second (bps)_

Suppose let's say we transmit

```
10110010
```

If all **8 bits** are transmitted in **1 second**, then **Bit Rate = 8 bits/second or 8 bps** 

Suppose a communication system sends

```
1,000,000 bits every second
```

Then **Bit Rate = 1 Mbps** 
> (Mbps = Megabits per second)

### Formula

```
Bit Rate = Number of Bits / Time
```

# 2. Symbol Rate

## Definition

> A symbol is one distinct waveform transmitted during one symbol period.

> <img width="1247" height="473" alt="image" src="https://github.com/user-attachments/assets/7a4beda2-d132-4f3e-aae0-b783d0c17132" />

Symbol rate, also known as Baud rate, is the number of distinct signal changes or waveform transitions that occur per second across a communication channel

A **symbol** is **one transmitted signal element**. Instead of thinking about binary bits, think about **each signal that the transmitter sends**.
The number of symbols transmitted every second is called the symbol rate

<img width="327" height="175" alt="image" src="https://github.com/user-attachments/assets/8a7a1728-39f6-4588-97e4-3c0f8ede4466" />

It measures how fast a transmitter can change the state of a physical signal, regardless of how much actual data (bits) each of those states carries.
Its unit is Baud or Symbols/second

The relationship between the Symbol Rate and the actual data speed is governed by the following formula:

<img width="367" height="27" alt="image" src="https://github.com/user-attachments/assets/77446459-9c8f-4dbe-ba17-4fc3257bcc9d" />

To find the Symbol Rate when you know the total data speed, rearrange the equation:

<img width="217" height="63" alt="image" src="https://github.com/user-attachments/assets/a73fe118-661b-46e8-a802-413d2df74bab" />

Where:
 * **Bit Rate**: Total data throughput in bits per second (bps)
 * **M**: The number of unique physical states or symbols in the modulation scheme
 * **log<sub>2</sub>(M)**: The number of data bits packed into each individual symbol.

<img width="577" height="241" alt="image" src="https://github.com/user-attachments/assets/2466a462-f7a0-4020-bb6d-563b3a6f7476" />

### Real-World Examples
The difference between Symbol Rate and Bit Rate changes drastically depending on how advanced the technology is
  * **Simple System (NRZ / Binary)**: If a system transmits 1,000 bits per second using only two voltage levels (M=2), then **log<sub>2</sub>(2)** = 1 bit per symbol. The Symbol Rate is exactly 1,000 Baud.
  * **Modern Wi-Fi (256-QAM)**: If a system uses 256 distinct signal combinations (M=256), each symbol carries **log<sub>2</sub>(256)** = 8 bits. If the bit rate is 800 Mbps, the Symbol Rate is only 100 MegaBaud (MBd).

## Why Symbol Rate Matters
1. **Hardware and Bandwidth Limits**
    - Physical mediums like copper cables, fiber optics, and airwaves have a strict maximum limit on how fast they can change physical states. This is dictated by the physical bandwidth (B) of the channel. According to the Nyquist formula, the maximum symbol rate over a noiseless channel is 2B Baud
2. **Managing Signal Distortion**
    - If you push the symbol rate too high, the physical states begin to overlap because the previous waveform doesn't have enough time to decay before the next one arrives. This causes a destructive phenomenon called Inter-Symbol Interference (ISI), which corrupts the data.

# 3. Bandwidth

## Definition

**Bandwidth** is the range of frequencies occupied by a signal. It tells us **how much frequency spectrum is needed to transmit the signal**.
Bandwidth is measured in Hertz (Hz)

## Why Does Every Signal Occupy Bandwidth?

An ideal sine wave occupies only one frequency. However, digital communication does not transmit a continuous sine wave.
Instead, the carrier is constantly turning ON and OFF according to the digital data. Every time the signal changes, new frequency components are created.
As a result, the transmitted signal spreads around the carrier frequency.

This spread is called the **bandwidth**.


---


