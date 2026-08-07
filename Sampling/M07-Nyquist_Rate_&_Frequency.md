# Module 7: Nyquist Rate and Nyquist Frequency

In the previous module, we learned the Sampling Theorem. The theorem states

**Sampling Frequency ≥ 2 × Highest Signal Frequency**

This equation introduces two important terms

- Nyquist Rate
- Nyquist Frequency

Although they sound similar, they are **not the same thing**. Many of us mistakenly use them interchangeably. This module explains the difference.

---

# What is the Nyquist Rate?

The **Nyquist Rate** is the **minimum sampling frequency required to perfectly reconstruct a band-limited signal**.

According to the Sampling Theorem,

**Nyquist Rate = 2 × Highest Frequency Component**

or

Fs(min) = 2Fmax


where

- **Fs(min)** = Minimum sampling frequency
- **Fmax** = Highest frequency present in the signal

The Nyquist Rate tells us

> **"How fast must we sample?"**

Suppose the highest frequency in a signal is 5 kHz

Then Nyquist Rate = 2 × 5 kHz = 10 kHz

Therefore, the signal must be sampled at **10 kHz or higher**.

Human hearing extends to approximately 20 kHz. The Nyquist Rate becomes 2 × 20 kHz = 40 kHz
This is why audio systems sample slightly above this value. Audio CDs use 44.1 kHz which satisfies the Sampling Theorem while allowing room for practical filters.

---

# What is the Nyquist Frequency?

The **Nyquist Frequency** is **half of the sampling frequency**. 

Mathematically, Nyquist Frequency = Sampling Frequency / 2

> FN = Fs / 2

where
- **FN** = Nyquist Frequency
- **Fs** = Actual sampling frequency

The Nyquist Frequency tells us

> **"What is the highest signal frequency that can be represented without aliasing for a given sampling rate?"**

Suppose an ADC samples at 48 kHz, Then Nyquist Frequency = 48 / 2 = 24 kHz
So, Signals above 24 kHz cannot be represented correctly unless removed before sampling.


Suppose Sampling Frequency = 10 MHz, Then Nyquist Frequency = 5 MHz. So the ADC can correctly represent frequency components only up to 5 MHz.

---

# Nyquist Rate vs Nyquist Frequency

This is the easiest way to remember the difference.

| Nyquist Rate | Nyquist Frequency |
|---------------|------------------|
| Minimum required sampling rate | Half of the actual sampling rate |
| Depends on the signal | Depends on the ADC or sampler |
| Formula: 2 × Fmax | Formula: Fs / 2 |
| Answers "How fast should I sample?" | Answers "How much bandwidth can this sampling rate represent?" |

---

# Visual Comparison

Suppose the signal contains frequencies up to 8 kHz. Then Nyquist Rate = 16 kHz
Now suppose we actually sample at 20 kHz. The Nyquist Frequency becomes 20 / 2 = 10 kHz.

Notice Nyquist Rate = 16 kHz and Nyquist Frequency 10 kHz - They are different quantities.

---

# Why Students Get Confused

The names are similar,

and both involve a factor of two.

Remember

**Nyquist Rate**

→ relates to the **signal**.

**Nyquist Frequency**

→ relates to the **sampling system**.

A useful way to think about it is

```
Signal

↓

Nyquist Rate

↓

Choose Sampling Frequency

↓

Nyquist Frequency
```

---

# Practical Example

Suppose an SDR is sampling at

```
4 MSamples/s.
```

The Nyquist Frequency is

```
2 MHz.
```

If the received signal occupies

```
1.5 MHz
```

everything is fine.

However,

if it contains energy at

```
2.5 MHz,
```

those components must be removed by an anti-aliasing filter before sampling.

Otherwise,

aliasing occurs.

---

# Summary

The Nyquist Rate and Nyquist Frequency are closely related but describe different concepts.

The Nyquist Rate tells us the **minimum sampling rate required** for a signal.

The Nyquist Frequency tells us the **highest frequency that can be represented** for a chosen sampling frequency.

Understanding this distinction is essential for designing communication systems and selecting ADC sampling rates.

---

# Key Takeaways

- Nyquist Rate = Minimum sampling rate required.
- Nyquist Rate = 2 × Highest signal frequency.
- Nyquist Frequency = Half of the sampling frequency.
- Nyquist Frequency = Fs / 2.
- The two terms are **not interchangeable**.
- Nyquist Rate depends on the signal.
- Nyquist Frequency depends on the chosen sampling frequency.

---

# What's Next?

So far, we have assumed that the Sampling Theorem is always satisfied.

But what happens if we sample **below the Nyquist Rate**?

The answer is one of the most important phenomena in signal processing:

> **Aliasing**

In the next module, we will see how different frequencies become indistinguishable, why wagon wheels sometimes appear to rotate backward in movies, and how aliasing can permanently distort sampled signals.
