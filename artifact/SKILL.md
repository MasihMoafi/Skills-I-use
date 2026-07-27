---
name: artifact
description: Handling rules for visual and document artifacts — PDFs, HTML reports, dashboards, slides, LaTeX/XeLaTeX documents, and formula rendering. Load when creating, editing, verifying, or opening any of these artifact types.
---

# Artifact

Rules for producing, verifying, and opening visual and document artifacts. Always load `ARTIFACT_RULES.md` from this skill directory.

## Files in this skill

- **`ARTIFACT_RULES.md`** — the full ruleset: PDF inspection workflow, HTML verifiability and opening protocol, HTML slide/PDF layout lessons, XeLaTeX bilingual (Farsi/English) typesetting lessons, and MathML formula rendering harness.

## Load triggers

Load this skill when the task involves:
- Creating or editing PDFs, DOCX, LaTeX/XeLaTeX documents
- HTML reports, prototypes, dashboards, slides, or demos
- Mathematical formula rendering (MathML, MathJax, KaTeX, Pandoc)
- Opening or verifying any visual artifact for the user
