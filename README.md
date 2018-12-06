# cf

Tiny convenience script for `clang-format`. Will run on pretty much any POSIX system.

## Installation

```shell
curl -Lo /usr/local/bin/cf https://raw.githubusercontent.com/hoffa/cf/master/cf
chmod +x /usr/local/bin/cf
```

## Usage

```shell
cf
```

All arguments are passed as environment variables for easy piping.

Files matching `INCLUDE` are included. Those matching `EXCLUDE` are excluded.

Use `FORMAT=1` to format the files instead of checking for differences.

For example:

```shell
curl -L https://raw.githubusercontent.com/hoffa/cf/master/cf | DIR=src EXCLUDE="json\.hpp" sh
```
