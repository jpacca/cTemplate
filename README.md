# C Project Template

Small C starter project with:

- `src/` for application code
- `include/` for headers
- `tests/` for simple test binaries
- `Makefile` targets for debug, release, run, and test

## Usage

Build in debug mode:

```sh
make
```

Run the app:

```sh
make run
```

Run tests:

```sh
make test
```

Build an optimized binary:

```sh
make release
```

Clean generated files:

```sh
make clean
```

## Rename the output binary

Override `APP_NAME` when needed:

```sh
make APP_NAME=my_program
```

## Next steps

- Replace `src/app.c` and `include/app.h` with your own modules
- Expand `tests/` as the project grows
- Add dependencies or extra compiler flags in `Makefile`
