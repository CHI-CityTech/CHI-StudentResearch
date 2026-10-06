# Scope of Work: SAR Environmental Sensing and Data Acquisition Research

**Project:** Self-Aware Room (SAR)\
**Center:** Center for Holistic Integration (CHI), New York City College
of Technology\
**Student Research Assistant:** Jabber bin Kibria\
**Supervisor:** Professor David B. Smith\
**Position:** Federal Work-Study Research Assistant\
**Document Status:** Working Draft, Version 0.1\
**Methodology:** Agile / Sprint-Based Research and Development\
**Date:** October 6, 2026

------------------------------------------------------------------------

## 1. Purpose and Project Context

The Self-Aware Room (SAR) project investigates how an instrumented
physical environment can sense, represent, correlate, interpret, and
ultimately respond to conditions occurring within and around it. SAR is
being developed as a modular research platform in which multiple sensing
modalities, computational processes, human participants, and
artificial-intelligence systems may operate as components of a larger
integrated environment.

This Scope of Work establishes an initial research and development
framework for environmental sensing within SAR. The work begins with a
raw environmental sensor, initially the Bosch BME680, and follows the
path from physical observation through acquisition, transmission,
ingest, persistence, logging, and replay.

The BME680 is the first implementation and research case. It should not
be treated as a predetermined final sensor solution or as the definition
of the environmental sensing modality. The project will determine its
capabilities, limitations, appropriate uses, and potential role within a
larger distributed environmental sensing architecture.

This work is also intended to strengthen the general SAR sensor
architecture and documentation. The environmental sensor project
therefore serves simultaneously as:

1.  a practical hardware and embedded-systems project;
2.  an implementation test of the SAR Shared Streaming Contract;
3.  the basis for a SAR Environmental Sensor Streaming Profile;
4.  an investigation of acquisition, persistence, logging, and replay
    requirements;
5.  an expansion of the SAR sensor documentation track; and
6.  a reference case for future SAR sensing modalities.

Because SAR remains under active development, this Scope of Work is a
living document. Findings from research, prototyping, testing, and
integration are expected to refine both the work described here and
portions of the larger SAR architecture.

------------------------------------------------------------------------

## 2. Primary Objective

The primary objective is to develop and document an initial **SAR
Environmental Sensor Node** and the supporting computational and
physical infrastructure required to introduce environmental observations
reliably into the SAR computational pipeline.

The project should establish a documented and reproducible path:

**Physical Environment → Sensor → Local Acquisition → L0 Transport → L1
Ingest → Persistence/Logging → Replay → Downstream SAR Processing**

A successful result is not simply a sensor that produces numerical
values. The work should establish how an environmental sensor becomes a
conforming, identifiable, testable, reproducible, and maintainable
component of SAR.

The resulting architecture should also be sufficiently modular that
additional environmental sensors can later be incorporated without
redesigning the general SAR pipeline.

------------------------------------------------------------------------

## 3. Relationship to Existing SAR Architecture

This project must begin from the existing SAR architecture rather than
constructing a parallel sensor or data system.

The current SAR repository already establishes:

-   a generalized computational pipeline;
-   a Shared Streaming Contract at the L0/L1 boundary;
-   identity and timestamp policies;
-   modality-specific profile extension mechanisms;
-   a computational class and object model;
-   run and session identity policies;
-   sensor intake requirements;
-   persistence and raw-store mechanisms;
-   logging, replay, and evaluation requirements; and
-   a sensor inventory and computational mapping structure.

The existing `docs/sensors/README.md` defines the sensor documentation
track as covering sensor taxonomy, interface contracts, placement,
calibration, validation, and source-to-contract mapping. Normative
computational contracts remain within `docs/computational/`.

The environmental sensing work should respect this division.

In particular, the project should distinguish among:

1.  **general SAR streaming requirements;**
2.  **environmental-modality requirements;**
3.  **requirements of a particular sensor device such as the BME680;**
    and
4.  **requirements of a particular physical SAR sensor node
    implementation.**

These should not be collapsed into a single specification.

------------------------------------------------------------------------

## 4. Agile Research and Development Methodology

Work under this Scope of Work will be organized using an Agile sprint
methodology rather than a predetermined week-by-week schedule.

The project contains substantial research uncertainty. Sensor
characteristics, SAR pipeline requirements, software capabilities,
physical deployment constraints, and findings from prototype testing may
alter subsequent priorities. A fixed semester schedule would therefore
risk prescribing implementation decisions before sufficient evidence
exists to support them.

