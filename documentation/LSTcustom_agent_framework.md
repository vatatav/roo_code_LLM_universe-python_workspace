# A Dynamic and Configurable Agent-Based Development Framework

## 1. Introduction

This document outlines the architecture for a general-purpose, multi-agent system. The framework is designed to be highly configurable and adaptable, moving beyond a single, hardcoded workflow. Its core purpose is to allow the user to define a "Mode of Operation" at the start of each session, dictating the procedures, rules, and agents to be used.

This approach provides maximum flexibility, allowing for different levels of rigor—from rapid, "quick and dirty" scripting to fully-audited, procedural project development—all within the same underlying agent architecture.

## 2. Core Principles

-   **Dynamic Configuration:** The framework is not tied to a single project's rules. The session's entire workflow, including logging, standards, and procedures, is determined by a **Session Configuration** provided by the user at startup.
-   **Dispatcher as Session Runner:** A lightweight `Dispatcher Agent` acts as the central controller and primary user interface. Its first action is to load and understand the session's configuration, which then dictates all subsequent actions.
-   **Strict Separation of Planning & Execution:** A powerful `Planner Agent` is used exclusively for the cognitive task of creating multi-step plans. The `Dispatcher` is responsible for managing the execution of those plans.
-   **Generic & Reusable Agents:** All agents are designed to be generic tools. They do not have hardcoded knowledge of specific project file paths or rules. All necessary context is provided to them dynamically by the `Dispatcher` for each task.

## 3. The Session Configuration File

The behavior of the entire framework for a given session is defined by a user-provided configuration file (e.g., `session_configs.md`). This file is the "Operating Manual" for the session.

-   **Loading:** The `Dispatcher` will ask for this file at the start of a session if one is not provided in the initial prompt.
-   **Contents:** This file should define:
    -   **Operating Mode:** A name for the workflow (e.g., "Full Project Development," "Quick Scripting").
    -   **Procedural Rules:** Paths to the documents that govern the session's rules (e.g., path to handover procedures, coding standards, etc.). This section can be omitted for modes that do not use them.
    -   **Logging Level:** Whether logging is enabled, and to what extent.
    -   **Agent Roster:** Which agents are available for this mode of operation.

## 4. Generic Agent Architecture

### Tier 1: The Session Runner

-   **Agent Name:** `Dispatcher Agent` (Central Controller)
-   **Purpose:** The central controller. Its core responsibilities are to acquire the Session Configuration, manage the main control loop, and delegate all tasks. It also handles administrative duties.
-   **LLM Tier:** **Low-Cost / High-Speed.**
-   **Tool Access:** Possesses `log` and `git` permissions to handle administrative tasks (like logging session phases or committing work) as directed by the workflow.

### Tier 2: The Specialist Planner

-   **Agent Name:** `Planner Agent`
-   **Purpose:** A specialized, advisory agent used for complex problem-solving. Its sole output is a structured, step-by-step plan which it returns to the `Dispatcher`.
-   **LLM Tier:** **High-Reasoning / High-Capability**.
-   **Tool Access:** **None.** It is a pure reasoning engine.

### Tier 3: Generic Worker Agents

These are single-purpose tools that receive a task and all necessary context from the `Dispatcher`. They are stateless.
-   **`Takeover & Handover Agent`**: A low-cost, procedural agent responsible for executing session start and end workflows.
    -   **Tool Access**: Has direct `read` and `write` access to perform its duties as defined in the procedure documents provided by the `Dispatcher`.
-   **`Developer Agents (Tiered)`**
    -   **`Junior Developer Agent`**: A low-cost model for simple, boilerplate tasks. Has `read` and `edit` access.
    -   **`Developer Agent`**: A mid-tier model for standard feature work. Has `read` and `edit` access.
    -   **`Senior Developer Agent`**: A high-capability model for complex logic and architecture. Has `read` and `edit` access.
-   **`QA / Verifier Agent`**: A specialized agent for quality control, checking agent output against a set of rules.
    -   **Tool Access**: Has `read` access to examine files and compare them against standards.
-   **`Documentation Agent`**: A mid-tier agent specialized in generating and updating documentation.
    -   **Tool Access**: Has `read` access to understand code and `edit` access limited to markdown files.

## 5. The Dynamic Workflow in Action

1.  **Session Start:** User starts a session, providing a **Session Configuration** file.
2.  **Configuration Load:** The `Dispatcher` loads the configuration. It now knows the "rules of the game" for this session (e.g., "Full Project Development Mode").
3.  **Takeover (if configured):** The `Dispatcher` calls the `Takeover Agent`, providing it with the path to the takeover procedure document (from the session config).
4.  **Goal Setting:** The `Dispatcher` interacts with the user to establish the session's goals.
5.  **Planning (if needed):** For a complex goal, the `Dispatcher` sends the goal to the `Planner Agent`. The `Planner` returns a step-by-step plan.
6.  **Execution Loop:** The `Dispatcher` takes the plan and executes it one step at a time. For each step, it:
    a. Informs the user of the step.
    b. Seeks user approval.
    c. Delegates the task to the recommended Tier 3 worker, providing all necessary context (e.g., code snippets, rule summaries).
    d. Receives the result from the worker.
7.  **Loop Continuation:** After a step is complete, the `Dispatcher` returns to the user for approval to start the next step, continuing until the plan is complete or the user interrupts.

## 6. Interaction Protocols

### 6.1 Session Phase Management (Emergent Workflow)

-   **Responsibility:** The `Dispatcher Agent` is responsible for managing Session Phases.
-   **Emergent Nature:** Phases are not pre-defined. The goals for a new phase (e.g., Phase II) are only established through a conversation between the `Dispatcher` and the user **after** the final goal of the previous phase (e.g., Phase I) has been successfully completed.
-   **Process:**
    1. The `Dispatcher` tracks the list of goals for the current phase.
    2. When the last goal is completed, the `Dispatcher` recognizes the phase is complete.
    3. It proposes the `Session Phase End` log entry to the user.
    4. Upon approval, it then engages the user in a new conversation to define the goals for the next phase.
    5. Once new goals are agreed upon, it proposes a `Session Phase Start` log entry before continuing the main control loop.

### 6.2 Failure Handling

-   **Supervision:** The agent that delegates a task is that task's direct supervisor. In this model, the **`Dispatcher Agent`** is the supervisor for all high-level plan steps.
-   **Failure Reporting:** If any agent fails its task, it reports the failure back to the `Dispatcher`.
-   **Resolution:** The `Dispatcher` reports the failure to the user and asks for instructions.

### 6.3 Verification

-   Verification via the `QA / Verifier Agent` is a sub-task that can be included in a plan created by the `Planner Agent`; it is not automatic for all actions.