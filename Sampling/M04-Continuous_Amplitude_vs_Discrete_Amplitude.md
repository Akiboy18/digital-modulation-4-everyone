# Module 4: Continuous Amplitude vs Discrete Amplitude

# Introduction

In the previous module, we learned that signals can be

- Continuous in **time**
- Discrete in **time**

However, a signal has another important property besides time. That property is its **amplitude**.
Whenever we draw a signal, there are always two axes.

<img width="901" height="537" alt="image" src="https://github.com/user-attachments/assets/beee9650-d7c6-4483-a81b-a6452b517a4a" />

 * The horizontal axis tells us **when** the signal exists.
 * The vertical axis tells us **how large** the signal is.

This vertical value is called the **amplitude**. Understanding amplitude is essential because **sampling changes time** while **quantization changes amplitude.**

---

# What is Amplitude?

Amplitude represents the **magnitude** or **strength** of a signal.


Imagine measuring the water level in a river.

The water level changes continuously.

<img width="1333" height="654" alt="image" src="https://github.com/user-attachments/assets/aab0ddc3-915f-4eae-a687-2f0510099edb" />

The height of the water is similar to the amplitude of a signal. Amplitude simply tells us "How big is the signal at this moment?"

---

# Continuous Amplitude

A signal has **continuous amplitude** if it can take **any value within a given range**.

<img width="1408" height="768" alt="image" src="https://github.com/user-attachments/assets/50e0befa-3cb8-4d8c-8784-e20c9067a149" />

---

# Discrete Amplitude

Now imagine we allow only a few voltage levels. Instead of allowing every value, we allow only a set of fixed discrete values and nothing else is allowed. If the original value is 2.37, it must be rounded to 2 or 3 depending on the system.This is called **discrete amplitude**.

<img width="1408" height="768" alt="image" src="https://github.com/user-attachments/assets/20c0c899-f549-4323-9452-ba58cc101c95" />

Imagine climbing a staircase. You cannot stand halfway between two steps. You must stand on one step. Digital amplitude behaves exactly like this. Only fixed levels are available.

---

# Continuous vs Discrete Amplitude

| Continuous Amplitude | Discrete Amplitude |
|----------------------|--------------------|
| Infinite values | Finite values |
| Smooth variation | Fixed levels |
| Analog systems | Digital systems |
| No rounding | Requires rounding |
| More accurate | Approximation of original |


> ### Time and Amplitude are Independent
> One of the biggest misconceptions is that Continuous-Time automatically means Continuous-Amplitude. This is **not true**.
> Time and amplitude are completely independent.
---

# Why Is Discrete Amplitude Needed?

Computers use discrete amplitude because **infinite precision requires infinite memory**, and real-world electronics are too messy to handle perfect decimal numbers. Grouping infinite real-world values into fixed, numbered categories makes data storage possible and error-free.

---

## 1. The Infinite Memory Problem
If a computer tried to save a truly continuous signal, a single second of audio could crash its system.

* Real numbers have **infinite decimal places** (e.g., `1.21384592... V`).
* Storing infinite decimals requires **infinite digital storage space**.
* Computers must round values to **finite numbers** (like `0` to `255`).
* This creates a **manageable file size** for storage and transmission.

---

## 2. Noise Immunity

Electricity is naturally chaotic. Voltage levels in a wire constantly fluctuate due to heat, background static, and wireless interference. 
Imagine a continuous system where `1.000 V` means *"Yes"* and `1.001 V` means *"No"*. If a tiny bit of static bumps the voltage from `1.000 V` to `1.001 V`, your data is completely corrupted.
By using discrete amplitude, the computer creates **wide safety zones**:

```text
3.0 V ──────────────────────────────────────────────────
         SAFE ZONE: Any voltage in this area = Level 3
2.0 V ──────────────────────────────────────────────────
         SAFE ZONE: Any voltage in this area = Level 2
1.0 V ──────────────────────────────────────────────────
```

* The computer sets **strict target levels** (e.g., `1V`, `2V`, `3V`).
* It ignores small variations within the **wide safety bins** between those levels.
* Anything from `1.6V` to `2.4V` is safely read as **exactly Level 2**.
* Small electrical noise **cannot alter or corrupt the underlying data**.

---

# Summary

A signal has two important properties

- Time
- Amplitude

Sampling changes the **time representation** of a signal.

Quantization changes the **amplitude representation**.

Understanding this distinction is essential before learning Analog-to-Digital Conversion and Digital Signal Processing.

- Amplitude represents the strength of a signal.
- Continuous amplitude allows infinitely many values.
- Discrete amplitude allows only fixed levels.
- Sampling changes time.
- Quantization changes amplitude.
- Time and amplitude are independent properties.
- Digital systems work with discrete amplitude values.

Now that we understand both **time** and **amplitude**, we are finally ready to study the most important concept in digital communication:

> **Module 5 – What is Sampling?**

In the next module, we will learn exactly how a continuous-time signal is converted into a discrete-time signal using the sampling process.
