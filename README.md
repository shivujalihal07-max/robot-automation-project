# Robot Framework Automation Project

UI test automation framework built with Robot Framework and SeleniumLibrary,
using https://www.saucedemo.com as the application under test.

## Tech Stack

- Python 3.x
- Robot Framework
- SeleniumLibrary
- Git

## Project Structure

```
├── tests/         # Test suites (.robot)
├── resources/     # Page-level keywords and locators
├── variables/     # Environment config and test data
├── libraries/     # Custom Python keyword libraries
├── results/       # Generated reports (ignored by Git)
└── requirements.txt
```

## Prerequisites

- Python 3.8 or higher
- Google Chrome
- Git

## Setup

```bash
git clone <repo-url>
cd robot-automation-project
python -m venv venv
venv\Scripts\activate        # Windows
pip install -r requirements.txt
```

## Running Tests

Run all tests:
```bash
robot -d results tests
```

Run by tag:
```bash
robot -d results -i smoke tests
```

Run in headless mode:
```bash
robot -d results -v BROWSER:headlesschrome tests
```

## Reports

After a run, open `results/report.html` for the summary and
`results/log.html` for keyword-level details.

## Scenarios Covered

- Valid user login
- Invalid password error
- Locked-out user error