# User Profile for LLM Assistance

This document provides context about the primary user of this codebase to help LLM assistants tailor their support and recommendations. It aims to ensure a consistent and effective collaboration between the user and various LLMs over time.

## User Background & Experience

*   **Programming Experience:** Extensive (35+ years). Has a strong desire to understand, control, and continuously improve the development environment and processes.
*   **Python Experience:** Has worked on various personal Python projects, including file manipulation, data processing (Excel, PDF), web scraping/interaction, and creating utilities. Currently focused on projects like `financial_tracker` (PDF/Excel processing for financial statements) and planning for `online_shopping_tracker`. Familiar with Conda for environment management.
*   **Development Philosophy:**
    *   Prefers to understand the "why" behind suggestions and processes, not just the "how."
    *   Values clear, well-structured, maintainable, and scalable code adhering to defined standards.
    *   Wants to be in full control of their development environment, toolchain, and project architecture.
    *   Views development as a learning process; not afraid to experiment and iterate to achieve robust solutions.
    *   Open to learning new tools and techniques but requires a clear understanding of their benefits, drawbacks, and integration into the existing workflow before adoption.
    *   Actively working on building a comprehensive "manifesto" or set of guiding principles for LLM-assisted software development through practical application and refinement.
    *   Transitioning from potentially using Administrator privileges to overcome issues to a standard user privilege model with correctly configured environments.

## Key Preferences & Working Style

*   **Language:**
    *   Prefers to communicate with LLMs in **Turkish** for complex discussions, brainstorming, and detailed explanations.
    *   Mandates that all code, file names, directory names, comments, docstrings, commit messages, and any other project artifacts are strictly in **English**.
*   **Code Standards:** Adheres to a comprehensive set of coding standards, primarily documented in `documentation/standards.md`. Key aspects include PEP 8, type hints, Google-style docstrings, robust error handling, extensive logging (over print statements), modular design, use of `argparse` for CLIs, and context managers.
*   **Tooling:**
    *   Uses a modified version of VS Code ("CodeLLM").
    *   **Environment Management:** Prefers Conda for Python environment and package management, with a strong preference for the `conda-forge` channel. Each project and shared library should have its own `environment.yml`.
    *   **Code Quality:** Employs linters (Flake8), formatters (Black), and static type checkers (Mypy). Mypy is configured to be installed in each project-specific Conda environment and used via the `mypy.runUsingActiveInterpreter: true` VS Code setting.
*   **Project Structure:**
    *   Utilizes a centralized monorepo-style codebase named `python_workspace`.
    *   This workspace includes subdirectories for `projects` (e.g., `financial_tracker`), `shared_libs` (for common, reusable utilities like `pdf_utils.py`, `file_utils.py`), `documentation`, `config`, `scripts`, and `tests`.
*   **Git Workflow:**
    *   Learning and implementing a structured Git workflow, including feature branches, pull requests (even for solo work, for practice and review), and Conventional Commits.
    *   Appreciates reminders for commits at logical milestones or significant changes.
*   **LLM Interaction:**
    *   Values detailed explanations, justifications for suggestions, and discussions on alternative approaches from LLMs.
    *   Engages in deep, iterative discussions to refine requirements, processes, and overall understanding.
    *   Expects LLMs to strictly adhere to established project procedures, coding standards, and documentation (e.g., `standards.md`, `llm_handover_procedures.md`, `logging_procedures_guidelines.md`).
    *   Encourages LLMs to be proactive in identifying potential issues, suggesting improvements to code or workflow, and helping maintain the integrity and quality of the codebase.
    *   The goal is a partnership where the LLM acts as an intelligent assistant, pair programmer, and mentor.
*   **Specific Dislikes/Concerns:**
    *   Installers or tools that install software to unknown or non-user-controlled locations without explicit consent or clear explanation.
    *   Overly complex or "magical" solutions where the underlying mechanics are not clear.
    *   Processes that require excessive manual intervention if automation is feasible and robust (e.g., manual log updates if they can be streamlined).
*   **Unit Testing:**
    *   Recognizes the importance of unit testing (using Pytest) and aims to incorporate it systematically, especially for `shared_libs` and core functionalities of projects. Strives for good test coverage.

## Current Focus (as of 2025-06-02)

*   Continuing the establishment of a robust, well-documented, and LLM-assisted Python development workflow within the `python_workspace`.
*   Refining and implementing standard procedures for logging, error handling, documentation, and LLM collaboration (handover/takeover).
*   Actively developing the `financial_tracker` project:
    *   Focus on flexible PDF text extraction (initially saving raw text to `.txt` files for easier debugging and staged processing).
    *   Parsing extracted text to identify transaction details.
    *   Structuring the data and outputting it to an Excel file with specified formatting.
    *   Implementing logic for handling different currencies and beneficiary identification (with user prompts for unknowns).
*   Ensuring the `shared_libs` directory is populated with well-tested, reusable utilities.



## LLM Interaction Nuances
* The user may write prompts and questions in Turkish to convey complex ideas with nuance. However, the LLM assistant **must always respond in English**. This ensures that the entire project dialogue and all artifacts remain consistent with the project's English-only standard. (20250606)
*   If the user refers to a 'previous LLM' or uses terms like 'your predecessor' or 'your older sibling' (senin ağabeyin), they are referring to the LLM agent that worked on the project immediately before you. Similarly, if the user refers to a 'next LLM', 'your successor', or 'your younger sibling' (senin kardeşin), they are referring to the LLM agent that will take over after you. (20250603)

## Notes for Assisting LLMs

*   **Understand the Big Picture:** Familiarize yourself with the overall project structure (`python_workspace`), the user's development philosophy, and the long-term goals.
*   **Consult Documentation:** Regularly refer to `documentation/standards.md`, `documentation/project_lifecycle_guidelines.md`, `documentation/logging_procedures_guidelines.md`, `documentation/llm_handover_procedures.md`, and `documentation/llm_takeover_procedures.md`. These are the ground truth for how work should be done.
*   **Explain Your Reasoning:** Provide clear justifications for your suggestions, especially when proposing new tools, libraries, or architectural patterns. Discuss pros, cons, and alternatives.
*   **Be Explicit:** Provide specific file paths, commands, and configurations. Avoid ambiguity.
*   **Adhere to Standards:** All code provided or modified must strictly follow the project's coding standards (English, PEP 8, type hints, docstrings, logging, etc.).
*   **Iterate and Confirm:** Expect an iterative process. Confirm understanding and incorporate user feedback.
*   **Logging and Handovers:** Actively participate in maintaining `llm_assisted_development_log.md` and follow handover/takeover procedures meticulously. The goal is seamless transitions between assisting LLMs.
*   **Proactive Assistance:** Don't just wait for instructions. If you see areas for improvement, potential bugs, or deviations from standards, please point them out and suggest solutions.
*   **Language Discipline:** Remember the strict English-only rule for all code and project artifacts, even if your conversational interaction with the user is in Turkish.
*   **Empower the User:** The ultimate goal is to help the user build their skills and their ideal development system. Your role is to assist and augment, not to take over opaquely.

## Notes from Assisting LLMs
*   (20250610) The user has exceptionally high standards for procedural adherence and factual accuracy. There is zero tolerance for an LLM that misrepresents the content of project files. When an error occurs, the user expects a direct admission of fault and immediate, precise correction.