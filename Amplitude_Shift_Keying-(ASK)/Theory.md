# Amplitude Shift Keying (ASK)

Imagine you're talking to someone using a flashlight. You keep the light ON to represent a binary 1 and turn it OFF to represent a binary 0. The information isn't carried by changing the color or timing of the light—only its brightness changes.

Amplitude Shift Keying (ASK) works in a similar way. A high-frequency carrier wave is transmitted with one amplitude for one binary value and another amplitude (often zero) for the other.

**ASK modulation (Amplitude Shift Keying) is a digital modulation technique that changes the amplitude (strength) of a carrier wave to send digital data (1s and 0s). It keeps the frequency and phase the same, acting like a basic electronic switch.**

ASK acts much like a digital switch controlling an analog wave:
 * **Binary '1' (Mark)**: _The carrier wave is transmitted at a maximum, constant amplitude_
 * **Binary '0' (Space)**: _The carrier wave is either transmitted at a very low amplitude or completely suppressed (zero amplitude)_

> When a binary '0' results in a completely absent signal, the technique is specifically called **On-Off Keying (OOK)**, which is the simplest and most common form of ASK


# How ASK Works

_Generate binary data_

Example

```
10101100
```
<img width="607" height="206" alt="image" src="https://github.com/user-attachments/assets/6640ac32-2839-4db3-aad6-074361ec6bbc" />

---

_Then, generate a carrier wave_

Example

```
cos(2πfct)
```
<img width="621" height="417" alt="image" src="https://github.com/user-attachments/assets/3c9ae801-e7d5-46e2-af11-c6854b83e0cc" />

---

_Multiply the carrier by the binary information_

For Binary ASK,

```
s(t)=A cos(2πfct)     when bit = 1

s(t)=0                when bit = 0
```

More generally,

```
s(t)=Ai cos(2πfct)
```

where

| Symbol | Meaning |
|---------|----------|
| Ai | Amplitude representing the transmitted symbol |
| fc | Carrier frequency |
| t | Time |

<img width="700" height="422" alt="image" src="https://github.com/user-attachments/assets/ef722666-0288-4053-a1d1-9365f0ccc573" />

---

# Multi-Level ASK

_Instead of only two amplitudes, multiple amplitudes can be used_

<img width="700" height="421" alt="image" src="https://github.com/user-attachments/assets/6ae0e23d-0a6f-42b8-b2cb-a59e18fcf82f" />

| Bits | Amplitude |
|------|-----------|
|00|1|
|01|2|
|10|3|
|11|4|

This increases the number of bits transmitted per symbol.

<img width="700" height="422" alt="image" src="https://github.com/user-attachments/assets/2161587a-8e83-41df-9275-c411652ebc0c" />

---


# Symbol Rate

Each transmitted amplitude corresponds to one symbol.

For Binary ASK,

```
1 Symbol = 1 Bit
```

For 4-ASK,

```
1 Symbol = 2 Bits
```

---

# Bandwidth of ASK

The approximate bandwidth is

```
Bandwidth ≈ 2 × Bit Rate
```

depending on

- pulse shaping
- filtering
- implementation

Practical systems often use pulse shaping filters to reduce bandwidth.

---

# Power Considerations

Since the carrier is absent during some bits,

the average transmitted power depends on

- number of ones
- number of zeros

For random binary data,

average transmitted power is lower than continuous carrier transmission.

---

# Noise Performance

ASK is highly affected by

- thermal noise
- fading
- interference

because information is stored in the amplitude.

Any noise that changes amplitude may cause errors.

Example

Transmitted

```
High Amplitude
```

Noise

```
↓↓↓↓↓↓
```

Received

```
Medium Amplitude
```

Receiver may incorrectly detect the bit.

---

# Advantages

- Very easy to understand.
- Simple transmitter.
- Simple receiver.
- Low implementation cost.
- Low hardware complexity.
- Suitable for optical communication.
- Suitable for RFID systems.
- Can be implemented using simple switches.
- Good for short-range communication.

---

# Disadvantages

- Poor noise immunity.
- Sensitive to fading.
- Lower power efficiency.
- Lower spectral efficiency than PSK and QAM.
- High bit error rate in noisy environments.
- Rarely used for modern wireless systems.

---

# Applications

ASK is commonly used in

- RFID Tags
- Garage Door Openers
- Optical Fiber Communication
- Infrared Remote Controls
- Wireless Sensor Nodes
- Low-Cost RF Modules
- Remote Keyless Entry Systems
- Industrial Telemetry

---

# Comparison with Other Modulation Schemes

| Technique | Amplitude | Frequency | Phase |
|------------|-----------|-----------|-------|
| ASK | ✅ Changes | ❌ Constant | ❌ Constant |
| FSK | ❌ Constant | ✅ Changes | ❌ Constant |
| PSK | ❌ Constant | ❌ Constant | ✅ Changes |
| QAM | ✅ Changes | ❌ Constant | ✅ Changes |

---

# Key Takeaways

- ASK stands for **Amplitude Shift Keying**.
- It is one of the simplest digital modulation techniques.
- Only the **amplitude** of the carrier changes.
- Frequency and phase remain constant.
- Binary data controls the carrier amplitude.
- The simplest implementation is **On-Off Keying (OOK)**.
- ASK is easy to implement but highly sensitive to noise.
- It is widely used in low-cost communication systems and RFID technology.

---

