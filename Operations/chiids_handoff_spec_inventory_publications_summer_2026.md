# CHIIDS Handoff Spec
## Inventory and Publication Links (Summer 2026)

Prepared: 2026-07-14

## Purpose

Define exactly how CHI-StudentResearch operational capture files are deployed into CHIIDS as linked records, and how publication candidates are tracked for CUNY Academic Works.

## Scope

This handoff covers two capture sources:

1. Inventory flat file
- `Operations/chi_summer_2026_master_inventory_flatfile_template.csv`

2. Wall artifact catalog
- `Operations/chi_summer_2026_wall_artifact_catalog_template.csv`

## Cross-Repo Pattern

1. Capture happens in CHI-StudentResearch.
2. Curated/validated records are deployed to CHIIDS as linked documents/records.
3. Publication candidates are flagged in CHIIDS and exported to a CUNY Academic Works submission list.

## Record Types in CHIIDS

### A. InventoryRecord

Required fields:

1. source_id
2. item_name
3. category
4. subsystem
5. location_current
6. operational_status
7. steward
8. evidence_link
9. source_repo_path
10. intake_status

### B. WallArtifactRecord

Required fields:

1. source_id
2. artifact_title
3. artifact_class
4. location_current
5. disposition_status
6. destination_location
7. steward
8. evidence_link
9. publication_candidate
10. rights_status
11. source_repo_path
12. intake_status

## Link Strategy

Every CHIIDS record should include a canonical link back to source material in CHI-StudentResearch.

Required link targets:

1. Source row origin file path
2. Primary photo/evidence file path
3. Related issue URL (if available)

## Intake Status Vocabulary

Use this shared status set in both repos:

1. queued
2. ingested
3. verified
4. deferred
5. rejected

## Publication Candidate Workflow

1. Mark candidate in capture row (`publication_candidate=yes`).
2. Validate rights and attribution (`rights_status=clear`).
3. Create CHIIDS publication candidate record.
4. Add to CUNY Academic Works export list with required metadata.
5. Mark disposition outcome:
- submitted
- accepted
- deferred

## Weekly Reconciliation Procedure

1. Review changed inventory and wall-artifact rows in CHI-StudentResearch.
2. Deploy new/changed records into CHIIDS.
3. Update `chiids_status` / `intake_status` in source rows.
4. Generate publication-candidate delta list.
5. Post summary in weekly CHIIDS intake issue.

## Ownership

1. Operations steward (StudentResearch): maintains source capture quality.
2. CHIIDS steward: validates and ingests records.
3. Publication steward: curates CUNY Academic Works candidate list.

## Deliverables

1. Weekly CHIIDS intake summary note.
2. Updated CHIIDS record counts by type.
3. Publication candidate register for CUNY Academic Works.
4. Exception list (missing evidence, unclear rights, duplicate IDs).
