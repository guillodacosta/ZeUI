# ZemogaUI

UI components working on SwiftUI and designed for using in Zemoga's applications

# Installation

## Using Swift Package Manager
Once you have your package set up, for adding ZemogaUI you just need to add this dependency as follows in your Package.swift:
```
dependencies: [
    .package(url: "https://github.com/guillodacosta/ZeUI.git", .upToNextMajor(from: "1.0.0"))
]

```
# Usage

## Components

### ZCell 
```
import zemogaUI

VStack(alignment: .leading) {
    ZCell(data.title)
        .font(.title)
    ZCell("Prefix \(data.title)")
        .font(.caption)
}
```

### ZList
```
```

# Collaborating

You can add or update the current Views by working in the Sources files of the project. 


