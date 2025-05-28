# 🎭 CAN for Theatre: Robust Embedded Control Systems in Blended Shadow Puppet Performance

## 📌 Overview

This meta-project explores how **Controller Area Network (CAN)** technology—long established in automotive and industrial automation—can be applied to a **theatrical environment**, specifically within the **Blended Shadow Puppet Theatre (BSPT)** project. By building a **distributed, event-driven, fault-tolerant system**, students will gain experience in embedded systems, real-time control, and networked communication—skills that are transferable to **automotive engineering**, **mechatronics**, and **complex interactive installations**.

### 🚀 Why Use CAN in Theatre?

| Feature | Benefit |
|--------|---------|
| **Deterministic timing** | Ensures predictable response, essential for physical rigging |
| **Electrical robustness** | Reliable in noisy environments (motors, dimmers, stage power) |
| **Event-driven model** | Ideal for reactive systems: sensors, triggers, puppet feedback |
| **Built-in priority arbitration** | Critical events (e.g., safety stops) preempt routine updates |
| **Scalability** | Add new components (motors, lights, sensors) without central reconfiguration |
| **Low wiring overhead** | One twisted-pair bus supports many nodes with minimal complexity |

---

## 📚 Related Research & Context

CAN is standard in **automotive**, **aerospace**, and **factory automation**, where safety and coordination are paramount. While **not widely adopted in theatre**, recent related innovations include:

- **CAN-based robotics platforms** used in research labs for movement control  
- **DIY stagecraft projects** using CAN for distributed servo control  
- **Hybrid CAN/OSC bridges** in real-time performance research  
- Kristiel (2023) offers a practical overview of CAN integration in robotic systems, which shares overlap with BSPT's mechanical rigging goals.

> This project contributes novel research by integrating CAN into **artistic live performance environments**, linking physical devices to **real-time AI and OSC systems**, and testing compatibility with the **Balanced Blended Space (BBS)** framework.

---

## 🧩 Project Summary

This initiative develops a **modular CAN-based control network** for physical puppetry, environmental sensing, and responsive mechanical components. A **CAN–OSC bridge** will synchronize the low-level hardware with high-level creative logic, allowing **real-time AI** to direct the performance system.

The work will be documented and tested within the Blended Shadow Puppet Theatre, serving both as a practical application and a research foundation.

---

## 🎯 Project Goals

- Develop a working **CAN network infrastructure** for BSPT automation
- Create embedded nodes for:
  - Motor control
  - Sensor feedback
  - Shadow gobo actuators
- Implement a **CAN–OSC bridge** for integration with the larger OSC-based system
- Enable **AI-driven cues** to affect physical rigging in real time
- Design a robust **messaging schema** for theatrical control
- Generate reproducible artifacts for open-source distribution
- Conduct a literature review, acquire the CAN standard, and prepare initial technical tests and simulation scenarios

---

## 🧠 Learning Objectives

Participants will:

- Implement the CAN protocol on embedded microcontrollers (STM32, ESP32, Arduino MCP2515, etc.)
- Design message structures and prioritization strategies for real-time control
- Create hardware and firmware for distributed, modular control
- Develop tools to bridge low-level control (CAN) with high-level direction (OSC + AI)
- Explore the theoretical implications of CAN-based pathways under the BBS framework
- Document results for educational reuse and future CHI projects

---

## 🔧 Technical Components

| Component | Description |
|----------|-------------|
| **CAN Network Backbone** | Topology, terminations, and voltage handling for the physical network |
| **CAN Nodes** | Devices for motors, sensors, and gobo mechanics |
| **Embedded Logic** | C/C++ firmware for node behavior and event handling |
| **OSC Bridge** | Central bridge (e.g., Raspberry Pi) translating between CAN and OSC messages |
| **AI Middleware** | Logic system for interpreting sensor inputs and issuing real-time creative decisions |
| **Fail-Safe System** | Message arbitration and emergency stop logic via high-priority CAN IDs |

---

## 🎓 Target Student Profiles

