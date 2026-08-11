# CHIIDS Integration Workflow (Summer 2026)

Prepared: 2026-07-14

## Recommendation

Yes: bring CHIIDS into the working environment now, but do it as an integration target rather than moving all operational editing into CHIIDS immediately.

Implementation reference: `Operations/chiids_handoff_spec_inventory_publications_summer_2026.md`.

Use a two-lane model:

1. Lane A (active operations now): CHI-StudentResearch remains the day-to-day capture workspace for launch tasks, inventory, and wall-artifact intake.
2. Lane B (structured deployment): CHIIDS receives validated records through scheduled intake passes.

Media note: raw media is captured and stored in Dropbox, curated sets are managed in Documentary, and CHIIDS stores metadata/index state.

This prevents launch-week slowdown while still building CHIIDS as the system of record.

## Deployment Model

### Phase 1: Stabilize Capture in CHI-StudentResearch

1. Use the flat-file templates already created in Operations for inventory and wall artifacts.
2. Enforce stable IDs from day one:

	- inventory IDs: CHI-INV-xxxx
	- wall-artifact IDs: CHI-WALL-xxxx

3. Require evidence links (photos, notes, destination decisions).
4. Track steward and update timestamp for every modified row.

### Phase 2: Add CHIIDS Intake Task and Cadence

1. Create one standing issue: CHIIDS Intake and Reconciliation (Summer 2026).
2. Run intake at a fixed cadence (recommended weekly, e.g., Friday 4 PM).
3. During each intake:

	- validate new/changed rows
	- map rows to CHIIDS entity fields
	- mark intake status (queued, ingested, verified)

4. Record ingestion outcome back in the source spreadsheet row.

### Phase 3: Promote CHIIDS to Primary System of Record

Promote when all are true:

1. Entity schema for inventory and wall artifacts is stable.
2. Required metadata is consistently available.
3. Team can query and update CHIIDS records reliably.
4. Reconciliation error rate is low for at least two cycles.

After promotion:

1. Keep flat files as field-capture forms only.
2. Treat CHIIDS IDs as canonical cross-reference IDs.
3. Continue publishing selected outputs to CUNY Academic Works from curated CHIIDS records.

## Where CHIIDS Should Sit in This Repo Workflow

1. Keep planning and capture instructions in Operations.
2. Keep source capture files in Operations.
3. Add CHIIDS deployment status fields in capture templates.
4. Track CHIIDS intake via a dedicated issue in Project 34 or a CHIIDS project board.

## Minimum Shared Field Set (for smooth migration)

Use these fields in both spreadsheets and CHIIDS entities:

1. source_id
2. title_or_name
3. class_or_category
4. location_current
5. disposition_status
6. steward
7. capture_date
8. last_verified_date
9. evidence_link
10. chiids_status
11. publication_candidate
12. rights_status

## Immediate Actions (This Week)

1. Keep using CHI-StudentResearch templates for active room cleanup capture.
2. Open the standing CHIIDS intake issue and assign a weekly steward.
3. Add chiids_status column updates as part of weekly review.
4. Nominate publication-ready artifacts separately for CUNY Academic Works.
5. Start media session logging using `Operations/chiids_media_logging_workflow_summer_2026.md`.
