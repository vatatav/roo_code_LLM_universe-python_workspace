# User Profile for LLM Assistance

This document provides context about the primary user of this codebase to help LLM assistants tailor their support and recommendations.

## User Background & Experience

*   **Programming Experience:** Extensive (35+ years). Has a strong desire to understand and control the development environment and processes.
*   **Python Experience:** Has worked on various personal Python projects, including file manipulation, data processing (Excel, PDF), web scraping/interaction (potentially with tools like Streamlit), and creating utilities. Familiar with Conda for environment management.
*   **Development Philosophy:**
    *   Prefers to understand the "why" behind suggestions and processes.
    *   Values clear, well-structured code and defined standards.
    *   Wants to be in control of their development environment and toolchain.
    *   Not afraid to "break things and fix them" as part of the learning process, but aims for robust solutions.
    *   Open to learning new tools and techniques but prefers to understand their benefits and drawbacks before adoption (e.g., initial skepticism about Poetry/PDM, preference for Conda).
    *   Historically, may have run tools with Administrator privileges to overcome permission issues, but is now transitioning to using normal user privileges with proper environment setup.

## Key Preferences & Working Style

*   **Language:**
    *   Prefers to communicate with LLMs in Turkish for complex discussions and ideation.
    *   Mandates that all code, file names, directory names, comments, and docstrings within the project are strictly in **English**.
*   **Code Standards:** Has a strong set of preferred coding standards (PEP 8, type hints, docstrings, error handling, logging over print, modular functions, argparse, context managers, etc.), which are largely captured in `documentation/standards.md`.
*   **Tooling:**
    *   Uses a modified version of VS Code ("CodeLLM").
    *   Prefers Conda for Python environment and package management, with a preference for `conda-forge` channel.
    *   Open to using linters (Flake8), formatters (Black), and static type checkers (Mypy).
    *   Currently setting up Mypy to be installed in each project-specific Conda environment and used via the `mypy.runUsingActiveInterpreter: true` VS Code setting.
*   **Project Structure:** Prefers a centralized monorepo-style codebase (`python_workspace`) with distinct projects in subdirectories, and a `shared_libs` directory for common utilities.
*   **Git Workflow:** Learning and implementing a structured Git workflow (feature branches, PRs, conventional commits). Appreciates reminders for commits at key milestones.
*   **LLM Interaction:**
    *   Values detailed explanations and justifications from LLMs.
    *   Engages in deep discussions to refine processes and understanding.
    *   Expects LLMs to adhere to established procedures and project standards.
    *   Proactive in identifying potential issues or areas for process improvement.
    *   Wants to build a robust "LLM-assisted development manifesto" through practical experience.
*   **Specific Dislikes/Concerns:**
    *   Installers that install software to unknown or non-user-controlled locations without prompting.
    *   Overly complex or "magical" solutions without clear understanding.
    *   Processes that require excessive manual intervention if automation is feasible (e.g., copy-pasting handover summaries).
*   **Unit Testing:** Historically has not used unit tests extensively but is open to incorporating them, especially as projects become more complex and involve shared libraries.

## Current Focus (as of 2025-05-31)

*   Establishing a robust, well-documented, LLM-assisted Python development workflow.
*   Setting up the `python_workspace` with all standard procedures, logging, and documentation.
*   Preparing to start development on the first project: `financial_tracker`.

## Notes for Assisting LLMs

*   Be prepared for detailed discussions and questions about underlying principles.
*   Refer to the established documentation (`standards.md`, `llm_handover_procedures.md`, etc.) when making suggestions.
*   When proposing new tools or techniques, explain the rationale, pros, and cons.
*   Be explicit about file paths and configurations.
*   Acknowledge and incorporate user feedback on processes and preferences.
*   Remember the primary language for code and documentation is English, even if discussions occur in Turkish.
*   Contribute to the `llm_assisted_development_log.md` as per `llm_handover_procedures.md` or `llm_takeover_procedures.md`.