Work will instead be maintained as an evolving project backlog.
Individual research, engineering, documentation, and testing activities
will be selected for successive sprints.

Sprint activities may include:

-   architecture and requirements review;
-   technical reading;
-   research and source evaluation;
-   sensor characterization;
-   experimental design;
-   hardware prototyping;
-   firmware or software development;
-   streaming-profile development;
-   data acquisition experiments;
-   persistence and replay experiments;
-   testing and measurement;
-   database and infrastructure evaluation;
-   documentation;
-   fabrication;
-   integration;
-   review of findings; and
-   backlog refinement.

Each sprint should begin with a defined research or engineering
objective and identify the artifacts, tests, evidence, or decisions
expected from the work.

At the conclusion of a sprint, results should be reviewed and used to
determine subsequent priorities. Tasks may be added, subdivided,
reprioritized, deferred, or removed when evidence demonstrates that a
different direction is warranted.

GitHub will serve as the principal environment for issues,
documentation, code, design materials, tests, and version history.

The purpose of the Agile process is not merely to complete tasks. It is
to **progressively reduce uncertainty while producing reusable
components of the SAR system**.

------------------------------------------------------------------------

## 5. Initial SAR Architecture and Requirements Review

Before establishing new hardware, database, logging, or acquisition
architecture, the existing SAR documentation and implementation should
be reviewed.

This investigation should identify existing requirements concerning:

-   SAR computational pipeline stages;
-   L0 Edge Capture and Transport;
-   L1 Ingest and Acquisition;
-   L2 normalization and local abstraction where relevant;
-   Shared Streaming Contract requirements;
-   modality profile requirements;
-   device, source, and ingest identity;
-   timestamps and synchronization;
-   run and session identity;
-   payload and reference policies;
-   raw evidence persistence;
-   logging;
-   storage;
-   replay;
-   provenance;
-   spatial metadata;
-   validation and conformance testing;
-   system observability; and
-   existing sensor implementations.

The result should be a concise **SAR Environmental Sensor Requirements
Summary** maintained within the repository.

Existing documentation should not automatically be assumed complete or
internally consistent. Questions, gaps, conflicts, and ambiguities
should be documented and converted into research questions or backlog
items rather than silently resolved.

------------------------------------------------------------------------

## 6. Required SAR Reading

The following repository materials constitute the initial core reading
set. Additional documents may be added as the project develops.

### 6.1 Sensor Documentation

1.  `docs/sensors/README.md`\
    Defines the scope and authoritative boundaries of the SAR sensor
    documentation track.

2.  `docs/sensors/SAR_Sensor_Inventory_and_Computational_Mapping_V1_2026-08-03.md`\
    Establishes the relationship among physical assets, computational
    source identities, modalities, ingest topology, profile documents,
    and validation status.

### 6.2 Computational Architecture

3.  `docs/computational/D00.02_SAR_Computational_Glossary_V1_2026-07-29.md`\
    Establishes shared SAR computational terminology.

4.  `docs/computational/D01.01_SAR_General_Computational_Pipeline_Spec_V1.1_2026-07-27.md`\
    Defines the general computational pipeline and the relationship
    among acquisition, normalization, integration, interpretation,
    decision, dispatch, and operational logging/replay.

5.  `docs/computational/D01.02_SAR_Shared_Streaming_Contract_V1_2026-07-29.md`\
    Defines the generalized frame contract, identity and timestamp
    policy, payload/reference policy, profile extension model, and
    conformance requirements.

6.  `docs/computational/D01.02.01_SAR_Audio_Streaming_Profile_V1_2026-07-29.md`\
    Provides the current reference example for extending the Shared
    Streaming Contract with modality-specific requirements.

7.  `docs/computational/D01.04_SAR_Run_and_Session_Identity_and_Boundary_Policy_V1_2026-07-28.md`\
    Defines run and session boundaries relevant to acquisition,
    persistence, testing, and replay.

8.  `docs/computational/D02.01_SAR_Computational_Class_and_Object_Model_V1_2026-07-27.md`\
    Defines computational objects and relationships relevant to sensor
    observations and provenance.

9.  `docs/computational/D03.01_SAR_Sensor_Intake_Document_Phase_1.md`\
    Defines the initial technical implementation model for sensor
    intake.

