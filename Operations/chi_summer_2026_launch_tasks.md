# CHI Summer 2026 Launch Tasks
## First-Day Tasks and Initial Tasks

**Purpose:** This document separates the immediate launch-day work from the broader initial task phase for the Summer 2026 CHI cohort. It is intended to support operational startup rather than replace the larger conceptual SoW or the broader task matrix.

## 1. Framing

The launch period should be understood in two layers.

The **first day** is about orientation, confirmation, and activation. It should establish who is present, what is physically available, how the room is currently configured, how the team will communicate, and what the first attempted deliverables are.

The broader **initial task phase** extends beyond the first day. It includes the first round of room cleanup, task formalization, repository setup, workspace allocation, infrastructure planning, subsystem tests, and researcher-specific proposals.

This distinction is important because not everything that must happen early can or should happen on day one.

## 2. Week 0 Tasks (Pre-Launch Individual Meetings)

Before the cohort launch day, Week 0 should be used for short individual meetings with each fellow after document review.

### 2.1 Week 0 Document Review Requirement

Before their individual meeting, each fellow should review:

1. Student onboarding guidance.
2. Summer 2026 operations SoW.
3. Summer 2026 launch tasks and task matrix.
4. Their own current proposal/source document in the Summer 2026 proposal folder.

### 2.2 Week 0 Individual Meeting Outcomes

Each individual meeting should confirm:

1. student-specific objectives and expected deliverables;
2. expected technical/documentation standards;
3. contribution modality (physical, virtual, media, semantic, administrative, or hybrid);
4. expected weekly hourly commitment and degree of effort;
5. one required July baseline contribution and one August extension direction.

### 2.3 Week 0 Deliverables

By the end of Week 0, the project should have:

- a current participant roster with role notes;
- a per-student commitment estimate;
- initial dependency and support needs per student;
- a first-pass mapping of each student to project workstreams;
- clear identification of students with missing source proposal documents.

## 3. First-Day Tasks

### 3.1 Cohort Launch and Orientation

1. Convene the cohort in LG-038 on Monday, July 13, 2026 at 10:00 a.m.
2. Introduce the summer project as a coordinated CHI environment rather than a set of unrelated projects.
3. Have each participant introduce themselves, their principal role, and what they believe they are there to do.
4. Announce the attempted summer deliverables at a high level so the cohort shares a common target.

### 3.2 Room Walk-Through and Situation Assessment

1. Walk the room and identify the main current zones.
2. Review the existing conceptual room layout already established in the architectural material.
3. Identify what existing temporary charts, wall task lists, notes, and informal planning materials remain in the room.
4. Flag those legacy materials for removal, capture, and formalization.
5. Identify where active clutter, obsolete materials, or unclear room ownership may interfere with productive work.

### 3.3 Inventory Confirmation

1. Confirm what major materials and systems are physically present.
2. Identify what may still need to be received or transferred from Entertainment Technology labs or elsewhere.
3. Confirm the first cabinet as the T-slot and older-material storage location.
4. Note major subsystems by category: triptych/8020, projection, immersive audio, distributed audio, sensing/computation, documentation/media.

### 3.4 GitHub and Communication Activation

1. Confirm or create the central GitHub environment for the summer.
2. Add researchers to existing repositories where appropriate.
3. Create new repositories where needed.
4. Begin identifying repository cleanup needs.
5. Confirm or create the summer CHI Discord server.
6. Clarify how the summer Discord relates to the broader CHI communication structure.

### 3.5 Immediate Documentation Capture

1. Photograph the room in its starting condition.
2. Capture the existing wall charts and task lists before removing them.
3. Start a launch-day log in GitHub or another agreed documentation space.
4. Record what is known, what is missing, and what remains uncertain.

### 3.6 First-Day Deliverables

By the end of the first day, the team should attempt to leave with the following:

- a confirmed participant roll and role awareness;
- a first-pass inventory snapshot;
- captured legacy wall/task materials ready for formalization;
- GitHub access established or underway for all participants;
- Discord environment established or confirmed;
- a first shared understanding of room zones and constraints;
- a list of unresolved questions requiring action in the initial task phase.

## 4. Initial Tasks (Beyond the First Day)

### 4.0 Week 1 Required Task for All Students

For all students who are not yet represented by an active project card, the first required task is onboarding completion.

1. Complete GitHub onboarding and verify repository access.
2. Confirm Discord onboarding and workstream-channel access.
3. Confirm role, commitment estimate, and first attempted deliverable in writing.
4. Submit or confirm source proposal/SoW intake status.
5. Acknowledge Week 1 inventory and room-readiness responsibilities.

No Week 1 specialization task should start until this onboarding checklist is complete.

### 4.1 Room Cleanup and Formalization

1. Remove temporary or outdated wall charts, informal task lists, and other legacy planning artifacts after they have been captured.
2. Convert those materials into formal tracked documents, repository tasks, or diagrams.
3. Sort visible clutter, loose materials, and obsolete room contents.
4. Identify what should remain accessible, what should go into cabinet or shelf storage, and what should be relocated.

