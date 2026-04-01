---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

I am an undergraduate student at the Department of Electronic and Electrical Engineering, Southern University of Science and Technology (SUSTech). My research interests focus on medical image analysis, particularly in the areas of semi-supervised learning and domain adaptation for medical imaging applications.

# 🔬 Research Interests
- Medical Image Segmentation
- Semi-supervised Learning
- Domain Adaptation / Domain Shift
- Optical Coherence Tomography (OCT)


# 🔥 News
- *2026.02*: Submitted a paper to MICCAI 2026.
- *2026.01*: Paper accepted to ISBI 2026 as an Oral Presentation. 

# 📝 Publications

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">ISBI 2026</div><img src='ISBI.png' alt="LUMOS Framework" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[**LUMOS: Universal Semi-Supervised OCT Retinal Layer Segmentation with Hierarchical Reliable Mutual Learning**](papers/ISBI2026_LUMOS.pdf)

**Yizhou Fang**, Jian Zhong, Li Lin, Xiaoying Tang

**ISBI 2026 (Oral Presentation)** | [PDF](papers/ISBI2026_LUMOS.pdf)
- Proposed a hierarchical reliable mutual learning framework for semi-supervised OCT retinal layer segmentation.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">MICCAI 2026</div><img src='MICCAI.png' alt="CRISP Framework" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[**CRISP: Rank-Guided Iterative Squeezing for Robust Medical Image Segmentation under Domain Shift**](papers/MICCAI2026_CRISP.pdf)

**Yizhou Fang** , Xiaoying Tang, Longxi Zhou.

**MICCAI 2026** | [PDF](papers/MICCAI2026_CRISP.pdf)
- Proposed a rank-guided iterative squeezing approach for robust medical image segmentation under domain shift.
</div>
</div>

# 🎖 Honors and Awards
- *2024.11* National Third Prize in the 2024 Fourth Cross Strait Student Baseball League Finals 

# 📖 Education
- *2023.09 - 2027.06 (Expected)*, Bachelor of Engineering in Information Engineering, Southern University of Science and Technology (SUSTech), Shenzhen, China
  - GPA: 3.74/4.00

# 🔬 Research Experience

**Jan. 2025 - Jun. 2025 | Shenzhen, China**
**Undergraduate Researcher**
Department of Electronic and Electrical Engineering, SUSTech
*Supervisor: Prof. Xiaoying Tang*

**Topic: OCT Multi-classification Based on Model Optimization during Adaptive Testing**
- Proposed an innovative Test-Time Adaptation (TTA) strategy for multi-class classification of OCT images that eliminates the need for parameter updates, ensuring suitability for resource-constrained environments.
- Integrated test image amplitude spectra with learned visual prompts to dynamically adapt model interpretation and mitigate domain shift without modifying weights.
- Designed a lightweight, adaptive framework focusing on low-frequency feature adjustment to enhance cross-domain generalization.

**Jul. 2025 - Oct. 2025 | Shenzhen, China**
**Undergraduate Researcher**
Department of Electronic and Electrical Engineering, SUSTech
*Supervisor: Prof. Xiaoying Tang*

**Topic: Semi-supervised Cross-Domain Retinal Layer Segmentation**
- Developed a collaborative dual-decoder mutual learning architecture with a shared encoder to enhance cross-domain feature representation and segmentation robustness.
- Designed a cross-layer dual-feature consistency loss leveraging prototype-guided similarity matching and entropy-based confidence weighting for improved feature alignment.
- Implemented an adaptive dynamic task selection mechanism to facilitate efficient teacher-student knowledge distillation in semi-supervised scenarios.
- **First author; led method design, experiments, and manuscript preparation. Accepted by ISBI 2026 (Oral Presentation).**

**Nov. 2025 - Feb. 2026 | Shenzhen, China**
**Undergraduate Researcher**
Department of Electronic and Electrical Engineering, SUSTech
*Supervisors: Prof. Longxi Zhou and Prof. Xiaoying Tang*

**Topic: Rank-based Medical Image Segmentation (CRISP Framework)**
- **The First Rank-based Framework**: Introduced CRISP, the first medical image segmentation framework to perform inference based on relative rank rather than absolute probabilities, effectively overcoming the limitations of probability-based methods under unpredictable distribution shifts.
- **Empirical Law Discovery**: Identified and formulated the "Rank Stability of Positive Regions" principle, serving as a reliable anchor to maintain segmentation stability in open-world clinical environments.
- **Parameter-free Adaptation**: Developed a model-agnostic, parameter-free strategy that utilizes latent feature perturbation to construct High-Precision (HP) and High-Recall (HR) priors.
- **Iterative Refinement**: Designed a recursive "squeezing" mechanism to close the uncertainty gap between HP and HR regions, significantly reducing HD95 across multi-center, demographic, and cross-modality shifts.
- **First author; submitted to MICCAI 2026 (under review).**

# 🛠 Technical Skills
- **Programming Languages**: Python, C, Matlab
- **Deep Learning**: PyTorch
- **Embedded Systems**: Keil
- **Mobile Development**: Android Studio, DevEco Studio

# 🏆 Leadership & Service
- **President of the Baseball Club**: Organized training and competitions, managed club members.

---

# 📧 Contact
**Email**: [12310429@mail.sustech.edu.cn](mailto:12310429@mail.sustech.edu.cn)