### 6.3 Implementation and Testing

10. `docs/computational/D04.01_SAR_Implementation_Baseline_Libraries_and_Tooling.md`\
    Establishes current implementation assumptions, libraries, and
    tooling.

11. `docs/computational/D04.02_SAR_Computational_Pipeline_Setup_Instructions_V1_2026-07-29.md`\
    Provides setup information required to work with the existing
    computational pipeline.

12. `docs/computational/D04.03_SAR_Computational_Task_Dependency_Test_and_Milestone_Map_V1_2026-08-03.md`\
    Identifies implementation dependencies, tests, and milestones
    relevant to integration.

This reading list is a starting point rather than a closed bibliography.

------------------------------------------------------------------------

## 7. Living Technical Reading List and Research Bibliography

Technical reading is an ongoing part of the engineering process rather
than a preliminary activity completed before development begins.

External reading should be selected according to active sprint
questions.

Initial research areas include:

-   Bosch BME680 technical documentation and datasheets;
-   environmental sensing principles;
-   temperature, humidity, pressure, and gas-resistance sensing;
-   environmental sensor calibration;
-   environmental sensor placement;
-   distributed environmental sensor arrays;
-   ESP32 and other candidate acquisition platforms;
-   I2C and related embedded communication;
-   wired and wireless sensor telemetry;
-   networked sensor architecture;
-   timestamping and clock synchronization;
-   time-series data;
-   persistence and database systems;
-   event and stream storage;
-   logging and replay architectures;
-   MQTT and other candidate transport mechanisms;
-   serialization and schemas;
-   provenance;
-   uncertainty and quality metadata;
-   enclosure design for environmental sensors;
-   power distribution;
-   Power over Ethernet where appropriate;
-   embedded deployment;
-   commissioning and validation; and
-   relevant scholarly literature on spatial environmental sensing.

Research should prioritize authoritative sources, including:

-   manufacturer documentation;
-   standards;
-   peer-reviewed literature;
-   established open-source projects;
-   official software documentation; and
-   technical documentation for systems under evaluation.

The purpose is not to accumulate references. A significant source should
help answer a project question, establish a requirement, identify an
existing solution, challenge an assumption, or support an engineering
decision.

A living bibliography should be maintained using the designated CHI/SAR
bibliographic workflow, including Zotero where appropriate. A
repository-facing reading list may also be maintained so future
technical collaborators can locate the most important sources without
reconstructing the research process.

------------------------------------------------------------------------

## 8. Environmental Sensor Characterization

The Bosch BME680 will serve as the initial environmental sensing
platform.

The sensor should first be investigated as an engineering component
before substantial system integration is undertaken.

Documentation should include, where applicable:

-   physical phenomena measured;
-   measurement ranges;
-   resolution;
-   accuracy and expected error;
-   sampling capabilities;
-   response time;
-   sensor latency;
-   stabilization and warm-up requirements;
-   calibration requirements;
-   communication interfaces;
-   electrical requirements;
-   power consumption;
-   operating limitations;
-   raw versus internally processed measurements;
-   expected payload sizes;
-   configuration options;
-   manufacturer libraries;
-   software dependencies; and
-   limitations relevant to SAR deployment.

Particular care should be taken to distinguish among:

-   sensor sampling rate;
-   communications latency;
-   computational latency;
-   acquisition interval; and
-   physical response time of the sensing mechanism.

These describe different characteristics and should not be represented
as a single measure of sensor "speed."

The result will be a version-controlled **BME680 Sensor Characterization
Document**.

------------------------------------------------------------------------

## 9. SAR Environmental Sensor Streaming Profile

A major deliverable will be a normative **SAR Environmental Sensor
Streaming Profile**.

The profile should extend the existing SAR Shared Streaming Contract
using the same architectural pattern demonstrated by the existing Audio
Streaming Profile.

The intended relationship is:

**SAR Shared Streaming Contract**\
→ **Environmental Sensor Streaming Profile**\
→ **Specific sensor implementation, initially BME680**

The BME680 should therefore test the environmental profile but should
not define it.

The profile should investigate and specify, as appropriate:

