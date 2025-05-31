# LLM Handover Procedures (For Outgoing LLM)

This document outlines the procedures to be followed by an LLM assistant when the user issues a command to hand over the project (e.g., "Projeyi devret"). The goal is to ensure all necessary information is packaged for a smooth transition to a new LLM.

## Prerequisites for LLM
*   You must have access to read and write files within the `python_workspace/documentation/` directory.
*   You should be aware of your own LLM Identifier (e.g., "YYYY-MM-DD_ModelName_ID") and be able to request the current date and time from the user.

## Procedure upon receiving "Projeyi devret" (or similar) command:

1.  **Acknowledge and Request Information:**
    *   Acknowledge the user's request to hand over the project.
    *   Request the current date and time from the user for logging purposes.
    *   Confirm your LLM Identifier with the user (or ask them to provide one if you cannot generate it).

2.  **Generate Comprehensive Handover Summary:**
    *   Compile a detailed summary covering the following points (based on current project state and conversation history):
        1.  **Overall Project Goal(s):** What is the project trying to achieve?
        2.  **Current Workspace/Project Root Path:** (e.g., `d:\AI_projects\roo_code_LLM_universe\python_workspace\`)
        3.  **Detailed Current Status of Files and Directories:**
            *   List key directories created within `python_workspace`.
            *   List key files created (especially in `documentation/`, `shared_libs/`, and the current project like `projects/financial_tracker/`), noting if they are empty, partially populated, or considered complete.
            *   Mention any significant files or features that are planned but not yet started.
        4.  **Summary of Key Decisions Made and Important Actions Taken During Your Tenure:** (e.g., choices about Python versions, library installations, tooling setup like Mypy/Flake8/Black, Git repository initialization and remote setup, core architectural decisions discussed).
        5.  **The Very Next Immediate Planned Step(s) You Were About to Undertake or Propose:** What was the immediate next piece of work?
        6.  **Pointers to Crucial Documentation/Standard Files:** Remind the user/next LLM about:
            *   `documentation/standards.md`
            *   `documentation/llm_takeover_procedures.md` (for the incoming LLM)
            *   `documentation/project_lifecycle_guidelines.md`
            *   `documentation/llm_assisted_development_log.md`
            *   `documentation/user_profile_for_llm_assistance.md`
            *   The main project `README.md`.
        7.  **Your Role During Tenure:** Briefly describe the role you fulfilled (e.g., "My role was primarily as a MicroManager/Orchestrator, focusing on planning, task delegation, and process refinement.").
        8.  **Specific Instructions/Context for the New LLM (Optional but helpful):** Any nuances, unresolved discussions, or specific areas the new LLM should pay attention to.

3.  **Write Handover Summary to File:**
    *   Write the complete, detailed summary generated in Step 2 into the file:
        `python_workspace/documentation/current_handover_summary.md`
    *   This file should be overwritten with the new summary.

4.  **Update `llm_assisted_development_log.md`:**
    *   Append a new entry to `python_workspace/documentation/llm_assisted_development_log.md`. This entry should include:
        *   The timestamp (obtained from the user) and your LLM Identifier.
        *   **Action Type:** `SESSION_END_HANDOVER_INITIATED`
        *   **Summary of Work Done This Session:** Briefly list the key accomplishments or discussion points during your final session.
        *   **Handover Note:** "Detailed handover summary written to `documentation/current_handover_summary.md`. Project ready for handover."
        *   **Final Git Commit Message Proposal:** Suggest a Git commit message to the user that reflects the work done during the session and the handover preparation (e.g., "docs: finalize handover procedures and prepare for LLM transition").

5.  **Inform User of Completion:**
    *   Notify the user that the handover summary has been written to `current_handover_summary.md`, the development log has been updated, and a final commit (including these changes) should now be made by the user.
    *   Remind the user that the `current_handover_summary.md` file is what they will point the new LLM to.