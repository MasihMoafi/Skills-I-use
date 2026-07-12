
#Global Frontend Architecture & Style Guidelines

This document outlines the strict structural patterns, global styling rules, and engineering guidelines required to maintain a cohesive, minimal, and highly scalable codebase.

---

## 1. The Core Architectural Model: Background & Window Hierarchy

The user interface follows a strict two-layer structural hierarchy. All components must either fit this design pattern or be encapsulated within it. Any heavy legacy elements that cannot be adapted to this model should be removed.

```project_folder/
└── Background (Base Canvas / Blurred)
    └── Window or Block (Semitransparent / Backdrop Blur)
        ├── Title
        ├── Button
        ├── Filter
        └── Content Asset
```

### Layer 1: The Background

- **Role:** The foundational canvas of the application.
    
- **Behavior:** Serves as the bottom-most layer. It must remain visually blurred wherever an upper-layer container resides to keep focus on the content.
    

### Layer 2: The Window (or Block)

- **Role:** The primary structural wrapper for all interface content.
    
- **Visual Properties:** Semitransparent with a high-intensity background blur effect (`backdrop-filter`). It must function like a blurred pane of glass, allowing only the shifting colors of the background beneath it to show through.
    
- **Enclosure Rule:** Every single UI asset—including titles, body text, buttons, filters, and cards—is an internal asset and **must** be nested inside a Window. No standalone floating elements are permitted.
    

## 2. Website Structure & Visual Persistence

A unified user experience requires identical visual properties across all views, sub-pages, templates, and dynamic posts.

- **Spaces & Distances:** Layout distances, padding, and margins must be completely equal and balanced across every view to maintain spatial harmony.
    
- **Uniform / Unified Templates:** Every sub-page and layout must derive from a single, standardized template system to eliminate structural drift.
    
- **Persistence Everywhere:** Proportions, shapes, typography, brand color palettes, and overall tone must remain completely fixed and unyielding across the entire site.
    
- **Terminology Mapping:** The conceptual structural components—referred to as **Windows** or **Blocks**—are the strict functional equivalents of modular layout components inside the codebase.
    

## 3. Engineering & Codebase Organization

To avoid a fragmented codebase and ensure seamless scaling (such as adding new blog entries or portfolio items dynamically), the following development protocols apply:

- **Centralized, Modular Architecture:** Design rules, interactive states, and layout filters must be written in a centralized framework. Avoid scattered or inline style declarations. Global properties should be applied concurrently to multiple components from a single source of truth.
    
- **Structured Indexing & Documentation:** Code files and components must be organized systematically using a strict `Background -> Window -> Internal Assets` naming convention.
    
- **Safe Deployment & State Management:** Before applying overarching structural changes or refactoring global layers, a verified, functional version control state (working commit) must be established to ensure an immediate fallback option if unexpected visual regression occurs.
    

## 4. Execution Mechanics & Component Discoverability

To allow seamless, parallel code execution and modifications, the model must code defensively with explicit searchability hooks.

- **Explicit Target Commenting:** Every window component, block file, or layout declaration in the code must be flagged with standard architectural anchors (`/* ARCHITECTURE-TARGET: WINDOW */` or `# ARCHITECTURE-TARGET: WINDOW`). This allows immediate, universal discovery across the entire repository during global adjustments.
    
- **Parallel Implementation:** When updating properties (e.g., hover states, border-radius, color values), code generation must execute transformations globally across all identified template boundaries concurrently, ensuring zero discrepancy between paths.
    
- **Proactive Inconsistency Reporting:** If the codebase contains fragmented styles, non-standard layout containers, or hidden inheritance loops that conflict with this structure, **the model must immediately pause execution and notify the user with an Inconsistency Alert** explaining the exact bottleneck before forcing an inaccurate fix.
    

## 5. Mandatory Definition of Done & Model Self-Checklist

_The executing agent/model must explicitly verify and answer "YES" to every single item in this checklist before submitting code or claiming a task is complete. No partial completions._

### 🧱 Structural Integrity & Enclosure

- [ ] **Are there any orphaned floating elements?** (Verify that _every_ button, title, text block, or asset is fully wrapped within a designated "Window/Block" component).
    
- [ ] **Is the background layer showing through correctly?** (Verify that the Window container utilizes a valid `backdrop-filter: blur(...)` styling and transparency layer, and that the background is appropriately blurred underneath).
    
- [ ] **Was legacy code handled correctly?** (If a component or piece of layout did not abide by the `Background -> Window` layout and could not be encapsulated, confirm that it has been safely deprecated/removed).
    

### 📐 Spatial Alignment & Layout

- [ ] **Are distances and margins perfectly proportional?** (Verify that the margins, padding, and component spacing match the uniform grid layout on _every single sub-page_ exactly).
    
- [ ] **Are edge treatments completely uniform?** (Check all corner shapes, button borders, card radiuses, and window borders across all templates to ensure there are no sharp edges or inconsistent roundings remaining).
    
- [ ] **Is structural persistence intact?** (Confirm that navigating between the home page, project views, and blog views shows zero shifting in typography, sizing proportions, tone, or theme colors).
    

### 🔍 Discovery, Comments, & Conflict Audits

- [ ] **Are structural search tags intact?** (Verify that every newly generated or modified Window file explicitly contains the `ARCHITECTURE-TARGET: WINDOW` indicator for seamless global tracking).
    
- [ ] **Did I check for blockers?** (Confirm that any visual variance or blocker was audited and reported cleanly to the user rather than leaving broken regressions in production code).
    
- [ ] **Is the solution modular?** (Ensure no inline styles or duplicate CSS rules were injected. Verify that design adjustments apply globally and concurrently to all components via unified tokens or classes).
    
- [ ] **Is there an active rollback point?** (Confirm that the changes are backed by a verified, working commit state that preserves full production stability).