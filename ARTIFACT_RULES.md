# Artifact Rules

## PDF Handling
- For scanned PDFs: `pdfinfo` -> one `pdftotext -layout` check -> if empty, render with `pdfimages` or `pdftoppm` to a temporary directory and inspect page details.
- Keep a tiny inventory: page count, text-extraction result, and what the pages contain.
- Stay local-first; no remote OCR or uploads unless explicitly requested.
- After editing or creating a PDF, verify locally by rendering a page/image.
- Open the PDF for review with standard system commands (e.g., `evince <absolute-pdf-path> &`).

## HTML UI Verifiability
- When creating reports, prototypes, dashboards, visual research artifacts, or demos, make the result visible in HTML.
- The HTML should show the actual artifact: text, formulas, tables, charts, controls, and relevant results.
- After creating or editing an HTML report, open it for visual validation.
- Open HTML files in a browser. For directories with assets/scripts/maps, launch a local HTTP server: `python3 -m http.server <port> --directory <site-dir>`, then open `http://127.0.0.1:<port>`. Use `file://` only for simple standalone HTML.
- Browser automation and screenshots are compute expensive. Prefer cheaper local checks unless UI layouts or charts are newly created.

## HTML Slide Layout Lessons
- For printed HTML slides, do not rely on dynamic active styles. Ensure layout defaults (like flex direction, justify-content, gap) are explicitly set.
- Verify spatial layout by rendering pages as images or PDFs. Spot-check the most layout-sensitive pages.
- In right-to-left (RTL) slide decks, set the main split container to `direction: ltr` for grid placement, and set individual text blocks to `direction: rtl` to preserve correct word ordering.

## HTML Formula Rendering Harness
Use this whenever an HTML report/page needs mathematical formulas.
- Do not put raw LaTeX delimiters (like `\(...\)`, `\[...\]`) directly into HTML.
- For handwritten HTML, prefer native MathML. It is standard and renders locally in modern browsers without external dependencies. Example:
  ```html
  <div class="math-display">
    <math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
      <mrow>
        <msub><mi>s</mi><mi>k</mi></msub>
        <mo>=</mo>
        <mi>T</mi><mo>(</mo><msub><mi>r</mi><mi>k</mi></msub><mo>)</mo>
      </mrow>
    </math>
  </div>
  ```
- Recommended CSS:
  ```css
  .math-display {
    direction: ltr;
    text-align: center;
    background: #fbfcfe;
    border: 1px solid #d9e0e8;
    border-radius: 6px;
    padding: 12px 14px;
    margin: 10px 0;
    overflow: auto;
  }
  .math-display math { font-size: 1.18rem; }
  ```
- For Markdown sources, use Pandoc to compile to MathML:
  ```bash
  pandoc input.md -s --mathml -c style.css -o output.html
  ```
- Verify that LaTeX delimiters are not left uncompiled in the final output.
