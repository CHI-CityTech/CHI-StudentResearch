# CHIIDS Media Logging Workflow (Summer 2026)

Prepared: 2026-07-14

## Purpose

Define where photo/video media should live and how activity logging connects Dropbox, Documentary, and CHIIDS without duplicating large files in multiple repos.

## Storage Architecture (Three-Tier)

1. Primary media storage (source of truth): Dropbox.
2. Curated media and editorial packages: Documentary repository.
3. Index and governance records: CHIIDS and CHI-StudentResearch operations logs.

## Why this split

1. Dropbox handles high-volume raw files efficiently.
2. Documentary repo tracks curated outputs and editorial progression.
3. CHIIDS holds durable metadata, workflow status, and publication routing state.

## Workcell C: Photo-Documentation and Activity Logging

Scope:

1. Capture daily activity photos/videos and key process moments.
2. Log who, what, where, and when for each capture session.
3. Maintain a media manifest with stable IDs and links.
4. Promote selected assets to Documentary repo as curated sets.
5. Mark publication candidates and rights status for downstream use.

## Required Metadata for Every Media Item

1. media_id
2. capture_date
3. captured_by
4. activity_context
5. location
6. participants
7. source_path_dropbox
8. documentary_ref (optional until promoted)
9. chiids_status
10. publication_candidate
11. rights_status
12. notes

## Naming Convention

1. Photos: CHI-MEDIA-YYYYMMDD-xxxx.jpg
2. Videos: CHI-MEDIA-YYYYMMDD-xxxx.mp4
3. Session manifest: CHI-MEDIA-SESSION-YYYYMMDD.csv

## Weekly Intake Flow

1. Capture media in field and upload raw assets to Dropbox.
2. Update media manifest in CHI-StudentResearch Operations.
3. Reconcile manifest rows to CHIIDS status fields.
4. Promote selected media sets to Documentary repo.
5. Flag publication-ready items for CUNY Academic Works review.

## Minimum Folder Strategy

Dropbox (raw media):

1. /CHI/Summer-2026/Media/Raw/YYYY-MM-DD/
2. /CHI/Summer-2026/Media/Processed/YYYY-MM-DD/
3. /CHI/Summer-2026/Media/Exports/

Documentary repo (curated):

1. /logs/media_sessions/
2. /edits/curated_sets/
3. /publications/candidates/

## Governance Rule

Do not duplicate all raw files into Git repositories.

Store raw media in Dropbox and keep only:

1. manifests,
2. derivative low-weight references,
3. curated editorial outputs,
4. and metadata links in repos.

## Immediate Actions

1. Assign Workcell C leads for Summer 2026.
2. Confirm Dropbox root path and access for team members.
3. Start first media session manifest for launch-week activities.
4. Open a weekly CHIIDS media logging issue using the team template.
