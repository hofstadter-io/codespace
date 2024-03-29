# [try hof and cue on github](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=604970115)

Open a GitHub Codespace with the `hof` and `cue` tool installed
and the contents of this repository available to run and modify.

## hof

[docs.hofstadter.io](https://docs.hofstadter.io)

```
hof - the high code framework

  Learn more at https://docs.hofstadter.io

Usage:
  hof [flags] [command] [args]

Main commands:
  create                dynamic app blueprints from any git repo
  datamodel             manage, diff, and migrate your data models
  gen                   modular and composable code gen: CUE & data + templates = _
  flow                  run CUE pipelines with the hof/flow DAG engine
  fmt                   format any code and manage the formatters
  mod                   CUE dependency management based on Go mods
  chat                  co-create with AI (alpha)

Additional commands:
  help                  help about any command
  update                check for new versions and run self-updates
  version               print detailed version information
  completion            generate completion helpers for your terminal
  feedback              open an issue or discussion on GitHub

Flags:
  -h, --help             help for hof
      --include-data     auto include all data files found with cue files
      --inject-env       inject all ENV VARs as default tag vars
  -p, --package string   the Cue package context to use during execution
  -q, --quiet            turn off output and assume defaults at prompts
  -t, --tags strings     @tags() to be injected into CUE code
  -v, --verbosity int    set the verbosity of output

Use "hof [command] --help / -h" for more information about a command.
```

## cue

[cuelang.org](https://cuelang.org) | [cuetorials.com](https://cuetorials.com)

```
cue evaluates CUE files, an extension of JSON, and sends them
to user-defined commands for processing.

Commands are defined in CUE as follows:

	import "tool/exec"
	command: deploy: {
		exec.Run
		cmd:   "kubectl"
		args:  [ "-f", "deploy" ]
		in:    json.Encode(userValue) // encode the emitted configuration.
	}

cue can also combine the results of http or grpc request with the input
configuration for further processing. For more information on defining commands
run 'cue help cmd' or go to cuelang.org/pkg/cmd.

For more information on writing CUE configuration files see cuelang.org.

Usage:
  cue [flags]
  cue [command]

Available Commands:
  cmd         run a user-defined shell command
  completion  Generate completion script
  def         print consolidated definitions
  eval        evaluate and print a configuration
  export      output data in a standard format
  fix         rewrite packages to latest standards
  fmt         formats CUE configuration files
  get         add dependencies to the current module
  help        Help about any command
  import      convert other formats to CUE files
  mod         module maintenance
  trim        remove superfluous fields
  version     print CUE version
  vet         validate data

Flags:
  -E, --all-errors   print all available errors
  -i, --ignore       proceed in the presence of errors
  -s, --simplify     simplify output
      --strict       report errors for lossy mappings
      --trace        trace computation
  -v, --verbose      print information about progress

Additional help topics:
  cue commands   user-defined commands
  cue filetypes  supported file types and qualifiers
  cue flags      common flags for composing packages
  cue injection  inject files or values into specific fields for a build
  cue inputs     package list, patterns, and files

Use "cue [command] --help" for more information about a command.
```

