# 📡 Digital Modulation for Everyone
The most visual and interactive open-source guide to digital modulation.
Learn digital communication from theory → simulation → SDR implementation using Python, MATLAB, GNU Radio, animations, and real IQ data.

Suppose your computer generates this binary data:

```
10110010
```

This binary signal is called a **baseband signal**.

A baseband signal **cannot efficiently travel long distances** because:

- It contains low frequencies.
- It requires extremely large antennas.
- Multiple users cannot transmit simultaneously.
- It is easily affected by noise.

Instead, we place this information onto a **high-frequency carrier wave**.

This process is called **modulation**.

```
Binary Data
      │
      ▼
Modulator
      │
      ▼
Carrier Wave
      │
      ▼
Transmitted Signal
```

---

# Understanding the Carrier Wave

A **carrier wave** is a high-frequency sinusoidal signal used to carry information.

Mathematically,

```
Carrier = A cos(2πfct)
```

where

| Symbol | Meaning |
|---------|----------|
| A | Carrier amplitude |
| fc | Carrier frequency |
| t | Time |

A carrier by itself carries **no information**.

It becomes useful only after modulation.

---
