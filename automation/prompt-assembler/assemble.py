#!/usr/bin/env python3
"""Prompt Assembler - Combines templates with context variables."""

import yaml
import sys
from pathlib import Path
from jinja2 import Template

def assemble_prompt(template_path: str, context: dict) -> str:
    """Assemble a prompt from Jinja2 template + context."""
    template_content = Path(template_path).read_text()
    template = Template(template_content)
    return template.render(**context)

def validate_template(template_path: str) -> bool:
    """Validate that a template has required fields."""
    try:
        content = Path(template_path).read_text()
        data = yaml.safe_load(content)
        required = ['role', 'task', 'output_format', 'input']
        missing = [f for f in required if f not in data]
        if missing:
            print(f"❌ {template_path}: Missing fields: {missing}")
            return False
        print(f"✅ {template_path}: Valid")
        return True
    except Exception as e:
        print(f"❌ {template_path}: {e}")
        return False

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "--validate":
        templates = list(Path("prompts/templates").glob("*.tpl"))
        results = [validate_template(str(t)) for t in templates]
        sys.exit(0 if all(results) else 1)
    else:
        print("Usage: assemble.py --validate OR assemble.py <template> <context.yaml>")