# clingy

Convenience script for Clang formatter and linter. Only requires `clang-format` and `clang-tidy`.

## Install

```
cd /usr/local/bin
curl -O https://raw.githubusercontent.com/hoffa/cppy/master/clingy
chmod +x clingy
```

## Examples

Format:

```
clingy format .
```

Check format:

```
clingy format-check .
```

Lint:

```
clingy tidy .
```
