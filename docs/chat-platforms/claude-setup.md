# 🟣 Claude Platform Setup Guide

> **Version:** 2026-Q3 | **Target Use Cases:** Technical Documentation, Portfolio Website Code, Complex Reasoning, Artifact Generation  
> **Prerequisites:** Claude account (Pro recommended for Projects), Project created

## 🎯 Why Claude for Technical Documentation & Code?

Claude excels in **long-form technical writing, code generation with context awareness, and structured output**. Its **Artifacts** feature allows live preview of HTML/CSS/React components directly in the chat interface — invaluable for your portfolio website development. While not your primary daily driver, Claude is unmatched for documentation-heavy and frontend-focused tasks.

---

## ️ Step-by-Step Configuration

### Step 1: Create/Edit Project
1.  Navigate to [claude.ai](https://claude.ai)
2.  Click **Projects** in left sidebar → **New Project** or select existing
3.  Click **⋯** → **Customize project**

### Step 2: Configure Project Instructions
Paste the following optimized for technical documentation and portfolio work:

```text
You are my Technical Documentation Specialist & Frontend Development Partner. My background: DevOps Engineer building a professional portfolio website (Flask/Next.js) and comprehensive AI knowledge base.

CORE PRINCIPLES:
1. DOCUMENTATION EXCELLENCE:
   - Write clear, concise, professionally formatted technical documentation.
   - Use proper heading hierarchy (H1 → H2 → H3).
   - Include code examples with language tags and expected outputs.
   - Follow Google Developer Documentation Style Guide conventions.
   - Always provide a "Quick Start" section for new readers.

2. CODE GENERATION STANDARDS:
   - Write production-ready, commented, modular code.
   - Prefer open-source technologies (Flask, Next.js, MkDocs, Tailwind).
   - Include error handling and input validation.
   - Provide Docker/docker-compose configurations for all applications.
   - Never use deprecated libraries or patterns.

3. ARTIFACT UTILIZATION:
   - When generating HTML/CSS/JS/React components, ALWAYS use Artifacts.
   - Ensure artifacts are self-contained and runnable.
   - Include responsive design considerations.
   - Add accessibility attributes (ARIA labels, alt text).

4. PORTFOLIO SPECIFICS:
   - Design for international professional standards.
   - Optimize for SEO (meta tags, structured data, semantic HTML).
   - Ensure YAML-based customization support.
   - Generate both web and PDF-exportable formats.
   - Maintain clean, modular code structure.

5. RESPONSE FORMAT:
   - Use markdown extensively (tables, lists, code blocks, callouts).
   - Provide complete files, not snippets (unless explicitly requested).
   - Include file path comments at top of each code block.
   - End with "Implementation Notes" and "Testing Checklist".

TONE: Professional, precise, helpful. Assume technical competence but explain complex concepts clearly.

### Step 3: Enable Key Features

- **Artifacts:** Automatically enabled in Projects. Verify by generating a simple HTML page.
- **Web Search:** Enable for up-to-date framework documentation references.
- **File Upload:** Supported formats: PDF, TXT, MD, PY, JS, TS, YAML, JSON, ZIP (max 50MB).

### Step 4: Memory Configuration

- **Project Memory:** Stores documentation style preferences, code patterns, and portfolio requirements.
- **Cross-Project Memory:** Disabled by default for Claude Projects. Enable only if sharing context between documentation and code projects.

---

## 🎨 Artifacts: Your Secret Weapon for Portfolio Development

### What Are Artifacts?

Artifacts are **standalone, interactive previews** of code-generated content that appear beside the chat. Unlike regular code blocks, they render live HTML/CSS/JS/SVG/React components.

### When to Use Artifacts

|Task|Regular Code Block|Artifact|
|---|---|---|
|Python backend logic|✅|❌|
|Bash automation scripts|✅|❌|
|Portfolio landing page|❌|✅|
|Documentation template|❌|✅|
|Data visualization|❌|✅|
|React component|❌|✅|

### Artifact Best Practices

1. **Self-Contained:** Include all CSS/JS inline or via CDN. No external build steps.
2. **Responsive:** Test at mobile/tablet/desktop breakpoints.
3. **Accessible:** Semantic HTML, keyboard navigation, screen reader support.
4. **Exportable:** Ensure content can be copied as clean source code.

### Example Prompt for Portfolio Section

Create an interactive "DevOps Skills" section for my portfolio using Artifact.
Requirements:
- Animated skill bars for: Linux, Docker, K8s, Terraform, OpenStack, Python
- Hover tooltips showing project examples
- Dark/light mode toggle
- Responsive grid layout
- Clean, professional aesthetic matching international standards
- Exportable as standalone HTML file

---

## 🔧 Advanced Technical Writing Features

### Long-Context Document Analysis

Upload entire documentation sets (up to 200K tokens) and request:

- Consistency audits across multiple docs
- Gap analysis (missing sections, outdated info)
- Style guide compliance checks
- Automated table of contents generation

### Code Refactoring with Context

Provide your existing Flask/Next.js codebase and ask:

Refactor this portfolio codebase for:

1. Modular component structure
2. YAML-based configuration loading
3. SEO optimization (meta tags, sitemap, robots.txt)
4. PDF export functionality
5. Performance improvements (lazy loading, code splitting)
6. Maintain existing functionality. Provide diff-style changes.

### Multi-Document Synthesis

Upload 5-10 technical blog posts and request:


Synthesize these articles into a comprehensive "OpenStack Networking Guide" with:

- Unified terminology
- Logical progression (basic → advanced)
- Cross-references between sections
- Updated examples for 2026
- Practical lab exercises

---

## Troubleshooting Common Issues

|Issue|Cause|Solution|
|---|---|---|
|Artifacts not rendering|Invalid HTML/CSS syntax|Ask Claude to "validate and fix artifact code"|
|Code snippets instead of full files|Missing "complete files" instruction|Reinforce Rule #5 in project instructions|
|Outdated framework references|Web search disabled|Enable web search; specify framework version|
|Overly verbose documentation|Missing conciseness constraint|Add "Max 500 words per section unless complex topic"|
|Ignoring accessibility|Not explicitly required|Add ARIA/accessibility requirement to instructions|

---

## 📊 When to Use Which Platform

|Task|Best Platform|Why|
|---|---|---|
|English learning / Translation|ChatGPT|Optimized instructions, voice mode, memory|
|DevOps troubleshooting / Local AI|Qwen|Technical depth, open-source focus, file analysis|
|Portfolio code / Documentation|Claude|Artifacts, long-context, writing quality|
|Privacy-sensitive / Offline|Local (Ollama)|Zero data leakage, full control|
|Quick factual queries|Any|Marginal differences for simple Q&A|

> 📖 **Related Guides:**
> 
> - ChatGPT Setup Guide
> - Qwen Setup Guide
> - Platform Comparison Matrix
> - [State of AI 2026](https://chat.qwen.ai/fundamentals/state-of-ai-2026.md)

---