- **Automotive Engineering**: Apply CAN in a non-automotive domain while learning real-world arbitration and fault tolerance.
- **Mechatronics and CET**: Develop embedded systems and integrate with actuators, sensors, and external protocols.
- **Emerging Media Technology**: Explore real-time physical interaction and machine-driven creative control.

---

## 🧪 Key Research Questions

1. Can CAN-based control systems outperform traditional entertainment protocols (e.g., DMX, MIDI) in reliability and responsiveness?
2. What message ID strategies and event vocabularies are optimal for theatrical environments?
3. How do AI decision agents benefit from access to real-time physical feedback over CAN?
4. What hybrid control model best balances decentralized hardware and centralized creative direction?

---

## 🧭 Alignment with the BBS Framework

This project will also investigate how **CAN-based mediation pathways**—which are hardware-driven, event-based, and decentralized—interact with the theoretical premises of the **Balanced Blended Space (BBS)** framework. Specifically, we aim to test:

### 🧠 BBS Premises in Focus

| Premise | BBS Concept | CAN System Implication |
|--------|--------------|------------------------|
| **Transactional Mediation** | BBS tracks ΔD (change of state) across Source → Vector → Destination | Each CAN message represents a transactional state shift between physical agents |
| **Role Fluidity** | Source, Vector, Destination roles can be dynamically reassigned | Nodes can act as both senders and receivers (i.e., autonomous event actors) |
| **Agent Relativity** | Mediation paths depend on observer/participant role in the system | AI director, performer, and sensor each interpret the network state differently |
| **Meaning-Agnosticism** | BBS does not assume semantic meaning, only observable transformation | CAN message data is functional, symbolic interpretation is layered externally |
| **Cross-Modality** | Signals may flow between conceptual, physical, and virtual spaces | CAN integrates physical puppetry (motors, sensors) into virtual cue systems (via OSC) |

### 🔍 Experimental BBS Questions

- Can the structure of a CAN network be interpreted using BBS S→V→D syntax?
- Do deterministic event chains in CAN constrain or enhance BBS flexibility?
- Does layering AI and OSC on top of CAN introduce *recursive mediation* pathways?
- What feedback loops emerge when physical input (sensors) affects symbolic output (AI cues), and vice versa?
- Can a performance system using CAN be used to model a full ΔD-mediated pathway across hybrid physical–virtual–conceptual layers?

---

## 📅 Project Phases

| Phase | Description |
|-------|-------------|
| **Phase 1: Research** | Review CAN standards, theatrical control needs, BBS compatibility |
| **Phase 2: Design** | Build messaging protocol, test framework, and system schematics |
| **Phase 3: Produce** | Develop and test embedded nodes for movement and sensing |
| **Phase 4: Integrate** | Connect to OSC system and test AI-influenced responses |
| **Phase 5: Publish** | Release full documentation, present results, contribute to CHIIDS OERs |

---

## 🔗 Repository Features

- `hardware/`: Schematics and board layouts for embedded CAN nodes
- `firmware/`: Embedded source code for actuator and sensor modules
- `python/osc-bridge/`: Scripts for CAN–OSC interoperability
- `docs/`: Protocol specs, diagrams, BBS analysis, and student reports
- `student-logs/`: Milestones, reflections, and GitHub issues per contributor

---

## 📚 References and Precedent Research

- Kristiel. “Exploring Controller Area Network (CAN) in Robotics.” *Studica Blog*, 22 Nov. 2023. [https://www.studica.com/blog/controller-area-network](https://www.studica.com/blog/controller-area-network)
- Additional literature on automotive-grade CAN networks, embedded design patterns, and hybrid OSC-CAN integration will be reviewed and compiled by student teams as part of Phase 1.

---

## 🌐 Future Applications

- Robotics and automation studios using real-time physical interaction
- Cross-departmental performances integrating AI, theatre, and engineering
- Prototyping platform for automotive/CAN skills in a creative, risk-tolerant space

---

> **This is a CHI Meta-Project**  
> Aligned with the Center for Holistic Integration principles of cross-disciplinary participation, long-term infrastructure development, and scalable research platforms.