-   `source_node_id`;
-   `source_id`;
-   modality;
-   frame or sequence identity;
-   timestamps;
-   payload structure;
-   measurement/channel identity;
-   value;
-   units;
-   raw versus processed or derived state;
-   sample/acquisition interval;
-   sensor configuration;
-   calibration state;
-   location;
-   orientation where relevant;
-   measurement validity;
-   quality/confidence information;
-   stale or missing data;
-   device health;
-   firmware version;
-   hardware version;
-   configuration version; and
-   provenance for corrected, compensated, or derived observations.

The profile should explicitly distinguish among:

1.  the **physical device**;
2.  a **logical source stream**;
3.  an individual **measurement channel**; and
4.  an **observation**.

A single BME680 may, for example, provide several environmental
measurements. SAR must be able to treat those as distinct observations
while retaining their common provenance in a particular physical device
and acquisition event.

The profile should include conformance criteria that can eventually be
tested automatically.

Because `docs/sensors/README.md` assigns normative computational
contracts to `docs/computational/`, the final location and numbering of
this document should follow the existing computational-document
convention, provisionally:

`docs/computational/D01.02.xx_SAR_Environmental_Sensor_Streaming_Profile_...md`

The exact document number and filename should be assigned according to
repository governance.

------------------------------------------------------------------------

## 10. Prototype Environmental Sensor Node

Following initial characterization and profile development, a working
environmental sensor node will be constructed.

Development should progress through capability stages rather than
calendar weeks.

### Stage A --- Breadboard Proof of Concept

Establish basic communication with the sensor and demonstrate reliable
acquisition of measurements.

### Stage B --- Characterized Prototype

Measure actual acquisition behavior and compare it with documented
sensor capabilities.

### Stage C --- Contract-Conforming Prototype

Generate appropriately identified and timestamped observations
conforming to the SAR Shared Streaming Contract and Environmental Sensor
Streaming Profile.

### Stage D --- SAR-Connected Prototype

Transmit observations through the appropriate SAR L0/L1 acquisition
path.

### Stage E --- Replicable Node

Document the node sufficiently that another collaborator can construct
and configure a second unit without undocumented knowledge from the
original developer.

### Stage F --- Deployable Prototype

Investigate persistent installation requirements including enclosure,
mounting, connectors, power, cabling, communications, serviceability,
and replacement.

These stages are developmental rather than rigid. Later findings may
require revisiting earlier design decisions.

------------------------------------------------------------------------

## 11. Sensor Inventory and Computational Mapping

The existing SAR Sensor Inventory and Computational Mapping document
should be expanded as part of this work.

The environmental sensor implementation should receive, as appropriate:

-   stable Sensor UID;
-   asset mapping;
-   sensor label;
-   modality assignment;
-   `source_node_id`;
-   `source_id`;
-   `ingest_node_id`;
-   Environmental Sensor Streaming Profile reference;
-   contract status;
-   validation status; and
-   implementation notes.

The existing mapping policy should be preserved: physical asset
identifiers and computational identifiers serve related but different
functions and should not be conflated.

The environmental node should become a complete reference example of the
physical-to-computational mapping process.

------------------------------------------------------------------------

## 12. Data Acquisition, Persistence, Logging, and Database Research

The project will investigate the software and infrastructure required to
acquire and preserve SAR environmental streams.

This work should begin with the current SAR implementation rather than
with a generic search for a database.

The investigation should identify:

-   current raw-store abstractions;
-   current file-backed persistence mechanisms;
-   what is stored at L1;
-   what metadata accompanies stored evidence;
-   how persisted observations relate to runs and sessions;
-   current logging capabilities;
-   current replay capabilities;
-   expected future sensor volume;
-   expected query requirements;
-   retention requirements;
-   traceability requirements; and
-   gaps between the present prototype and a persistent multi-sensor SAR
    environment.

Only after these requirements are understood should candidate external
systems be evaluated.

The objective is explicitly **not to invent a new database or logging
system unless existing solutions demonstrably fail to satisfy SAR
requirements**.

Candidate technologies should be evaluated according to criteria such
as:

-   open-source/public availability;
-   licensing;
-   time-series support;
-   heterogeneous sensor data;
-   timestamp precision;
-   ingest performance;
-   metadata support;
-   query capability;
-   APIs and protocols;
-   visualization;
-   local/offline operation;
-   export;
-   data portability;
-   integration with SAR;
-   replay support;
-   deployment complexity;
-   maintenance burden;
-   scalability;
-   documentation;
-   community support; and
-   long-term sustainability.

The result should include a comparison matrix and recommendation or
recommendations supported by identified SAR requirements.

