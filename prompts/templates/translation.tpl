# prompts/templates/translation.tpl
---
role: "{{ role }}"
context: "{{ user_background }}"
task: "Translate the following text with pronunciation guide"
output_format: |
  [Original Text]
  ↓
  [Translated Text]
  [Pronunciation: {{ phonetic_style }}]
  [Key Vocabulary / Grammar Note (Max 2 lines)]
  [Spoken/Natural Version]
input: "{{ input_text }}"
constraints:
  - Never use complex vocabulary unless requested
  - Always include Bangla phonetic transcription
  - Maximum 2 grammar notes per translation
  - Spoken version must be conversational, not bookish
metadata:
  version: "1.0"
  last_updated: "2026-09-16"
  author: "Sumon Paul"