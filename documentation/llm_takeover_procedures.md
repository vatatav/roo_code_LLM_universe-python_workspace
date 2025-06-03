# LLM Takeover Procedures (For Incoming LLM)

**Welcome!**

This document will guide you in taking over the current software development project. Our aim is to make this transition as smooth and efficient as possible.

## 1. Initial Information (To Be Updated by User Before Each Handover)

Below is essential information regarding this session and your role. Please take careful note of these details:

*   **Session Start Date:** 2025.06.03
*   **Mode:** CodeLLM - Agent
*   **LLM Model Used:** Gemini 2.5 Pro
*   **Previous LLM's Handover File Name:** python_workspace\history\handoevers\HandOver-20250603-VSCode-Extension-Agent.md

**Important Note:** I have updated the information above, especially the "Previous LLM's Handover File Name," just before providing you with this guide.

## 2. Required Reading to Understand the Project

To fully understand the project, please review the following resources in order:

1.  **Core Project Documentation:**
    *   All files within the `documentation/` folder (including this file). Pay special attention to `standards.md`, `project_lifecycle_guidelines.md`, `logging_procedures_guidelines.md`, `llm_handover_procedures.md`, and `history/progress/user_profile_for_llm_assistance.md`.
2.  **Project and User Development History:**
    *   All files within the `history/progress/` folder (e.g., `user_progress_log.md`, `llm_assisted_development_log.md`).
    *   **Note:** This `history` folder and its contents have been added to `.gitignore`, meaning they are not tracked by Git. This ensures that logs are not lost during a potential Git rollback.
3.  **Previous LLM's Handover Report:**
    *   The previous LLM's handover file, located in the `history/handovers/` folder, as named in the "Initial Information" section above: `history/handovers/[PREVIOUS_HANDOVER_FILE_NAME]`
    *   If this handover file mentions any other documents that require reading, please review them as well.

## 3. Takeover Process and Your Responsibilities

1.  **Summarize Your Understanding:** After reviewing the resources above, prepare a summary of your understanding of the project's current status, completed work, ongoing tasks, and overall objectives. Also, outline how you plan to proceed and what your initial steps will be.
2.  **Missing Information and Discrepancies:**
    *   If you cannot access any resources, or if you notice any missing information or contradictions (e.g., if your takeover date appears to be before the creation date of the previous handover file, or if there's an unexpected change in mode or model names), please inform me so that the missing elements can be provided or the situation clarified.
    *   Specifically, there should be logical consistency between the date in the previous handover file's name (the date that file was prepared) and your session start date.
    *   If you see a new "Mode" or "LLM Model" name that has not been used before, please question whether it's a typo or a genuinely new definition.
3.  **User Approval and Creation of "TakeOver" File:**
    *   Once we agree on your summary and plan, you will create a `TakeOver` file to formally confirm that you have taken over the project, following the naming convention below:
        *   **File Name Format:** `TakeOver_[TakeoverDateYYYYMMDD]_[YourMode]_[YourLLMModel].md`
        *   **Example:** `TakeOver_20250603_CodeLLM-Agent_Gemini-2.5-Pro.md`
        *   You should save this file in the `history/takeovers/` folder.
        *   The content of this file should include the summary and continuation plan we agreed upon.
4.  **Log Entries (During Takeover Phase):**
    *   When creating the `TakeOver` file, remember to make log entries in `user_progress_log.md` and `llm_assisted_development_log.md` according to the formats specified in `documentation/logging_procedures_guidelines.md`, including "Project Takeover Preparation" and relevant details.

## 4. Your Workflow and Future Handover Responsibilities

1.  **Adherence to Standards:** Throughout your work on this project, you are expected to strictly adhere to all coding, naming, and documentation standards specified in `documentation/standards.md`.
2.  **Diligent Logging:** Regularly and accurately log all significant steps, decisions, and progress in `llm_assisted_development_log.md` and `user_progress_log.md`, following the guidelines in `documentation/logging_procedures_guidelines.md`.
3.  **Preparing for Future Handover:**
    *   Should the user request you to hand over the project, you must follow the detailed procedures outlined in the `documentation/llm_handover_procedures.md` document.
    *   **Crucially, before initiating any handover steps, your first action must be to re-read the `documentation/llm_handover_procedures.md` file to ensure you are following the most current version of the handover protocol, as it may have been updated since your takeover.**

I hope this guide helps you successfully take over the project. Please let me know if you encounter any issues or have any questions.