A valid research conclusion may be that different data classes require
different storage mechanisms.

------------------------------------------------------------------------

## 13. Logging and Replay

Logging should be treated as an experimental and operational capability
rather than merely archival record keeping.

Recorded environmental observations should eventually be usable for:

-   repeatable experiments;
-   debugging;
-   regression testing;
-   comparison of computational approaches;
-   algorithm development;
-   student experimentation;
-   demonstrations;
-   system evaluation; and
-   testing future SAR components against historical input.

A major acceptance question is:

> Can a recorded environmental stream be reintroduced through the
> controlled SAR intake path in a manner that allows downstream
> components to process it as a reproducible sensor input?

The project should investigate the distinction among:

-   original observation/event time;
-   source timestamp;
-   ingest time;
-   persistence time;
-   replay time; and
-   downstream processing time.

Replay should preserve provenance and make clear when data represents
historical rather than live observation.

------------------------------------------------------------------------

## 14. Sensor Arrays and Spatial Environmental Sensing

The project will investigate the implications of deploying multiple
environmental sensors within a room.

This should initially be treated as a research question rather than an
assumption that additional sensors necessarily provide proportionally
more information.

Questions include:

-   Which environmental phenomena vary meaningfully across the room?
-   What spatial separation among sensors is useful?
-   Can multiple sensors identify gradients rather than duplicate
    measurements?
-   Can propagation of environmental change provide spatial or temporal
    information?
-   How does airflow affect interpretation?
-   Can arrays identify localized environmental events?
-   How should sensor location be represented computationally?
-   What calibration differences occur among nominally identical
    sensors?
-   How should disagreement among sensors be represented?
-   How should uncertainty be represented?
-   At what point does additional sensor density cease to provide useful
    information?

Research should eventually lead to controlled experiments involving two
or more environmental sensor nodes.

------------------------------------------------------------------------

## 15. Multi-Sensor Nodes and Sensor Clusters

Environmental sensing should also be considered in relation to other SAR
sensing modalities.

The project should investigate whether multiple sensor types can
usefully be combined within a common physical node or cluster.

Potential shared infrastructure includes:

-   power;
-   networking;
-   local processing;
-   mounting;
-   enclosures;
-   connectors;
-   device identification; and
-   communications.

A universal all-sensors-in-one enclosure should not be assumed to be
desirable.

Different modalities may require different:

-   positions;
-   orientations;
-   airflow;
-   acoustic exposure;
-   optical fields of view;
-   vibration isolation;
-   thermal conditions; and
-   physical separation.

The longer-term goal should therefore be investigated as a **family of
interoperable SAR sensor modules** sharing appropriate mechanical,
electrical, communications, identity, and data conventions while
allowing each modality to be deployed according to its physical
requirements.

------------------------------------------------------------------------

## 16. Transmission, Power, Cabling, and Physical Infrastructure

The project should document the complete physical path required to
operate a sensor node.

Research should include:

-   controller or microcontroller requirements;
-   wired versus wireless communications;
-   cable types;
-   practical cable lengths;
-   connectors;
-   USB where applicable;
-   Ethernet where applicable;
-   Wi-Fi where applicable;
-   local DC power;
-   USB power;
-   Power over Ethernet where appropriate;
-   power distribution;
-   strain relief;
-   mounting;
-   serviceability;
-   device identification;
-   replacement procedures; and
-   persistent deployment within the SAR environment.

Choices should be evaluated according to reliability, maintainability,
scalability, cost, and suitability for research and persistent
installation.

------------------------------------------------------------------------

## 17. Prototype-to-Production Development

Breadboard construction is an appropriate starting point but is not the
intended endpoint.

As prototypes stabilize, the project should investigate migration toward
repeatable deployable devices.

This may include:

-   soldered prototypes;
-   standardized wiring;
-   printed circuit boards where justified;
-   standardized connectors;
-   fabricated mounting components;
-   3D-printed or otherwise fabricated enclosures;
-   ventilation;
-   cable management;
-   labeling;
-   serial/device identification;
-   firmware provisioning;
-   calibration procedures;
-   commissioning procedures;
-   test fixtures;
-   acceptance testing;
-   maintenance; and
-   repair or replacement procedures.

Enclosure design should be treated as part of sensor engineering. The
enclosure itself may change the phenomenon being measured through
restricted airflow, local heating, fabrication materials, adhesives,
electronic heat, or other effects.

