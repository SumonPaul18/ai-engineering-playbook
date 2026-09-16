```makefile
# ==============================================================================
# AI Engineering Playbook - Master Makefile
# Single entry point for documentation, prompts, automation, and labs
# ==============================================================================

.PHONY: help docs prompts-validate automation-setup labs-test full-ci clean

# Default target
help:
	@echo "🤖 AI Engineering Playbook - Available Targets:"
	@echo ""
	@echo "  make docs              Build MkDocs static site"
	@echo "  make prompts-validate  Validate all prompt templates"
	@echo "  make automation-setup  Configure local AI environment"
	@echo "  make labs-test         Run validation tests for all labs"
	@echo "  make full-ci           Execute complete CI pipeline"
	@echo "  make clean             Remove build artifacts"
	@echo ""

# Build documentation site
docs:
	@echo "📖 Building documentation site..."
	@if command -v mkdocs >/dev/null 2>&1; then \
		mkdocs build --strict; \
	else \
		echo "⚠️  MkDocs not installed. Install with: pip install mkdocs-material"; \
		exit 1; \
	fi

# Validate prompt templates
prompts-validate:
	@echo "✅ Validating prompt templates..."
	@python3 automation/prompt-assembler/assemble.py --validate \
		--template-dir prompts/templates \
		--example-dir prompts/examples
	@echo "✅ All prompt templates validated successfully."

# Set up local AI environment
automation-setup:
	@echo "⚙️  Setting up local AI environment..."
	@bash automation/local-ai/install.sh
	@echo "✅ Local AI environment configured."

# Run all lab tests
labs-test:
	@echo "🧪 Running lab validation tests..."
	@failed=0; \
	for lab in labs/*/; do \
		echo "  Testing $$lab..."; \
		if [ -f "$${lab}test.sh" ]; then \
			bash "$${lab}test.sh" || failed=$$((failed + 1)); \
		elif [ -f "$${lab}TESTS.md" ]; then \
			echo "    ⚠️  TESTS.md found but no test.sh script"; \
		else \
			echo "    ⚠️  No test file found in $$lab"; \
		fi; \
	done; \
	if [ $$failed -gt 0 ]; then \
		echo "❌ $$failed lab(s) failed validation."; \
		exit 1; \
	fi
	@echo "✅ All labs passed validation."

# Full CI pipeline
full-ci: docs prompts-validate automation-setup labs-test
	@echo "🎉 Full CI pipeline completed successfully!"

# Clean build artifacts
clean:
	@echo "🧹 Cleaning build artifacts..."
	rm -rf site/ __pycache__/ .pytest_cache/
	find . -name "*.pyc" -delete
	@echo "✅ Cleanup complete."