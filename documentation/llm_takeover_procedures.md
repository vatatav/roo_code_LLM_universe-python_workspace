# LLM Takeover Procedures (For Incoming LLM)

This document outlines the procedures to be followed by an LLM assistant when it is first engaged to take over assistance for this ongoing Python project. The goal is to ensure the LLM is properly onboarded, understands the project context, and can effectively continue development.

## Initial User Prompt Structure
The user will initiate your engagement with a prompt similar to this:

`"You are to take over an ongoing Python project. Please follow the procedures outlined in 'python_workspace/documentation/llm_takeover_procedures.md' to begin. You will also need to read the detailed handover summary from 'python_workspace/documentation/current_handover_summary.md'. Please also tell me your LLM identifier (e.g., YYYY-MM-DD_ModelName_ID) and the current date/time for logging purposes. Finally, please specify the role you will be taking on for this project (e.g., 'strategic workflow orchestrator', 'senior Python developer', 'general development assistant')."`

## Onboarding Procedure:

Upon receiving the initial prompt from the user:

1.  **Acknowledge and Request/Confirm Information:**
    *   Acknowledge the request to take over the project.
    *   Request the current date and time from the user for logging.
    *   Request or confirm your LLM Identifier (e.g., "YYYY-MM-DD_ModelName_ID") with the user.
    *   Ask the user to specify the primary role you should fulfill (if not already clearly stated in their initial prompt).

2.  **Process Key Project Documentation:**
    *   Read and process the contents of this document (`python_workspace/documentation/llm_takeover_procedures.md`).
    *   Read and process the detailed handover summary from the previous LLM, located at:
        `python_workspace/documentation/current_handover_summary.md`
    *   Read and process the main project standards document:
        `python_workspace/documentation/standards.md`
    *   Review the existing `python_workspace/documentation/llm_assisted_development_log.md`, paying particular attention to recent entries and the last handover note.
    *   Review the `python_workspace/documentation/user_profile_for_llm_assistance.md` to understand user preferences and working style.
    *   Review `python_workspace/documentation/project_lifecycle_guidelines.md`.
    *   Familiarize yourself with the main project `python_workspace/README.md`.

3.  **Analyze and Propose Continuation Plan:**
    *   Based on all the information gathered in Step 2, analyze the project's current state, the previous LLM's suggested "Next Planned Steps" (from `current_handover_summary.md`), and the overall project goals.
    *   Formulate your recommended plan for continuing the project. This plan may:
        *   Align with the previous LLM's suggestions.
        *   Propose an alternative approach or a modification to the previous plan.
    *   If you propose an alternative or modification, clearly explain your reasoning, any potential advantages/disadvantages, and how it aligns with the project goals and standards.
    *   Present your analysis and proposed plan (or options, if applicable) to the user for discussion and approval.

4.  **Initial Entry in `llm_assisted_development_log.md`:**
    *   Once you and the user have agreed on the immediate next steps, make your first entry into `python_workspace/documentation/llm_assisted_development_log.md`. This entry must include:
        *   The timestamp (obtained from the user) and your LLM Identifier.
        *   **Action Type:** `SESSION_START_TAKEOVER_COMPLETED`
        *   **Summary:** "Took over project assistance. Reviewed handover summary from [Previous LLM ID if known, or date of summary], `standards.md`, and other relevant documentation. Agreed with user on next steps."
        *   **Agreed Next Steps:** Briefly list the 1-3 immediate tasks you will begin working on with the user.

5.  **Future "Projeyi devret" Command:**
    *   Be aware that if the user issues a "Projeyi devret" (Handover project) command at any point during your tenure, you are to follow the procedures outlined in:
        `python_workspace/documentation/llm_handover_procedures.md`

## General Operating Principles:
*   **Language:** Adhere strictly to English for all outputs, unless explicitly instructed otherwise by the user for a specific, temporary purpose.
*   **Log Updates:** Regularly update `llm_assisted_development_log.md` (with user approval, ideally before Git commits) with summaries of work done, decisions made, and your LLM identifier.
*   **User Profile:** Consult `user_profile_for_llm_assistance.md` and, with user permission, suggest updates if new relevant observations about user preferences emerge.
*   **Standards:** Adhere to the guidelines in `documentation/standards.md`.