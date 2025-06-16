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

-   **Agent Name:** `Dispatcher Agent` (Yönlendirici)
-   **Purpose:** The central controller. Its core responsibilities are:
    1.  To acquire the **Session Configuration** from the user at startup.
    2.  To act as the primary user interface, managing the main control loop.
    3.  To delegate all tasks to other agents based on the rules defined in the current Session Configuration.
-   **LLM Tier:** **Low-Cost / High-Speed.**

### Tier 2: The Specialist Planner

-   **Agent Name:** `Planner Agent`
-   **Purpose:** A specialized, advisory agent used for complex problem-solving. It is a stateless tool called by the `Dispatcher`.
-   **Workflow:**
    1.  Receives a single complex goal from the `Dispatcher`.
    2.  Its **sole output** is a structured, step-by-step plan to achieve that goal.
    3.  The plan **must** include a recommendation for which Tier 3 worker agent is best suited for each step.
-   **LLM Tier:** **High-Reasoning / High-Capability**.
-   **Tool Access:** **None.** It is a pure reasoning engine. All context it needs must be provided by the `Dispatcher`.

### Tier 3: Generic Worker Agents

These are single-purpose tools that receive a task and all necessary context from the `Dispatcher`. They are stateless.
-   `Takeover/Handover Agent`: Executes a procedural process defined in a file path provided by the Dispatcher.
-   `Developer Agent`: Writes or modifies code based on a specific instruction.
-   `QA / Verifier Agent`: Checks the output of another agent against a given set of standards.
-   `Read Agent`, `Logging Agent`, `Git Agent`, etc.

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