### 4.1a Inventory Consolidation (Week 1 Priority)

1. Capture all existing and newly received equipment in one shared master inventory flat file.
2. Use one row per item or item-set with stable IDs so entries can later migrate to database form without re-entry.
3. Track ownership/source state (existing CHI, new purchase, transfer, borrowed, unknown).
4. Track location state (room zone, cabinet/shelf/bin, temporary staging, off-site).
5. Track operational state (installed, available, needs test, repair needed, missing component).
6. Require photo evidence for non-trivial equipment rows where feasible.
7. Add weekly update timestamps and responsible student name for each modified row.

Initial system: spreadsheet/flat file.

Starter template: `Operations/chi_summer_2026_master_inventory_flatfile_template.csv`.

Planned migration path: CHIIDS inventory entities once schema and ingestion are stable.

Working principle: define spreadsheet columns now to match likely CHIIDS fields later.

### 4.1b Wall Artifact Capture, Catalog, and Disposition

All current wall items, legacy charts, posters, and process artifacts should be treated as recoverable project outputs before removal.

1. Photograph every wall item in place before movement.
2. Assign an artifact ID and create a catalog row for each item.
3. Record item class (task chart, systems diagram, poster, schedule, performance note, media reference, other).
4. Record disposition decision for each item: keep in room, move to main foyer, archive in storage, or retire.
5. Record physical destination and custodian for moved/stored items.
6. Store cleaned digital captures in a stable repository folder with ID-matched filenames.
7. Link each catalog row to image path(s), destination, and decision date.
8. Acquire a pristine digital source version where possible (PDF, DOCX, AI, INDD, SVG, or other editable source).
9. Record digital source format, storage path, and source owner/custodian in the catalog row.

Starter template: `Operations/chi_summer_2026_wall_artifact_catalog_template.csv`.

### 4.1c Output Storage and Publication Triage

Room-cleanup outputs should be managed in three tiers.

1. Operational record (required): keep full capture and catalog materials in CHI repositories and CHIIDS-linked inventory/task records.
2. Curated public output (selective): nominate completed, context-ready artifacts for CUNY Academic Works as publications/outputs.
3. Deferred/working artifacts: keep in CHI internal archive until metadata and rights are clear.

Publication hierarchy requirement:

1. Collect physical capture + digital source acquisition first.
2. Validate rights and metadata completeness.
3. Queue eligible artifacts for CUNY Academic Works upload.
4. Track upload status and record URL in the wall artifact catalog.

Publication decision rule:

- Add to CHIIDS when the item supports operational memory, system history, inventory, or project traceability.
- Add to CUNY Academic Works when the item qualifies as shareable scholarly/creative output with attribution, date, and rights clarity.

Action item: create a CHIIDS task for "Wall Artifact Intake and Publication Triage" to track conversion from room captures to structured records.

Integration reference: `Operations/chiids_integration_workflow_summer_2026.md`.

Handoff reference: `Operations/chiids_handoff_spec_inventory_publications_summer_2026.md`.

Team/workcell reference: `Operations/chiids_team_workcells_summer_2026.md`.

### 4.2 Storage, Shelving, and Workspace Allocation

1. Perform a shelving and storage-box count.
2. Determine current storage capacity and what it is already holding.
3. Allocate on-site workspace zones for fabrication, programming, editing, writing, audio work, projection testing, and documentation.
4. Determine where temporary versus persistent workstations should reside.
5. Identify whether any spaces must remain flexible for changing room configurations.

### 4.3 Cabinet and Furniture Tasks

1. Confirm the organization of the first cabinet as the T-slot and older-material cabinet.
2. Construct the second cabinet.
3. Determine the intended role of the second cabinet.
4. Draft a cabinet/storage allocation diagram.
5. Identify any shelves, tables, or furniture that must be moved or repurposed.

### 4.4 Repository Creation, Cleanup, and Access

1. Create required repositories for summer workstreams.
2. Add participants to existing repositories where appropriate.
3. Clean up repository duplication, stale folders, unclear naming, and legacy material where feasible.
4. Establish naming conventions, issue logic, and minimum documentation standards.
5. Create a task-tracking structure that researchers can actually use.

### 4.5 Room Systems Chart

1. Develop the first operational room systems chart using the conceptual architectural layout as a baseline.
2. Show where cabinets, compute systems, racks, projector zones, speaker zones, interfaces, shelves, and work areas are expected to reside.
3. Identify internet/network locations, local technical-spine assumptions, and likely cable paths.
4. Use the chart to distinguish student-installed systems from infrastructure requiring IT, B&G, or architectural coordination.

### 4.6 Infrastructure Coordination Documents

1. Draft a B&G-facing document describing room/infrastructure requirements.
2. Draft an IT-facing document describing network and systems requirements.
3. Coordinate requests involving room architecture and infrastructure through Mariano Almedy where appropriate.
4. Separate student-build tasks from campus-supported infrastructure tasks.

### 4.7 Initial Technical Priorities

