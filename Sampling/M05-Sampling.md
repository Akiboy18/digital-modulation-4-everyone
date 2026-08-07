# Module 5: What is Sampling?

## The Sampling Process

The sampling process consists of four simple steps.

```mermaid
graph TD
    A[Continuous-Time Signal] --> B[Choose Sampling Instants]
    B --> C[Measure Signal Value]
    C --> D[Store the Samples]
```

<img width="2816" height="1536" alt="image" src="https://github.com/user-attachments/assets/572f1196-abb9-4e6a-87e6-fc78507e8924" />

The result is a discrete-time signal.

---

## What is a Sample?

A **sample** is one measurement of the signal taken at a specific instant. For example, Suppose the signal values are

| Time | Amplitude |
| :--- | :--- |
| 0 ms | 0.5 V |
| 1 ms | 1.2 V |
| 2 ms | 0.9 V |
| 3 ms | 0.1 V |

Each voltage measurement is one sample.

---

## Sampling Interval

The **Sampling Interval** is the time between two consecutive samples. It is represented by T<sub>s</sub> where T<sub>s</sub> = Sampling Interval

<img width="310" height="160" alt="image" src="https://github.com/user-attachments/assets/9d760516-61e9-4074-b933-d139dadec865" />

_src: National Instruments_

---

## Sampling Rate

The **Sampling Rate** tells us how many samples are taken every second. It is represented by F<sub>s</sub>, where F<sub>s</sub> = Samples per Second. Its unit is Hz
1 Hz = 1 Sample per Second. Suppose we take 1000 samples every second. Then Sampling Rate Fs = 1000 Hz

---

## Relationship Between Sampling Rate and Sampling Interval

Sampling Interval and Sampling Rate are inverses of each other. Sampling Rate Fs = 1 / Ts

where
- **Fs** = Sampling Rate (Hz)
- **Ts** = Sampling Interval (seconds)


#### Example

If Ts = 1 ms , Then Fs = 1 / 0.001 = 1000 Hz

# Sampling in Communication Systems

Every digital communication system begins with sampling.

```mermaid
flowchart TD
    A[Voice] --> B[Microphone]
    B --> C[Analog Signal]
    C --> D[Sampling]
    D --> E[Discrete-Time Signal]
    E --> F[ADC]
    F --> G[Digital Processing]
    G --> H[Transmission]
```

---

## Summary

Sampling converts a continuous-time signal into a discrete-time signal by measuring its value at regular intervals. Each measurement is called a sample. The time between samples is called the sampling interval. The number of samples taken every second is called the sampling rate. Sampling forms the foundation of digital communication and digital signal processing.

- Sampling converts continuous-time signals into discrete-time signals.
- A sample is one measurement of the signal.
- Sampling Interval = Time between samples.
- Sampling Rate = Samples taken every second.
- Sampling Rate is measured in Hertz (Hz).
- Sampling Interval and Sampling Rate are inverses.
- Every modern digital communication system begins with sampling.
