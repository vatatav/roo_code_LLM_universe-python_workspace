# Python Workspace

This repository serves as a centralized workspace for various Python projects. It provides a standardized structure and a set of shared libraries and conventions to promote consistency and efficiency across projects.

## Codebase Structure

The main directory structure is organized as follows:

```
python_workspace/
├── projects/                 # Contains individual projects, each in its own subdirectory
│   └── financial_tracker/    # Example: First project
├── shared_libs/              # Shared Python modules and utilities
│   ├── __init__.py
│   ├── custom_logger.py      # For shared logging setup
│   └── pdf_utils.py          # For shared PDF processing utilities
├── documentation/
│   └── standards.md          # Coding standards, project setup guidelines, Git workflow
├── .gitignore                # Specifies intentionally untracked files that Git should ignore
└── README.md                 # This file: General overview of the codebase
```

### Project-Specific Structure

Each project within the `projects/` directory (e.g., `financial_tracker/`) follows a consistent internal structure:

```
project_name/
├── src/                      # Source code for the project
│   ├── __init__.py
│   └── main.py               # Main entry point for the project
├── tests/                    # Unit tests and integration tests
│   └── __init__.py
├── logs/                     # Project-specific log files
├── environment.yml           # Conda environment definition
├── config.json               # Project configuration (sensitive, gitignored)
├── config.template.json      # Template for config.json
└── README.md                 # Project-specific explanations and setup
```

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone <repository_url>
    cd python_workspace
    ```

2.  **Review Documentation:**
    Familiarize yourself with the coding standards, directory structures, and development workflow detailed in [`documentation/standards.md`](python_workspace/documentation/standards.md:1).

3.  **Setting up a Project:**
    *   Navigate to the specific project directory (e.g., `cd projects/financial_tracker`).
    *   Follow the instructions in the project-specific `README.md` to set up its Conda environment and configure `config.json` from `config.template.json`.

## Shared Libraries

The `shared_libs/` directory contains common utilities:
*   `custom_logger.py`: Provides a standardized logging setup function.
*   `pdf_utils.py`: Offers utilities for PDF processing, such as text extraction.

## Contributing

Please refer to [`documentation/standards.md`](python_workspace/documentation/standards.md:1) for guidelines on coding standards, commit message conventions, and the Git workflow (feature branches, Pull Requests).