1. Confirm the first triptych build plan.
2. Confirm hinge assumptions and whether additional hinges may later be needed.
3. Confirm initial projector assignments and first visual tests.
4. Confirm the immersive-audio installation and calibration path.
5. Confirm first routing assumptions for the distributed Anchor speaker field.
6. Confirm likely compute, rack, and interface locations.

### 4.8 Researcher-Specific Task Proposals and Commitment Profiles

Each participant should submit an initial project-specific task note that includes:

1. Their first concrete tasks.
2. Their dependencies.
3. Their materials/software/access needs.
4. Their first attempted deliverables.
5. What they will document from the start.
6. Their weekly commitment estimate confirmed in Week 0.
7. How their work contributes to the July baseline system target.

### 4.9 Narrative and Worldbuilding Coordination

Because summer work includes narrative projects as well as technical infrastructure, narrative-track work should be treated as a parallel workstream, not as optional overflow.

1. Identify narrative-track participants and confirm their first deliverables.
2. Align narrative outputs with BSP performance logic, media capture, and projection tests.
3. Define repository locations and naming conventions for scripts, worldbuilding notes, and narrative assets.
4. Confirm how narrative deliverables connect to July baseline demonstrations and August experimentation.

## 5. First Researcher-Specific Starting Tasks

### Gabriel Aguilar
- Draft a first control-pathway diagram for QLab, TouchDesigner, projection, audio, and sensors.
- Identify realistic first communication tests.
- Help define physical location needs for control systems and operator workflow.

### Manny Aponte
- Review CHI/BSP video assets relevant to summer work.
- Propose a capture and editorial strategy for summer documentation.
- Help define how ongoing activity should be documented from the start.

### Samuel Cheung
- Identify immediate textile/material tests relevant to the first triptych and BSP use.
- Review alpha-mask and virtual-layer assumptions.
- Coordinate with Tshari on performative requirements affecting surfaces and materials.

### Evengelina Chauhan
- Review archival/process media and identify workflow priorities.
- Propose first post-production structure for summer assets.
- Coordinate with Manny on division of labor and documentation logic.

### Sunima Dangol
- Identify candidate syntactic inputs from room systems for later semantic work.
- Draft a first semantic-pathway outline.
- Identify what should be logged from early system tests.

### Kazi Islam
- Clarify which AI/LLM tasks are useful in the opening phase.
- Identify where AI may support documentation, semantic classification, or tooling.
- Coordinate with Sunima and Tasin on division of labor.

### Isaiah Martinez
- Review the current twin against the earlier structure state.
- Identify updates required for the extended-height triptych system.
- Determine what new measurements or layout clarifications are needed.

### Paul Mizetskyi
- Restate his prototype direction in concise CHI terms.
- Identify overlap with Noel and broader interactive-systems work.
- Clarify connection points to the NSF/IUSE concept where relevant.

### Noel Nova
- Clarify immediate narrative/worldbuilding priorities.
- Identify what materials should enter the repository first.
- Coordinate with BSP participants so narrative work tracks performance/material development.

### Narrative-Track Coordination (Cross-Student)
- Establish shared narrative terminology and asset conventions across story, script, and performance documentation.
- Coordinate narrative priorities among Noel, Tshari, Manny, and relevant BSP collaborators.
- Ensure narrative deliverables are represented in weekly task tracking alongside technical work.

### Kazi Tasin
- Review current sensor/integration assumptions.
- Draft a first hardware/software integration checklist.
- Identify which physical zones may support technical-spine or interface work.

### Eric White
- Verify immersive-audio inventory and mounting status.
- Confirm the first Atmos installation and calibration tasks.
- Draft a first routing logic for the Anchor distributed field and identify equipment/workstation needs.

### Tshari Yancey
- Present current BSP script and performative priorities.
- Help define what the first triptych must support as a performative object.
- Participate in opening planning for triptych assembly and evaluation.

## 6. Initial Task-Phase Deliverables

The initial task phase should aim to produce:

- confirmed inventory snapshot;
- master inventory flat file with stable item IDs and status fields;
- captured and formalized legacy room task materials;
- wall artifact catalog with disposition status (keep, foyer, archive, retire);
- digital photo archive with ID-linked filenames for all wall items and posters;
- digital source acquisition set (PDF/DOCX/AI/etc.) where available, linked by artifact ID;
- CUNY Academic Works upload queue/status list with record URLs for published items;
- CHIIDS intake task for wall artifacts and publication-triage status;
- shelving/storage-box count;
- workspace-allocation sketch;
- cabinet-allocation sketch;
- active GitHub repositories with participant access;
- Discord workstream environment;
- first room systems chart draft;
- first triptych build plan;
- first audio system status report;
- first projection test plan;
- first round of researcher-specific task proposals.
- narrative/worldbuilding starter package linked to active BSP and media work.

## 7. Working Note

This document is intentionally more operational than the conceptual SoW but still precedes a full engineering schedule. It should be revised quickly once the room, inventory, and researcher proposals are confirmed in practice.

