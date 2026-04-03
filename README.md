# C Project Template

A minimal, reusable template for starting new C projects without dragging old project logic into the next one.

It provides a clean layout, a small example module, a basic test target, and a `Makefile` with the most common development commands.

## Features

- Clear project structure with `src/`, `include/`, and `tests/`
- `Makefile` targets for debug, release, run, and test workflows
- Sensible compiler warnings enabled by default
- Small example module to replace with your own code
- Simple assertion-based test to use as a starting point

## Project Layout

```text
.
├── include/
│   └── app.h
├── src/
│   ├── app.c
│   └── main.c
├── tests/
│   └── test_app.c
├── Makefile
└── README.md
```

## Quick Start

Build the project in debug mode:

```sh
make
```

Run the program:

```sh
make run
```

Run the test binary:

```sh
make test
```

Build an optimized release binary:

```sh
make release
```

Remove generated files:

```sh
make clean
```

## Output Binary

By default the compiled program is written to:

```text
bin/app
```

You can change the output name at build time:

```sh
make APP_NAME=my_program
```

## How To Use This Template

1. Rename the repository for your new project.
2. Replace the example module in `src/app.c` and `include/app.h`.
3. Update `src/main.c` to match your program entrypoint.
4. Add new modules under `src/` and matching headers under `include/`.
5. Expand `tests/` with project-specific test files.

## Makefile Targets

- `make` or `make debug`: build a debug binary
- `make release`: build an optimized release binary
- `make run`: build and run the program
- `make test`: build and run the example test
- `make clean`: remove generated build artifacts

## Compiler Settings

The template uses:

- C17
- `-Wall`
- `-Wextra`
- `-Wpedantic`
- `-Wshadow`
- `-Wconversion`

These flags help catch common mistakes early and keep the codebase strict from the start.

## Notes

- Generated files are written to `build/` and `bin/`
- These directories are ignored by Git via `.gitignore`
- The included test uses `assert` to keep the starter lightweight

## Next Steps

Common additions after starting a real project:

- Argument parsing
- Multiple test files
- Static analysis targets
- Formatting targets
- Dependency management
- Platform-specific build flags

If you want, I can also tailor this README for a more specific style:

- plain and professional
- more polished/open-source friendly
- Spanish
- bilingual English/Spanish
