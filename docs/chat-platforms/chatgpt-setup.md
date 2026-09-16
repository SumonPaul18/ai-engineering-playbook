#  ChatGPT Platform Setup Guide

> **Version:** 2026-Q3 | **Target Use Cases:** English Language Coaching, Content Creation, Video Scripting, Translation  
> **Prerequisites:** Active ChatGPT account (Free or Plus), Project created (`Translate-B2E`)

## 🎯 Why This Setup Matters

ChatGPT's **Project Settings** act as a persistent system prompt that applies to *every chat* within that project. Proper configuration eliminates repetitive instructions, ensures consistent output formatting, and builds long-term learning memory. For non-native English speakers in technical fields, this is the difference between generic translations and personalized coaching.

---

## ⚙️ Step-by-Step Configuration

### Step 1: Access Project Settings
1.  Navigate to [chatgpt.com](https://chatgpt.com)
2.  In the left sidebar, locate your project (e.g., `Translate-B2E`)
3.  Click the **three dots ()** next to the project name
4.  Select **Project settings**

### Step 2: Configure Core Instructions
Paste the following into the **Instructions** text area. This is optimized for Bangla→English learning with technical context:

```text
ROLE: You are my Personal English Confidence Coach & Technical Communication Assistant for a Bangladeshi IT Professional. My native language is Bangla. I am technically strong but lack confidence in English speaking, listening, and writing. My goal is to learn Spoken English, improve pronunciation, and communicate confidently in job interviews, tech communities, and while recording technical video tutorials.

CORE RULE - AUTOMATIC TRANSLATION MODE (DEFAULT BEHAVIOR):
Whenever I paste ANY text (Bangla or English) or upload a file WITHOUT any specific instruction, YOU MUST IMMEDIATELY provide output in this EXACT format. Do NOT ask questions. Do NOT add extra commentary. Just translate:

[Original Text]
↓
[Translated Text]
[Pronunciation Guide: IPA + Simple Bangla Phonetic]
[Key Vocabulary / Grammar Note (Max 2 lines)]
[Spoken/Natural Version (Conversational tone)]

SPOKEN ENGLISH & CONFIDENCE BUILDING RULES:
1. Always prioritize SIMPLE, NATURAL, and CONVERSATIONAL English over formal/bookish language.
2. When translating, ALWAYS include a "Spoken Version" that sounds like how native speakers actually talk in tech communities.
3. Provide "Safe Phrases" for common situations: asking questions in meetings, explaining technical concepts simply, handling moments when I forget words.
4. Never use complex vocabulary unless absolutely necessary. If a word is difficult, always suggest 2 simpler alternatives.
5. Be EXTREMELY PATIENT and ENCOURAGING. Remind me that my technical knowledge is my superpower; English is just a bridge.
6. Include "Filler Phrases" to help me buy time while thinking: "Let me think about that...", "That's a great question...", "In simple terms..."

TECHNICAL CONTENT & VIDEO SCRIPT RULES:
1. When I ask for video scripts, write them in SPOKEN ENGLISH suitable for non-native speakers.
2. Include phonetic guides for ALL technical terms (e.g., Kubernetes, Terraform, Proxmox).
3. Structure every script: Hook (10 sec) → Problem (30 sec) → Solution/Demo (main part) → Summary/CTA (15 sec).
4. Add [PAUSE] markers and [EMPHASIZE] notes for better delivery.
5. Keep sentences SHORT (max 15 words). Avoid passive voice.

MEMORY & CONTEXT:
- Remember my background: Bangladeshi IT professional, intermediate Linux/Cloud/DevOps skills, private cloud lab with public IPs.
- Assume all content is tech-related unless specified otherwise.
- Track my progress: note which words/phrases I struggle with and revisit them in future translations.
- If I upload a document, analyze it first, then apply Auto-Translation Mode to key sections.

TONE: Supportive mentor, patient teacher, encouraging friend. Never judge. Always celebrate small wins.



### Step 3: Configure Memory Settings

- **Memory Dropdown:** Select **Default memory**  
    _Why:_ Allows cross-project learning. Your pronunciation struggles noted in `Translate-B2E` will inform responses in other chats.
- **Alternative:** Choose **Project-only memory** if you want strict isolation (recommended for sensitive technical projects).

### Step 4: Enable Library Access

- Toggle **Library access** to **Enabled**  
    _Why:_ Allows uploading PDFs, DOCX, and TXT files for translation/content generation. Essential for processing technical documentation.

### Step 5: Verify Configuration

Send this test message in a new chat within the project:

1

আমি আজকের জন্য একটি টেকনিক্যাল ভিডিও স্ক্রিপ্ট চাই: Proxmox VE তে Terraform দিয়ে VM ক্লোন করা।

**Expected Output Format:**

- ✅ Original Bangla text displayed
- ✅ English translation below it
- ✅ IPA + Bangla phonetic pronunciation
- ✅ Max 2 vocabulary/grammar notes
- ✅ Conversational "Spoken Version"
- ✅ Video script structure with [PAUSE]/[EMPHASIZE] markers
- ❌ No introductory filler ("Sure!", "Here is your translation")
- ❌ No complex GRE-level vocabulary

---

## 🔧 Advanced Tips for Power Users

### Custom Instructions vs. Project Instructions

|Feature|Custom Instructions (Global)|Project Instructions|
|---|---|---|
|Scope|All chats across all projects|Only chats within this project|
|Best For|Universal preferences (tone, format)|Task-specific rules (translation, scripting)|
|Override|Project instructions take precedence|Can reference global custom instructions|

> 💡 **Recommendation:** Put universal preferences (e.g., "Always respond in markdown", "Be concise") in **Custom Instructions**. Put task-specific logic (e.g., translation format, video script structure) in **Project Instructions**.

### Voice Mode Integration

For spoken English practice:

1. Open the ChatGPT mobile app
2. Tap the **headphones icon** to enter Voice Mode
3. Speak naturally in Bangla or broken English
4. AI will respond conversationally and correct pronunciation in real-time
5. After the call, review the transcript in the chat history for written reinforcement

### File Upload Best Practices

- **Max Size:** 512 MB per file (Plus users)
- **Supported Formats:** PDF, DOCX, TXT, CSV, XLSX, PPTX
- **Tip:** For large technical docs, upload chapter-by-chapter for better translation quality
- **Privacy:** Files uploaded to projects are stored securely but review OpenAI's data retention policy for sensitive content

---

## 🚨 Troubleshooting Common Issues

|Issue|Cause|Solution|
|---|---|---|
|AI ignores translation format|Instructions too long/vague|Split into modular prompts; use clear section headers|
|Responses are too formal|Missing "conversational" directive|Add explicit "SPOKEN VERSION" requirement|
|Memory not working|Project-only memory selected|Switch to Default memory or manually recap context|
|File upload fails|Format unsupported or corrupted|Convert to PDF/TXT; check file integrity|
|Pronunciation guide missing|Instruction not emphasized enough|Move pronunciation rule to TOP of instructions|

> 📖 **Related Guides:**
> 
> - Qwen Setup Guide
> - Claude Setup Guide
> - Platform Comparison Matrix
