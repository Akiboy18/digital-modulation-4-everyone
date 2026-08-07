# Module 6: The Sampling Theorem (Nyquist-Shannon Sampling Theorem)

In the previous module, we learned **how** sampling works. However, another important question still remains.

**How many samples should we take?**

Should we sample
- once every second?
- ten times every second?
- one million times every second?

Is there a minimum number of samples required? The answer is **yes**. This minimum sampling requirement is described by one of the most important theorems in digital communication. It is called the
**Nyquist-Shannon Sampling Theorem**.

Imagine drawing a circle. If you place only 4 points around a circle - you get a Square
Now place 20 points. The shape looks much more like a circle.

With 500 points, it becomes almost impossible to distinguish from a true circle.

<img width="1311" height="436" alt="image" src="https://github.com/user-attachments/assets/5e3fc41f-633c-4492-adbf-44037c56b588" />

_The more information we collect, the better we can represent the original object.
Sampling follows exactly the same principle_

---

# Why Isn't Any Sampling Rate Good Enough?

<img width="987" height="616" alt="image" src="https://github.com/user-attachments/assets/dc14c51e-c0bf-42ad-a6ec-25bfe62521cc" />

The above image illustrates how signal sampling frequency dictates the accuracy of data reconstruction, moving from perfect replication to total data loss. In high-frequency sampling, data points are gathered continuously at very fine intervals, capturing every nuance to perfectly reconstruct the true shape of the event. When the rate drops to medium-frequency under-sampling, the intervals widen so significantly that the sparse data points are connected incorrectly, resulting in a distorted "alias" signal that reflects a false reality. Finally, with extremely low-frequency sampling, the measurement gaps are so extreme that the critical event is missed entirely, recording a completely flat line and losing the signal altogether despite the event actually occurring

---

# The Nyquist-Shannon Sampling Theorem

The Sampling Theorem states:

> **A band-limited signal can be reconstructed perfectly if it is sampled at a rate greater than or equal to twice its highest frequency component.**

Mathematically,

Fs ≥ 2 × Fmax

where

- **Fs** = Sampling Frequency
- **Fmax** = Highest frequency present in the signal

This minimum required sampling frequency is called the **Nyquist Rate**.

> We will study it in detail in the next module.

---

# Breaking Down the Theorem

The theorem contains three important ideas.

## 1. Band-Limited Signal

A **band-limited signal** is a signal whose frequency components do not extend beyond a certain maximum frequency.

For Example, let's take a signal which contains contains frequencies such as 100 Hz, 200 Hz, 350 Hz, 500 Hz. Its highest frequency is 500 Hz

Therefore, Fmax = 500 Hz


## 2. Highest Frequency

The theorem depends only on the **highest frequency component**. It does **not** depend on

- average frequency,
- lowest frequency,
- carrier frequency.

Only the maximum frequency matters.


## 3. Twice the Highest Frequency

If Highest Frequency = 1000 Hz. Then the minimum sampling frequency becomes 2000 Samples/Second or 2 kHz. Sampling any slower risks losing information.

---

# Why Does the Theorem Work?

The Nyquist theorem works because capturing a rapidly changing event requires measurements that outpace its fastest changes, much like tracking a spinning wheel. If you only look at a spinning wheel once a second, the large gaps between observations make it impossible to tell how fast or in which direction it is rotating. However, increasing your observation rate reveals its true, continuous motion. Similarly, high-frequency signals fluctuate rapidly over time, demanding highly frequent data points to accurately track their peaks and valleys without leaving blind spots.

<img width="442" height="280" alt="image" src="https://github.com/user-attachments/assets/d4addcc4-06ed-41d6-ab65-0d6479752d86" />

The human ear can detect sound frequencies up to approximately 20 kHz. According to the Sampling Theorem, an audio signal must be sampled at more than twice its highest frequency to avoid distortion, requiring a minimum rate of 40 kHz. This is why standard audio CDs use a sampling rate of 44.1 kHz; the extra margin provides a crucial buffer that allows audio equipment to cleanly filter out unwanted high-frequency noise without cutting into the audible sound.

<img width="816" height="453" alt="image" src="https://github.com/user-attachments/assets/2c226852-33ba-4f99-b4ae-8b9002406b11" />

src: ECG Library

In contrast to high-frequency audio, human physiological signals change at a much slower pace. An electrocardiogram (ECG), which tracks the electrical activity of the heart, contains relatively low-frequency electrical waves. Because the signal lacks rapid, high-pitched fluctuations, medical ECG machines can perfectly capture every heartbeat using significantly lower sampling rates than those required for music recording.

---

# What Happens if We Ignore Nyquist?

<img width="522" height="385" alt="image" src="https://github.com/user-attachments/assets/d9a78edd-4fe5-4b38-be19-ad187e6d90d4" />

If the sampling rate is lower than the required minimum, the reconstructed signal no longer matches the original. Different frequencies begin to overlap.
The receiver cannot distinguish them correctly.

This phenomenon is called **Aliasing.**

Aliasing is one of the most important topics in digital signal processing and will be covered in a dedicated module.

<img width="520" height="293" alt="91b6000853834dbea9350bdce5a64894" src="https://github.com/user-attachments/assets/b31623c9-9c3c-4a82-bd4e-6d4b15db21cc" />

The "floating helicopter" illusion is one of the most famous examples of camera aliasing and sampling synchronization.When a camera captures a video, it is actually taking a series of distinct snapshots (frames) at a fixed sample rate—for example, 24 or 30 frames per second (fps). If a helicopter's main rotor rotates at a speed that aligns perfectly with that frame rate (e.g., exactly 1,800 RPM, which means it completes exactly one rotation every 1/30th of a second), each frame captures the blades in the exact same physical position.Even though the blades are spinning fast enough to lift a massive aircraft, the camera completely misses the motion occurring between the frames. The final video makes the helicopter appear to hover and fly like an impossible, floating toy with completely motionless blades.

---

# Summary

The Sampling Theorem tells us the minimum sampling frequency required to preserve all information in a band-limited signal. If we sample too slowly, important information is permanently lost. Sampling faster than the minimum allows the original signal to be reconstructed accurately.

- Sampling too slowly causes information loss.
- The Sampling Theorem specifies the minimum sampling rate.
- The sampling frequency must be at least twice the highest frequency in the signal.
- Only the highest frequency component determines the minimum sampling rate.
- Violating the theorem leads to aliasing.