Packaging should therefore be tested rather than treated as an aesthetic
final step.

------------------------------------------------------------------------

## 18. Bill of Materials

A developing **Bill of Materials (BOM)** should be maintained for each
significant prototype generation.

The BOM should include, as appropriate:

-   sensors;
-   microcontrollers;
-   development boards;
-   breakout boards;
-   circuit boards;
-   connectors;
-   cables;
-   power supplies;
-   networking components;
-   mounting hardware;
-   enclosure materials;
-   fabrication materials; and
-   other required components.

Costs and sourcing information should be recorded sufficiently to
estimate the cost of reproducing a node.

Where useful, separate BOMs should distinguish among:

-   experimental breadboard prototype;
-   reproducible research node; and
-   deployable SAR node.

------------------------------------------------------------------------

## 19. Expansion of the SAR Sensor Documentation Track

The existing `docs/sensors/` directory should become one of the
principal artifacts developed through this project.

The objective is not to duplicate normative computational
specifications. Instead, the sensor documentation should provide the
physical and engineering context required to connect sensing
technologies to those specifications.

The sensor documentation should evolve toward supporting at least four
related levels.

### 19.1 Sensor Modality

What category of physical phenomenon is being observed?

Examples may include environmental, acoustic, optical, ranging, motion,
presence, physiological, or other modalities.

### 19.2 Sensor Device

What particular device or sensing technology is being used?

Documentation should describe capabilities, limitations, interfaces,
timing behavior, physical requirements, calibration, and relevant source
documentation.

### 19.3 SAR Sensor Node

How is the sensing device incorporated into a functioning SAR node?

This includes controller, firmware, power, communications, wiring,
connectors, mounting, enclosure, identification, configuration, and
deployment.

### 19.4 SAR Computational Interface

How does the resulting observation enter SAR?

This section should reference rather than duplicate the applicable:

-   Shared Streaming Contract;
-   modality-specific Streaming Profile;
-   identity policies;
-   timing policies;
-   source mapping;
-   ingest topology;
-   logging requirements;
-   persistence requirements;
-   replay requirements; and
-   validation tests.

The BME680/environmental sensor project should become the first
substantial environmental reference implementation within this
structure.

------------------------------------------------------------------------

## 20. Documentation and Reproducibility

Documentation is a primary project deliverable.

Work should be maintained within the appropriate SAR GitHub repository
structure and should include, where applicable:

-   research notes;
-   source references;
-   datasheets;
-   diagrams;
-   wiring documentation;
-   software dependencies;
-   source code;
-   configuration files;
-   streaming-profile specifications;
-   persistence/database evaluations;
-   BOMs;
-   fabrication files;
-   test procedures;
-   photographs;
-   version information;
-   known problems;
-   design decisions;
-   rejected alternatives; and
-   unresolved questions.

Documentation should record not only **what was selected**, but where
useful **why it was selected and what alternatives were considered**.

A central reproducibility criterion is:

> Can another SAR collaborator construct, configure, connect, test, and
> replace the next sensor node using the repository documentation
> without requiring Jabber to be present?

------------------------------------------------------------------------

## 21. Initial Project Backlog / Deliverable Set

The following represents the initial backlog of major deliverables. It
is not a fixed chronological schedule.

1.  Complete required SAR architecture reading.
2.  Produce SAR Environmental Sensor Requirements Summary.
3.  Expand the SAR sensor-track documentation structure as appropriate.
4.  Produce BME680 Sensor Characterization Document.
5.  Draft SAR Environmental Sensor Streaming Profile, Version 0.x.
6.  Define initial environmental-profile conformance criteria.
7.  Construct functional BME680 breadboard prototype.
8.  Measure and document actual prototype acquisition behavior.
9.  Produce a Shared-Contract-conforming environmental stream.
10. Integrate the prototype with the appropriate SAR L0/L1 path.
11. Add the environmental sensor/node to the SAR Sensor Inventory and
    Computational Mapping.
12. Investigate current SAR persistence, RawStore, logging, and replay
    implementation.
13. Produce persistence/database requirements and gap analysis.
14. Research candidate existing storage/database/logging systems.
15. Produce technology comparison matrix.
16. Conduct initial persistence and replay experiment.
17. Research multi-node environmental sensing and sensor-array
    possibilities.
