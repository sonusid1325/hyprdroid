# Contributing Guidelines

Thank you for your interest in contributing to this project. To ensure a smooth collaboration process, please adhere to the following guidelines.

## General Guidelines

- **Isolate Changes:** Please submit separate Pull Requests (PRs) for distinct features or bug fixes. Avoid bundling personal configuration changes or altered defaults with your primary submission.
- **Configurable Features:** We welcome feature proposals even if they are outside the core scope of the project. In such cases, we kindly request that these features be made configurable or optionally loaded.
- **Significant Changes:** If you plan to undertake a substantial addition or modification, we recommend discussing it with the maintainers beforehand to ensure alignment and prevent duplicated effort.

## Translations

For information regarding translations, please refer to the documentation located at `dots/.config/quickshell/ii/translations/tools`.

## Code Standards

### Dynamic Loading

- **Loader Utilization:** If a component is not universally required—especially when guarded by a configuration option—encapsulate it within a `Loader`.
- **Positioning:** Ensure that positioning properties (such as `anchors`) are declared within the `Loader` itself, rather than in the `sourceComponent`.
- **Animations:** For dynamically loaded components that do not impact their parent layout, you may implement fading animations using `FadeLoader`. In such cases, utilize the `shown` property instead of `active` and `visible`.

### Practicality and Usability

- **Resource Management:** Contributions should not impose significant resource overhead for minor aesthetic enhancements. It is essential that the configuration remains highly practical and performant for daily use.
- **Default Configurations:** Highly stylized or resource-intensive features must include a configuration toggle and should be disabled by default.

### Code Style

- **Spacing and Formatting:** 
  - Organize properties and child elements into logical groups using blank lines for readability.
  - Insert spaces between text and operators (e.g., use `if (condition) { ... } else { ... }` rather than `if(condition){ ... }else{ ... }`).
- **Nesting Mitigation:** While complex layouts may require nesting, please strive to minimize it where possible.
  - **Early Returns:** Prefer early returns to reduce indentation depth (e.g., `if (!condition) return; doStuff();`).
  - **Reusable Components:** If refactoring into a separate file is impractical, utilize the `component` keyword to declare reusable components within the same file.

## Environment Setup

The following setup instructions assume an Arch-based Linux environment.

### Complete Installation

Although a full installation may not be strictly necessary depending on the scope of your changes, it is highly recommended. 
- Please install the configuration on a dedicated test user account if you prefer not to modify your primary setup.
- Implement your changes, transfer them to your fork, and submit a Pull Request.

### Partial Shell Functionality

For a minimal development environment:
- Install Hyprland and the development version of Quickshell (`yay -S hyprland quickshell-git`).
- Copy the `dots/.config/quickshell` directory to your home directory.

### Quickshell Configuration

- **LSP Support:** To enable proper Language Server Protocol (LSP) support for Quickshell, execute `touch ~/.config/quickshell/ii/.qmlls.ini`.
- **VSCode Integration:** Install the official "Qt Qml" extension. Navigate to its settings and update the custom executable path to `/usr/bin/qmlls6`.

### Python Environment

If your contribution involves Python packages or scripts, please utilize the virtual environment managed by `uv`, as detailed in `sdata/uv/README.md`.

## Execution and Testing

- Launch Hyprland (ensure it is not the `uwsm-managed` session).
- To start the shell for development:
  - Open the `~/.config/quickshell/ii` directory in your preferred code editor.
  - Execute `pkill qs; qs -c ii` within a terminal to initiate the shell and view standard output logs.
  - Modifications made to the open directory will be hot-reloaded automatically.
