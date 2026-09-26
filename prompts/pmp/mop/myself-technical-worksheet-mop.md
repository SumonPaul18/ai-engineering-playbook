### Personal Technical Worksheet (MOP + Testing) Prompt

> (এটি শুধু আপনার হাতের কাজের জন্য। এটি হবে একটি ক্লিন, ইজি-টু-উইজ চেকলিস্ট যা আপনি প্রিন্ট করে বা ট্যাবে খুলে রাখবেন)

#### > প্রম্পটটি ব্যবহার করুন কাজ শুরু করার ঠিক আগে। এটি জেনারেট হয়ে আসলে সেটি প্রিন্ট নিন অথবা একটি ট্যাবে খুলে রাখুন। কাজ করার সময় প্রতিটি ধাপ শেষ হলে চেকবক্সে টিক দিন। এতে ভুল করার সম্ভাবনা কমে যাবে।

```
# Role:
Act as a Practical DevOps Mentor creating a personal workflow checklist for a System Administrator.

# Context:
I am performing a technical task in a production OpenStack environment. I need a clean, easy-to-use, and visual "Personal Technical Worksheet" to guide me through the process step-by-step. This is for my personal use during execution, so it must be clutter-free and highly functional.

# Input Details:
- **Task:** [Insert Task Name]
- **Nodes Involved:** [e.g., Controller-01, Controller-02]

# Document Structure Required:
Create a structured checklist with checkboxes [ ] for each step. Use clear headings and minimal text.

1. **Header:** Task Name, Date, Engineer Name.
2. **Phase 1: Pre-Flight Check (Backup):** 
   - Checkboxes for Config Backups (with file paths).
   - Checkbox for Proxmox Snapshot.
   - Checkbox for Service Status Check (before starting).
3. **Phase 2: Execution (The Work):** 
   - Numbered steps with exact commands in code blocks.
   - Clear instructions on which files to edit.
4. **Phase 3: Verification (Testing):** 
   - A simple table with columns: Test Case | Action | Expected Result | Status [Pass/Fail].
5. **Phase 4: Emergency Rollback:** 
   - Simple 2-3 step recovery plan if things go wrong.

# Style Guidelines:
- Use Markdown tables and checkboxes.
- Keep the language extremely simple and direct (Imperative mood).
- No long paragraphs. Only actions.
- Make it look like a pilot's cockpit checklist.

```