18. Design an initial multi-sensor environmental experiment.
19. Evaluate transmission, cabling, networking, and power alternatives.
20. Produce and maintain prototype BOM.
21. Investigate enclosure and mounting requirements.
22. Develop reproducible build/configuration documentation.
23. Prototype a deployable environmental sensor node when requirements
    are sufficiently stable.
24. Maintain a living technical reading list and bibliography.
25. Identify new backlog items arising from testing and research.

The backlog should be refined continuously as work proceeds.

------------------------------------------------------------------------

## 22. Initial Acceptance Criteria

The environmental sensor effort should ultimately demonstrate that:

1.  the sensor and its relevant physical behavior have been
    characterized;
2.  the node has stable computational identity;
3.  environmental observations conform to the SAR Shared Streaming
    Contract and approved Environmental Sensor Streaming Profile;
4.  the stream can enter the appropriate SAR ingest path;
5.  raw evidence and associated metadata can be persisted;
6.  provenance is retained;
7.  recorded observations can be retrieved and used for controlled
    replay;
8.  another collaborator can reproduce the node from repository
    documentation;
9.  the node can be mapped within the SAR Sensor Inventory;
10. physical deployment requirements are documented;
11. a BOM exists for reproduction; and
12. unresolved limitations and research questions are explicitly
    documented.

A particularly useful system-level test is:

> Can a BME680-based environmental node generate a standards-conforming
> SAR environmental stream, have that stream ingested and timestamped at
> L1, persist the relevant evidence without loss of provenance, replay
> the observations through a controlled SAR intake path, and later be
> replaced by another environmental sensor without requiring redesign of
> the general SAR pipeline?

------------------------------------------------------------------------

## 23. Project Boundaries

The initial project is principally concerned with:

-   sensing;
-   characterization;
-   acquisition;
-   representation;
-   transmission;
-   ingest;
-   persistence;
-   logging;
-   storage;
-   replay;
-   physical deployment; and
-   documentation.

It is not initially responsible for determining the higher-level
semantic meaning of environmental observations or deciding how SAR
should respond to them.

Those functions belong to later portions of the SAR computational
pipeline.

The environmental sensor system should nevertheless provide sufficient
identity, metadata, provenance, timing, location, quality, and
uncertainty information to make later interpretation possible.

The project should also avoid creating new databases, protocols,
hardware architectures, or software systems merely for the sake of
creating them. Existing public, open-source, academic, standards-based,
and commercial solutions should first be investigated.

New development is appropriate when it fills a demonstrated SAR
requirement that existing solutions cannot adequately satisfy.

------------------------------------------------------------------------

## 24. Research and Engineering Principle

Work should generally follow an iterative cycle:

**Investigate → Specify → Prototype → Measure → Test → Document →
Evaluate → Revise**

Unexpected results, unsuccessful prototypes, unsuitable technologies,
contradictory documentation, and identified limitations are legitimate
research outcomes when they are properly tested and documented.

The project is successful not when every initial assumption is
confirmed, but when uncertainty is converted into evidence,
specifications, reproducible implementations, and better-defined next
questions.

------------------------------------------------------------------------

## 25. Longer-Term Direction

The BME680 environmental node is intended to become one member of a
growing family of SAR sensing systems.

Future work may extend the architecture to additional environmental
sensors and to other modalities such as:

-   distance and depth sensing;
-   mmWave sensing;
-   acoustic sensing;
-   RGB and infrared imaging;
-   occupancy and presence sensing;
-   physiological sensing; and
-   other forms of physical observation.

The longer-term objective is not simply to accumulate sensors.

It is to develop a modular sensing infrastructure through which SAR can
combine observations made by different systems, preserve their
provenance and uncertainty, and make them available to progressively
higher levels of computational correlation and interpretation.

The environmental sensor project therefore serves as both a practical
engineering effort and an early reference implementation of the larger
SAR sensing architecture.

------------------------------------------------------------------------

## 26. Living Scope of Work

This document should be treated as a living Scope of Work.

The initial backlog establishes a direction for investigation rather
than prescribing conclusions in advance. As repository documentation is
reconciled, sensor behavior is measured, acquisition and persistence
technologies are evaluated, and prototypes are integrated with SAR, this
Scope of Work should be revised.

Part of the responsibility of the project is therefore to identify where
this framework is incomplete and recommend what subsequent versions
should contain.

Version changes should be preserved through Git history so that the
evolution of the project requirements remains visible and auditable.
