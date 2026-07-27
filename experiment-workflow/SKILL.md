---
name: experiment-workflow
description: Canonical Experiment & Testing Workflow. Use to rigorously evaluate systems by isolating variables, unit-testing, and running 3x10 query stress-tests.
---

# 1. Introduction: What is this?
A comprehensive, canonical testing workflow—for any system where precision is required. The goal is to RIGOROUSLY evaluate systems by isolating variables (ablation studies), integration, regression, unit-tests, and presenting raw metrics without black-box assumptions.

# 2. Core Principles

- **Variable Isolation:** Test one specific condition at a time (e.g., one file format like `.pdf`, one document size, or one specific chunking strategy).
- **The Engine (THE AI) and the Architect (THE USER):** The agent acts purely as an instrument of the architect's will. It drafts tests and executes commands, but halts at every critical junction for the creator to evaluate and steer.

# 3. Experiment Structure (The Blueprint)
Every experiment logged or run using this workflow MUST include the following components:

## A. Objectives (The Questions We Want Answers To)
Before running tests, the user must clearly define the exact hypothesis or goal, the questions they want answered, and whether the experiments can actually answer them.
Test no 1: This is an example of one of the RAG experiments in which we aimed to test each file separately.
- Does the system handle academic documents better than narrative books?
- At what document length does context retrieval begin to degrade?
- Does altering the chunk size from improve semantic matching without losing keyword precision?

## B. The Source Material
Test no 1:
- Define the exact absolute path to the test file(s).
- Note the file type, total size/pages, and the underlying parsing logic (e.g., Jupyter cell parser vs. Recursive Character Splitter).

## C. The Queries (The 3x10)
Test no 1:
For a standard test on medium-to-large documents, draft 30 queries designed to stress-test different mechanisms. (Scale to 3x5 for shorter docs).
- **10 Semantic Queries:** Abstract, thematic, and conceptual questions. Tests the embedding model's deep contextual understanding.
- **10 Keyword Queries:** Specific names, dates, math, and hard facts. Tests the exact-match (e.g., BM25) retrieval.
- **10 Hybrid Queries:** Context combined with specific details. Tests the fusion/reranking mechanisms.
*The creator must review and approve these queries before execution.*

## D. Execution & Raw Metrics Logging
Test no 1:
The agent executes the approved queries and logs the raw data. No assumptions are made. The log must include:
- Warm-up/Model loading time.
- Total chunks generated from the document.
- Token/Word/Character limit per chunk.
- The specific chunks retrieved for each query.
- Speed of retrieval.

## E. Evaluation & Tuning Directives
Test no 1:
The creator evaluates the raw data and provides the next directive. 
