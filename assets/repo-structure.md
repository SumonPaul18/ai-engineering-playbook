ai-engineering-playbook/
├── README.md                 # 🧭 Master Navigation & Quick Links
├── Makefile                  # ⚙️ Single entry point for all automation
├── .github/workflows/        # CI Pipelines
│   ├── validate-prompts.yml  # Test prompt templates against models
│   ├── build-docs.yml        # MkDocs/Docusaurus site generation
│   └── test-automation.yml   # Run automation scripts safely
│
├── docs/                     # 📖 Knowledge Base (Human Readable)
│   ├── fundamentals/         # History, Evolution, Current State (2026)
│   │   ├── timeline.md       # Visual AI evolution from 1950-2026
│   │   ├── paradigm-shifts.md# Symbolic → Statistical → Generative → Agentic
│   │   └── state-of-ai-2026.md
│   │
│   ├── chat-platforms/       # Settings & Configuration Guides
│   │   ├── chatgpt-setup.md  # Project settings, Memory, Custom Instructions
│   │   ├── qwen-setup.md     # Advanced settings, Files, Tags
│   │   ├── claude-setup.md
│   │   └── comparison-matrix.md
│   │
│   ├── prompt-engineering/   # Core Theory + Rules
│   │   ├── anatomy-of-prompt.md
│   │   ├── writing-principles.md
│   │   ├── types-of-prompts.md # Zero-shot, Few-shot, CoT, ReAct, etc.
│   │   └── testing-methods.md
│   │
│   └── automation-guide/     # How to automate AI workflows
│       ├── cli-integration.md
│       ├── api-basics.md
│       └── orchestration-patterns.md
│
├── prompts/                  #  Executable Prompt Assets (Machine Stable)
│   ├── templates/            # Reusable Template Library
│   │   ├── translation.tpl   # Jinja2/YAML format for variable injection
│   │   ├── code-review.tpl
│   │   ├── video-script.tpl
│   │   └── troubleshooting.tpl
│   │
│   ├── examples/             # Real-world Ready-to-Use Prompts
│   │   ├── english-coaching/ # Your Translate-B2E optimized prompts
│   │   ├── devops-mentor/    # Your About-Know technical prompts
│   │   ├── content-creation/
│   │   └── data-analysis/
│   │
│   └── validation/           # Test cases for prompts
│       ├── expected-outputs/
│       └── regression-tests.sh
│
├── automation/               # 🤖 Scripts & Tools (CI/CD Targetable)
│   ├── local-ai/             # Ollama/LM Studio setup & config
│   │   ├── install.sh
│   │   ├── modelfiles/       # Pre-configured Modelfiles
│   │   └── benchmark.sh
│   │
│   ├── prompt-assembler/     # Combine templates + context → final prompt
│   │   ├── assemble.py       # Python script using Jinja2
│   │   └── config.yaml       # Variable definitions
│   │
│   ├── ci-helpers/           # Validation & linting tools
│   │   ├── lint-prompts.sh
│   │   └── check-links.py
│   │
│   └── integrations/         # API wrappers, webhook handlers
│       ├── openai-client.py
│       └── qwen-client.py
│
├── labs/                     # 🧪 Hands-on Projects (Testable Modules)
│   ├── project-translate-b2e/# Complete implementation
│   │   ├── prompts/          # Linked from ../prompts/examples/
│   │   ├── scripts/          # Automation specific to this project
│   │   └── TESTS.md          # How to validate this lab
│   │
│   ── project-devops-mentor/
│       ├── prompts/
│       ├── scripts/
│       └── TESTS.md
│
└── assets/                   # Diagrams, Screenshots, Sample Outputs
    ├── architecture/
    ├── screenshots/
    ── sample-outputs/