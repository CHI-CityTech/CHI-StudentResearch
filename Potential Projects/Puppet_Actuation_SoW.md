# 🛠️ Statement of Work (SoW)

## 🎭 Scalable Puppet Actuation and Control System for Blended Reality Performance

*A Grand Vision Initiative within the BRPS/BBS Engineering Pipeline*

---

## 🔍 I. Project Context and Vision

This engineering initiative is part of the **Blended Reality Performance System (BRPS)**, a core infrastructure for the **Balanced Blended Space (BBS)** framework. BRPS supports live performance environments in which **physical, digital, and conceptual spaces converge** through coordinated AI-human collaboration. Within this context, puppetry is reimagined not only as performance but as a **mediated system of real-time symbolic control**.

This SoW proposes the research, design, and iterative development of a **modular, scalable puppet actuation system**. Inspired by traditional **Javanese shadow puppetry**, Baroque mechanical theatre, and contemporary automation principles, the system will allow physical puppets and props to be controlled by **AI agents, human performers, or both**, across **multiple mediation pathways**.

Development begins with **speculation**—creative proposals for novel systems and interactions—and proceeds through **precedent research**: identifying what existing mechanisms, platforms, or protocols can be adapted, reused, or reinterpreted within this new performance context. If a system or component already exists and fits the purpose, it should be adopted or adapted. However, if no suitable solution is found, then the team will design and implement a new subsystem. This ensures that innovation is grounded in both creativity and practicality, avoiding redundancy while embracing meaningful invention.

---

## 🧱 II. System Goals

- Enable expressive **multi-axis movement** of physical puppets and props using motorized control rods and linesets.  
- Provide **modular and scalable architecture**: from single-limb mechanisms to full-body, multi-articulated puppets
- Integrate **human and AI control pathways**, with live switching or co-performance capability
- Support **cross-domain control**: the same mechanism can animate either **physical puppets** or **virtual representations**
- Establish a **hardware and software interface standard** for plug-and-play use across multiple scenes and projects

---

## 🧰 III. Core System Components

This list of sub-systems is tentative but here as a potential example of the different required components.

| Component                     | Description                                                   | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 🎧 **Control Interface**      | Accepts input from joystick, gesture tracking, or AI scripts  | Must be modular and accessible to human or AI agents. Note: any joystick not mechanically linked directly to the actuator will pass through a **virtual mediation pathway**, where the **AI or HI (Human Intelligence)** agent type is determined. |
| 🔄 **Conversion Node**        | Microcontroller (e.g., Arduino, Teensy) to interpret commands | Handles digital/analog conversion and PWM control |
| ⚙️ **Actuator System**        | Servos, motors, and linkages to move rods                     | Must support 3 DoF per rod: 1) **Up/Down** (vertical lifting or lowering of the rod), 2) **Left/Right** (horizontal panning or sliding motion), and 3) **Angle/Twist** (rotational motion around the rod’s own axis). Target average angular/linear motion speed: **30–60°/sec or 100–150 mm/sec**, adjustable for expressive variation. Consideration should be given to whether the rods must remain visible or whether control can be achieved through alternative internal methods such as **linesets, pulleys, or cable channels within or behind the puppet body**. |
| 🧳 **Modular Puppet Clamp**   | Receives puppet control rods (body, arms, head)               | Standardized insert for quick attachment |
| 🧱 **Mounting Structure**     | Track-based cart, fixed mounts, or tree-mounted chassis       | Allows repositioning and vertical deployment |
| 🔁 **Feedback Sensors**       | Position, angle, force, or tension sensors                    | Optional but highly encouraged for adaptive systems |
| 🧠 **AI Integration Layer**   | Interprets cues or symbolic intent into motion vectors        | Designed to support both live and scripted modes |
| 🌐 **Virtual Link Interface** | Routes same control to virtual puppet avatars                 | Enables cross-domain experimentation |

---

## 🔄 IV. Phased Development Plan

| Phase       | Title                               | Description |
| ----------- | ----------------------------------- | ----------- |
| **Phase 1** | **Single-Limb Actuator Unit**       | Prototype and test single-rod controller for props and NPCs (e.g., arrow arm, bird, mango thrower) |
| **Phase 2** | **Multi-Unit Coordination**         | Use 2–3 limb systems together on shared or distributed characters |
| **Phase 3** | **Modular Puppet Harness**          | Build quick-attach rod sockets for full-body puppet control |
| **Phase 4** | **Feedback Integration**            | Add real-time sensors to monitor motion and correct errors |
| **Phase 5** | **Human-AI Co-Control**             | Test joint manipulation between human operator and AI logic |
| **Phase 6** | **Virtual-Puppet Interoperability** | Extend control logic to digital avatars in Unreal, Unity, etc. |

---

## 🔎 V. Engineering Requirements

### Functional Requirements:

- Each actuator must support **3 axes of movement** per rod
- System must allow insertion/removal of rods with minimal delay
- Human and AI input must be switchable and/or combinable
- Feedback (if included) must operate at interactive framerates
- Control units must support **daisy-chaining** for scale-up

### Performance Requirements:

- Latency ≤ 100 ms from signal to motion
- Positional resolution ≤ 5 mm drift over 30 minutes
- Continuous operation time ≥ 60 minutes without overheating
- Detachable parts must remain secure under motion vibration

### Integration Requirements:

- Compatible with current BSP performance scaffold
- Power delivery via standard cables or battery packs
- Software API available for Unreal Engine and Python interface

---

## 🧪 VI. Creative Flexibility

This SoW encourages:

- Creative articulation methods (cable pulls, rotating cams, etc.)
- Use of found materials, 3D printing, or analog mechanisms
- Alternate control metaphors (e.g., gesture wands, symbolic triggers)
- Experimentation with mounting orientations and spatial framing
- Investigation of **visibility constraints** in puppet design — including the possibility of **fully internalized motion transmission** mechanisms to preserve shadow aesthetic or narrative style

---

## 📈 VII. Deliverables

- CAD drawings and physical prototypes of actuation modules
- Test footage of use in performance setting
- Feedback loop integration report
- AI control schema for one or more test routines
- BBS pathway diagrams for each prototype
- **Deliverable 1a:** Single-rod "chariot and pole" mechanism allowing 3-axis movement of an inserted puppet rod. This will serve as the foundational hardware platform for scaling toward multi-rod and intelligent systems.
- **Deliverable 1b:** Launch of a **puppet materials design and motion testing initiative**, to explore viable construction techniques, translucency, flexibility, and integration with rod- or cable-based motion. This includes investigating traditional shadow puppet materials and testing synthetic or hybrid alternatives.
