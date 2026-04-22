# CHI Agentic Onboarding & Project Mediation Module (AOPMM)

**Date:** 2026-04-14  
**Target Student:** Kazi Tamim (CST)

## Overview

The CHI Agentic Onboarding & Project Mediation Module (AOPMM) is a subsystem within the BBS-Personal-LLM initiative. It serves as the primary mediation layer between incoming students and the CHI ecosystem, transforming unstructured conversational input into structured, actionable representations that enable project alignment, contribution pathways, and system integration.

Rather than functioning as a simple intake tool, this module operationalizes a core CHI principle: students are not placed into projects, but are co-positioned within an evolving system of interdisciplinary collaboration. The module is designed to operate locally where possible, leveraging lightweight agentic architectures aligned with privacy-by-design principles.

## Conceptual Framework

At an abstract level, the system converts identity into participation through a staged transformation:

- Identity → Intent → Capability → Opportunity

At an operational level, the system:

- Accepts conversational input from the student
- Extracts structured signals (skills, interests, goals, constraints)
- Maps these signals onto a CHI-aligned ontology
- Generates project matches and/or new project pathways
- Produces outputs suitable for both human discussion and system integration

## System Architecture

The module is designed as a set of bounded, composable micro-agents that can operate locally using lightweight models.

### 1. Intake Agent (Conversational Layer)
Handles dialogue with the student and captures raw input signals. The interaction model is hybrid: conversational exploration followed by progressive structuring.

### 2. Profiling Agent (Structuring Layer)
Transforms conversational data into a formal schema, including:

- Declared and inferred skills
- Explicit and latent interests
- Intent (e.g., learning, building, research)
- Constraints (time, experience level)

### 3. Ontology Mapping Agent
Maps structured profiles to a CHI taxonomy. Supports fuzzy alignment and evolving category definitions.

### 4. Matching Agent
Queries the project database to identify:

- Direct matches
- Adjacent opportunities
- Gaps (no existing match)

This stage formalizes the current human matching role into a reproducible system.

### 5. Synthesis Agent
Generates:

- Narrative pathways explaining alignment
- Optional new project proposals when gaps are identified

### 6. Human-in-the-Loop Layer
Faculty and advanced student researchers validate outputs, providing feedback that feeds iterative system improvement.

## Project Stages and Deliverables

### Stage 1: Ontology and Schema Definition

Define the minimum viable structures required for system operation.

Deliverables:

- Student profile schema (JSON)
- Project metadata schema (JSON)
- Initial CHI ontology (v0.1)
- Example mappings between students and projects

### Stage 2: Conversational Intake System

Develop the intake agent with a hybrid interaction model.

Deliverables:

- Prompt library for onboarding dialogue
- Conversation flow design
- Prototype interface (CLI or web-based)
- Transcript dataset for evaluation

### Stage 3: Profiling and Structuring Layer

Implement extraction and structuring of conversational data.

Deliverables:

- Profile generation module
- Structured output formats (JSON)
- Evaluation rubric for extraction accuracy

### Stage 4: Matching Engine

Develop core matching logic between profiles and projects.

Deliverables:

- Matching algorithm (baseline similarity + rule-based refinement)
- Ranked project outputs with explanations
- Decision logging system

### Stage 5: Pathway Generation and Project Seeding

Extend beyond matching to generative contribution pathways.

Deliverables:

- Narrative pathway templates
- Project seed generation framework
- Validated examples of generated project proposals

### Stage 6: Integration with CHI2DS

Ensure persistence and system-wide accessibility of outputs.

Deliverables:

- Storage interface (API or local system)
- Integration specification with CHI2DS components
- Data flow documentation

### Stage 7: Evaluation, Ethics, and Iteration

Establish continuous improvement and governance.

Deliverables:

- Evaluation dashboard
- Metrics framework (placement success, engagement, retention)
- Bias and fairness audit documentation
- Transparency and explainability layer

## System Outputs

Each onboarding interaction produces:

1. Structured student profile (machine-readable)
2. Ranked list of project matches
3. Narrative pathway explanation
4. Optional new project proposal
5. Exportable artifact for human review and discussion

## Research Dimensions

This module supports multiple research trajectories:

- Agentic onboarding vs. traditional advising systems
- Hybrid conversational-structured user modeling
- Local-first personalized LLM architectures
- AI-mediated participation in interdisciplinary meta-projects

## Risks and Design Considerations

Key tensions and risks include:

- Overfitting to existing project inventory
- Balancing conversational flexibility with structured output
- Ontology drift over time
- Limitations of local models in reasoning and hallucination control

These risks are mitigated through hybrid system design, human-in-the-loop validation, and iterative refinement.

## Minimal Pilot Implementation

A pilot phase is recommended with constrained scope:

- 10 students
- 10–15 projects
- Single local model deployment
- Manual validation loop

The primary evaluation goal is to determine whether the system improves alignment quality compared to human-only onboarding.

## Positioning within BBS-Personal-LLM

This module functions as a foundational component of the broader personalized LLM system, providing structured user modeling and mediation capabilities that can be reused across domains including education, research collaboration, and BRPS environments.

