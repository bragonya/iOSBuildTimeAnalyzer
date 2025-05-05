## 📦 iOS Kotlin Build Time Analyzer

A tool to analyze Xcode build logs, extract useful timing data, and generate visual reports to help identify bottlenecks and improve iOS build times.

**Note/Disclaimer:** This project is for learning purposes from someone who has worked mostly in Android ecosystem and definitely not iOS expert.

---

### 🚀 Features
- Parse `xcodebuild` logs and extract timing information
- Summarize time spent in each build phase
- Highlight slowest targets and files
- Output report in JSON, HTML, or CLI formats
- CI/CD integration-ready (GitHub Actions, Bitrise, etc.)

---

### 🧰 Usage
```bash
# Parse a build log and generate JSON summary
$ ios-build-analyzer parse build.log --output build_report.json

# Generate an HTML report
$ ios-build-analyzer report build_report.json --html --output report.html

# Directly from xcodebuild
$ xcodebuild -workspace App.xcworkspace -scheme App -destination 'platform=iOS Simulator,name=iPhone 15' -showBuildTimingSummary | ios-build-analyzer parse --output build.json
```

---

### 🛠️ Tech Stack
- **Kotlin** (parser / CLI)
- **React / Tailwind** (HTML report UI)
- **Node.js** (for local preview tooling)

---

### 📁 Project Structure
```
ios-build-analyzer/
├── cli/                    # Kotlin CLI app
│   ├── Main.kt
│   └── parser/
│       ├── LogParser.kt
│       └── BuildPhase.kt
├── web-report/            # React app for HTML reports
│   └── ...
├── examples/
│   └── sample_build.log
├── scripts/
│   └── ci_integration.sh  # Helper for CI/CD usage
├── README.md
└── build.gradle.kts
```

---

### 📈 Sample JSON Output
```json
{
  "totalTime": "92.3s",
  "phases": [
    { "name": "Compile Swift", "duration": "45.2s" },
    { "name": "Link", "duration": "15.1s" },
    { "name": "CodeSign", "duration": "5.3s" }
  ],
  "slowestFiles": [
    { "file": "MainViewController.swift", "duration": "7.8s" },
    { "file": "LoginManager.swift", "duration": "6.3s" }
  ]
}
```

---

### 👾 Want to Contribute?
This project is open to contributions! Ideas and PRs welcome. Ideal for iOS devs who want to speed up their build times or learn about Kotlin multiplatform tooling.

