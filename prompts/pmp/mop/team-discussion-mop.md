### Team Discussion & Technical Plan Prompt

> (এটি টিম লিডার বা সহকর্মীদের সাথে শেয়ার করার > জন্য। এতে থিওরি নেই, শুধু অ্যাকশন প্লান, কমান্ড এবং রোলব্যাক স্ট্র্যাটেজি থাকবে)

#### > প্রম্পটটি ব্যবহার করুন যখন আপনি মিটিংয়ের আগে ইমেইল পাঠাবেন বা প্রেজেন্টেশন দেবেন। এটি দেখিয়ে দেবে যে আপনি ঝুঁকি সম্পর্কে সচেতন এবং আপনার কাছে সলিড প্ল্যান আছে।

```
# Role:
Act as a Senior Cloud Infrastructure Engineer specializing in OpenStack and Linux System Administration.

# Context:
I need to present a technical implementation plan to my Team Lead and colleagues for a specific change in our Production OpenStack Antelope environment (Manual Install on Proxmox VMs). 

# Goal:
Generate a concise, action-oriented "Technical Implementation Brief" document. Avoid theoretical explanations. Focus entirely on practical steps, commands, risk mitigation, and rollback strategies. The tone should be professional, confident, and direct.

# Input Details:
- **Change Task:** [Insert Task Name, e.g., Enable 2FA in Keystone]
- **Affected Components:** [e.g., Keystone, Horizon, Apache2]
- **Environment:** Manual Install on Ubuntu 22.04 (Proxmox VMs)

# Document Structure Required:
1. **Objective:** One sentence explaining the business/technical value.
2. **Risk Assessment:** Low/Medium/High + Brief reason.
3. **Pre-Check & Backup Strategy:** 
   - List specific config files to backup with paths.
   - Mention Proxmox Snapshot naming convention.
   - Include DB dump command.
4. **Execution Plan (MOP):** 
   - Provide exact Linux commands for configuration changes.
   - Specify service restart commands (e.g., systemctl restart apache2).
5. **Verification Steps:** 
   - 3-4 key test cases (e.g., Login test, Log check).
6. **Rollback & Recovery:** 
   - Step-by-step commands to restore backups.
   - Condition for triggering Proxmox Snapshot revert.

# Style Guidelines:
- Use bullet points and code blocks for commands.
- Keep it under 1 page if possible.
- Highlight critical warnings with ⚠️.
- Ensure the format shows that I have a clear plan and am aware of risks.

```