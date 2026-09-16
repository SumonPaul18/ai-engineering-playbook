# AI Engineering Playbook 🤖

> A comprehensive, automation-first knowledge base for AI history, prompt engineering, local AI setup, and practical DevOps integration.

## 🧭 Quick Navigation

| Section | Description | Entry Point |
|---------|-------------|-------------|
| 📚 Fundamentals | AI History, Evolution & Current State (2026) | [docs/fundamentals/](docs/fundamentals/) |
| ⚙️ Chat Platforms | Setup Guides for ChatGPT, Qwen, Claude | [docs/chat-platforms/](docs/chat-platforms/) |
| 🎯 Prompt Engineering | Rules, Types, Templates & Testing | [docs/prompt-engineering/](docs/prompt-engineering/) |
| 🤖 Automation | CLI, API & Orchestration Patterns | [docs/automation-guide/](docs/automation-guide/) |
| 📦 Prompts Library | Executable Templates & Real Examples | [prompts/](prompts/) |
| 🔧 Automation Scripts | Local AI Setup, Assemblers, CI Helpers | [automation/](automation/) |
| 🧪 Labs | Hands-on Projects with Validation | [labs/](labs/) |

## ⚡ Quick Start

```bash
# Clone & Setup
git clone <repo-url> && cd ai-engineering-playbook
make automation-setup    # Configure local AI environment
make prompts-validate    # Test all prompt templates
make docs                # Build documentation site


---

 Repository Structure
docs/: Human-readable knowledge base (Markdown).
prompts/: Machine-executable prompt assets (Jinja2/YAML templates + examples).
automation/: Scripts, tools, and integrations (Python/Bash).
labs/: Self-contained, testable project modules.
assets/: Diagrams, screenshots, and sample outputs.