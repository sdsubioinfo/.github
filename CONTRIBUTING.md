# Contributing to SDSU ADRDL Bioinformatics Repositories

Thank you for your interest in contributing to the **South Dakota State University Animal Disease Research and Diagnostic Laboratory (ADRDL) Bioinformatics Group** open-source ecosystem!

We welcome contributions from computational biologists, bioinformaticians, veterinary clinicians, software engineers, and researchers worldwide.

---

## 🛠️ Code of Conduct & Principles

Our group builds software aimed at advancing infectious disease surveillance, diagnostic rigor, and scientific reproducibility. When contributing:
- Ensure all algorithms and models adhere to reproducible computational standards.
- Maintain transparent documentation of sequence validation, filtering thresholds, and analytical assumptions.
- Respect scientific and diagnostic integrity: automated clinical classifications must prioritize precision and clearly flag uncertain, novel, or out-of-distribution inputs.

---

## 🚀 How to Contribute

### 1. Reporting Bugs & Inaccuracies
If you encounter a bug, installation failure, or discrepancy in a diagnostic prediction:
1. Search existing issues to verify the problem has not already been reported.
2. Open a new GitHub issue with:
   - A clear title and concise description.
   - Exact environment details (OS, Python version, package versions via `pip list` or `conda list`).
   - A minimal reproducible example (e.g., sample input sequence or CLI command).
   - Expected vs. observed output.

### 2. Suggesting Enhancements & New Pathogen Modules
We continuously expand our diagnostic pipelines to support emerging veterinary pathogens:
1. Open an issue with the tag `enhancement`.
2. Outline the clinical or biological motivation, proposed methodology, and reference datasets.
3. Discuss with maintainers before undertaking major architectural changes.

### 3. Submitting Pull Requests (PRs)
1. Fork the target repository under your personal GitHub account.
2. Clone your fork locally:
   ```bash
   git clone https://github.com/<your-username>/<repo-name>.git
   cd <repo-name>
   ```
3. Create a feature branch:
   ```bash
   git checkout -b feature/my-enhancement
   ```
4. Implement your changes following group conventions:
   - Include docstrings and type annotations.
   - Add unit tests covering standard inputs and edge cases (empty files, ambiguous IUPAC characters, corrupted records).
   - Format code using modern linters (e.g. `ruff check .` or `black`).
5. Ensure all automated tests pass:
   ```bash
   pytest
   ```
6. Commit with clear, descriptive messages:
   ```bash
   git commit -m "feat: add support for segmented rotavirus constellation parsing"
   ```
7. Push to your fork and submit a Pull Request to `main`.

---

## 📬 Contact & Questions

For research partnerships, collaborative grant proposals, or sensitive clinical pathogen inquiries:
- **Dr. Sunil Mor**: `sunil.mor@sdstate.edu`
- **Dr. Naveen Duhan**: `naveen.duhan@sdstate.edu`
