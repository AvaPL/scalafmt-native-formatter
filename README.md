# scalafmt-native-formatter
An action which uses scalafmt-native to format the code. By default it automatically picks up your scalafmt version from .scalafmt.conf file and runs `scalafmt --list` on your repository. [scalafmt-native](https://scalameta.org/scalafmt/docs/installation.html#native-image) is used for fast startup and improved performance by avoiding JVM.

Inspired by [openlawteam/scalafmt-ci](https://github.com/openlawteam/scalafmt-ci)

## Usage

```yaml
name: scalafmt
on: [push]

jobs:
  scalafmt-native-formatter:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Checking the code with scalafmt
        uses: AvaPL/scalafmt-native-formatter@v0.1.0
        with:
          conf-path: path/to/.scalafmt.conf
          args: "--exclude i/am/excluded/Bad.scala --list"
```

There are two action arguments available:
* (optional) **conf-path** - path to .scalafmt.conf (default: .scalafmt.conf at the root of your repository)
* (optional) **args** - arguments passed to scalafmt-native (default: `"--list"`)

## Contributing
The action is in ***really*** early stage of development. If you want to report an issue or add a new functionality feel free to do so.
