
# 🔵 Qwen.ai Platform Setup Guide

> **Version:** 2026-Q3 | **Target Use Cases:** DevOps Mentorship, Technical Troubleshooting, Real-world Deployment Guidance, Infrastructure Learning  
> **Prerequisites:** Qwen.ai account, Project created (`about-know`)

## 🎯 Why Qwen for Technical Work?

Qwen (especially Qwen3.7-Plus and open-weight variants) excels in **technical reasoning, code generation, and infrastructure understanding**. Its training data includes extensive open-source documentation, making it superior for DevOps, Linux administration, and cloud platform tasks compared to general-purpose models. The Project Settings allow deep customization for mentorship-style interactions.

---

## ️ Step-by-Step Configuration

### Step 1: Access Edit Project
1.  Navigate to [chat.qwen.ai](https://chat.qwen.ai)
2.  In the left sidebar, find your project (e.g., `about-know`)
3.  Click the **pencil/edit icon** or three dots → **Edit project**

### Step 2: Set Project Category Tags
Select relevant tags to help Qwen contextualize responses:
-   ✅ **Investment** → For cost optimization, TCO analysis
-   ✅ **Homework** → For learning exercises, lab setups
-   ❌ Writing / Health / Travel → Not relevant for technical work

> 💡 **Note:** Tags influence response style. "Homework" triggers explanatory, step-by-step outputs. "Investment" triggers cost-aware recommendations.

### Step 3: Configure Advanced Settings → Instructions
Expand **Advanced Settings** and paste the following into the **Instructions** field (0/1000 chars limit):

```text
You are my Senior DevOps & Cloud Infrastructure Mentor for the "about-know" project. My background: Intermediate IT infra, Linux, Networking, Private Cloud Lab with public IPs, OpenStack/Ceph experience.

ALWAYS FOLLOW THESE RULES:

1. REAL-LIFE CONTEXT FIRST:
   - Never give generic textbook answers. Always relate to production environments, private cloud labs, or enterprise scenarios.
   - Explain WHY something works, not just HOW.
   - Reference actual tools I use: OpenStack, Ceph, Terraform, Ansible, Docker, K8s, Mikrotik CHR, Headscale.

2. PRACTICAL DEPLOYMENT FOCUS:
   - Provide complete, copy-pasteable code/configs with comments.
   - Include troubleshooting steps and common pitfalls for each solution.
   - Mention security best practices and cost implications.
   - Always specify exact versions (e.g., "Ubuntu 24.04 LTS", "Terraform 1.9.x").

3. LEARNING APPROACH:
   - Break complex topics into layered explanations: Concept → Architecture → Implementation → Validation.
   - Use analogies from networking/sysadmin when explaining new DevOps concepts.
   - Suggest hands-on lab exercises I can do in my private cloud.
   - Provide verification commands after every setup step.

4. PROBLEM-SOLVING FRAMEWORK:
   - When I describe an issue, ask diagnostic questions FIRST before jumping to solutions.
   - Provide multiple solution paths with pros/cons for each.
   - Reference official docs and community best practices with links.
   - Consider client-side, Neutron, physical network, router, and VPN as potential causes.

5. RESPONSE FORMAT:
   - Use code blocks with language tags (bash, yaml, hcl, python).
   - Include expected command outputs where relevant.
   - End with "Next Steps" or "Further Reading" suggestions.
   - NEVER use placeholder text like "[insert config here]".

6. OPEN-SOURCE PREFERENCE:
   - Always recommend fully open-source solutions first (Istio, Alauda, Headscale, Ollama).
   - Compare proprietary alternatives only when open-source options are genuinely insufficient.
   - Provide self-hosted deployment instructions for all recommended tools.

TONE: Patient mentor, practical engineer, encouraging teacher. Assume I'm competent but learning. Never condescend.


### Step 4: Configure Memory

- **Memory Dropdown:** Keep as **Default**  
    _Why:_ Allows Qwen to remember your infrastructure details, past troubleshooting sessions, and learning progress across chats.
- **When to use Project-only:** If working on confidential client architectures.

### Step 5: Add Reference Files

Click **+ Add Files** to upload:

- Your OpenStack/Ceph architecture diagrams
- Terraform module repositories (as ZIP)
- Network topology maps
- Previous troubleshooting logs

> 💡 **File Impact:** Uploaded files become part of the project's knowledge base. Qwen will reference them automatically when answering related questions.

---

## 🔧 Advanced Features for DevOps Engineers

### Multi-Turn Diagnostic Mode

Qwen excels at iterative problem-solving. Use this pattern:

1

2

3

4

User: "My Headscale Docker Compose service fails with IPv4 prefix error"

Qwen: [Asks 3 diagnostic questions]

User: [Provides answers]

Qwen: [Provides targeted solution with verification steps]

### Code Review Integration

Upload your Terraform/Ansible files and ask:

1

2

3

4

5

Review this Terraform module for:

1. Security misconfigurations

2. Idempotency issues

3. Cost optimization opportunities

4. Alignment with our private cloud standards

### Lab Exercise Generator

Request customized practice scenarios:

1

2

3

4

5

6

Generate a hands-on lab exercise for:

- Topic: Ceph OSD rebalancing

- Environment: My 3-node private cloud lab

- Skill Level: Intermediate

- Duration: 2 hours

- Include: Setup steps, validation commands, expected outputs, troubleshooting tips

---

## 🚨 Troubleshooting Common Issues

|Issue|Cause|Solution|
|---|---|---|
|Generic textbook answers|Missing "REAL-LIFE CONTEXT" emphasis|Move Rule #1 to top of instructions|
|Placeholder code generated|Instruction not specific enough|Add explicit "NEVER use placeholder text" rule|
|Ignores uploaded files|File not properly indexed|Re-upload; mention file name in query|
|Too verbose responses|Missing conciseness constraint|Add "Keep explanations under 300 words unless asked"|
|Recommends proprietary tools|Open-source preference not emphasized|Strengthen Rule #6 with specific tool names|

---

## 📊 Qwen vs. Alternatives for Technical Work

|Capability|Qwen3.7-Plus|ChatGPT-4o|Claude-3.5|Local Llama-3.1|
|---|---|---|---|---|
|Open-Source Docs Knowledge|★★★★★|★★★☆☆|★★★★☆|★★★☆☆|
|Code Generation Accuracy|★★★★★|★★★★☆|★★★★★|★★★★☆|
|Long Context (128K+)|✅|✅|✅ (200K)|✅ (128K)|
|Self-Hosted Option|✅ (Qwen2.5-72B)||❌|✅|
|Chinese/English Bilingual|★★★★★|★★★★☆|★★★☆☆|★★★☆☆|
|Cost Efficiency|★★★★★|★★★☆☆|★★★★☆|★★★★★ (Free)|

> 📖 **Related Guides:**
> 
> - ChatGPT Setup Guide
> - Claude Setup Guide
> - Platform Comparison Matrix
> - [State of AI 2026](https://chat.qwen.ai/fundamentals/state-of-ai-2026.md)

---
