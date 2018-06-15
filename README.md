# cppfmt

Tiny convenience script for `clang-format`.

`clang-format` is called using `-style=file`.

## Install

```
curl -Lo /usr/local/bin/cppfmt https://raw.githubusercontent.com/hoffa/cppfmt/master/cppfmt
chmod +x /usr/local/bin/cppfmt
```

## Usage

Format:

```
cppfmt .
```

Check:

```
cppfmt --check .
```
