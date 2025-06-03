# LLM Handover Procedures (For Outgoing LLM)

This document outlines the procedures to be followed by an LLM assistant when the user issues a command to hand over the project (e.g., "Projeyi devret"). The goal is to ensure all necessary information is packaged for a smooth transition to a new LLM, with user approval at a critical checkpoint.

## 1. Prerequisites for LLM

*   You must have access to read and write files within the `python_workspace/`.
*   You should be aware of your own LLM Identifier (Mode and Model) and your original takeover date for this project (e.g., from your `TakeOver_...md` file or initial logs).
*   You must be able to request the current date and time from the user for logging purposes.
*   **Crucially, ensure you are familiar with THIS document (`llm_handover_procedures.md`) in its most current state before proceeding.**

## 2. Procedure Upon Receiving "Projeyi devret" Command

### Step 1: Acknowledge, Request Current Information

1.  Acknowledge the user's request to hand over the project.
2.  Request the current date and time from the user (for logging and potential file naming).
3.  Confirm your LLM Identifier (Mode, Model) and your original takeover date for this project with the user.

### Step 2: Prepare Draft Handover Report & Git Activity Summary

Compile a comprehensive **Draft Handover Report**. This report should include:

1.  **Overall Project Goal(s):** What is the project trying to achieve?
2.  **Current Workspace/Project Root Path:** (e.g., `d:\\AI_projects\\roo_code_LLM_universe\\python_workspace\\`)
3.  **Detailed Current Status of Files and Directories:**
    *   List key directories created/modified within `python_workspace`.
    *   List key files created/modified (especially in `documentation/`, `shared_libs/`, and the current project like `projects/financial_tracker/`), noting if they are empty, partially populated, or considered complete.
    *   Mention any significant files or features that are planned but not yet started.
4.  **Summary of Key Decisions Made and Important Actions Taken During Your Tenure:** (e.g., choices about Python versions, library installations, tooling setup, core architectural decisions discussed).
5.  **Git Activity Summary (as per `llm_takeover_procedures.md` guidelines):**
    *   Key commits (messages, branches involved).
        *   Ensure all commits made *during the current LLM's entire tenure* are listed, including any preliminary commits for setup, corrections, or documentation updates made at the start or throughout the session.
    *   Creation of new branches and their purpose.
    *   Merges performed.
    *   Any significant rebasing or rollback operations (if applicable and noteworthy, along with reasons).
6.  **The Very Next Immediate Planned Step(s) You Were About to Undertake or Propose:** What was the immediate next piece of work?
7.  **Pointers to Crucial Documentation/Standard Files:** Remind the user/next LLM about:
    *   `documentation/standards.md`
    *   `documentation/llm_takeover_procedures.md` (for the incoming LLM)
    *   `documentation/project_lifecycle_guidelines.md`
    *   `documentation/logging_procedures_guidelines.md`
    *   `history/progress/user_profile_for_llm_assistance.md`
    *   The main project `README.md` and any project-specific `README.md` files.
8.  **Your Role During Tenure:** Briefly describe the role you fulfilled.
9.  **Specific Instructions/Context for the New LLM (Optional but helpful):** Any nuances, unresolved discussions, or specific areas the new LLM should pay attention to.
10. **Review and Suggest User Profile Updates (Optional):**
    *   Reflect on your interactions with the user during your tenure.
    *   If you have observed any new, significant, or changed user preferences, working styles, or communication nuances that are not yet captured (or not accurately captured) in `history/progress/user_profile_for_llm_assistance.md`, consider proposing additions or modifications.
    *   Any proposed changes should be clearly formulated. If you suggest adding them directly to the user profile, they should be marked with the current session's date (YYYYMMDD) in parentheses, similar to existing entries.
    *   These suggestions can be presented to the user along with the Draft Handover Report for their consideration and approval before you (or the user) would modify the profile.

### Step 3: Present Draft Report to User for Approval & Check for Outstanding User Actions

1.  Present the complete Draft Handover Report (including the Git Activity Summary) to the user.
2.  Clearly state that this is the proposed content for the official `HandOver` file.
3.  **Outstanding User Actions Check:** Review if there are any pending actions the user was expected to perform during your tenure (e.g., file deletions, specific Git commands that you cannot execute) that have not been confirmed as completed. If so, gently remind the user and request confirmation or completion before asking for final handover approval.
4.  Explicitly ask for the user's approval to proceed with creating the `HandOver` file and finalizing the handover, once any outstanding user actions are resolved.

### Step 4: Handle User's Decision

#### A. If User APPROVES Handover:

1.  **Final Git Commit:**
    *   Confirm with the user that all recent work is stable and ready to be committed.
    *   Propose a final Git commit message to the user (e.g., "docs: Finalize session work and prepare for LLM handover").
    *   The user should perform this final commit.
2.  **Create Official `HandOver` File:**
    *   Create the `HandOver` file in the `python_workspace/history/handovers/` directory.
    *   **File Name Format:** `HandOver_[HandoverPrepDateYYYYMMDD]_[YourMode]_[YourLLMModel]_[YourTakeoverDateYYYYMMDD].md`
        *   `[HandoverPrepDateYYYYMMDD]`: The current date (when the handover is being prepared).
        *   `[YourMode]`: Your LLM's mode.
        *   `[YourLLMModel]`: Your LLM's model name.
        *   `[YourTakeoverDateYYYYMMDD]`: The date you (the outgoing LLM) originally took over the project.
    *   **Content:** The approved Draft Handover Report, including the detailed Git Activity Summary.
3.  **Update Log Files (`llm_assisted_development_log.md` and `user_progress_log.md`):**
    *   Append a final session-closing entry to both log files.
    *   In `llm_assisted_development_log.md`:
        *   **Phase:** `Project Handover Finalization`
        *   **LLM Interactions - Actions:** Detail the steps taken: User approved handover, `HandOver` file created (specify name), final Git commit made by user.
        *   **Session Highlights:** Include key achievements of the session and explicitly mention the Git Activity Summary (or include it directly).
    *   In `user_progress_log.md`:
        *   **Topic:** `Project Handover to New LLM Completed`
        *   **Insights & Learnings:** User reflections on the handover process.
    *   Ensure the `Session End` markers are correctly placed with final item counts.
4.  **Inform User of Completion:**
    *   Notify the user that the `HandOver` file has been created (provide the full path), the development logs have been updated, and the project is now formally ready for the next LLM.

#### B. If User DOES NOT Approve Handover (e.g., requests more work, postpones):

1.  **Acknowledge User's Decision:** Confirm understanding of the user's request to postpone or add tasks.
2.  **Log Postponement:**
    *   Append an entry to `llm_assisted_development_log.md` and `user_progress_log.md`.
    *   In `llm_assisted_development_log.md`:
        *   **Phase:** `Project Handover Postponement`
        *   **LLM Interactions - Actions:** "User reviewed the draft handover report and decided to postpone the handover. Reason: [User's reason, if provided]. Project development will continue with the following tasks: [List new/continuing tasks specified by the user]."
    *   In `user_progress_log.md`:
        *   **Topic:** `Project Handover Postponed by User`
        *   **Insights & Learnings:** User's rationale for postponement and any learnings from the pre-handover review.
3.  **Do NOT Create `HandOver` File:** The official `HandOver` file is not created at this time.
4.  **Continue Project Work:** Resume assisting the user with the ongoing or newly assigned tasks. The handover process can be re-initiated by the user at a later time (starting again from Step 1 of these procedures).
