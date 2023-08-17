name: "try hof"

_version: {
	hof: "0.6.8"
	cue: "v0.6.0"
}

image: "mcr.microsoft.com/devcontainers/universal:2"

customizations: {
	vscode: extensions: [
		"asdine.cue",
		"jallen7usa.vscode-cue-fmt",
	]
}

onCreateCommand: "HOF_VER=\(_version.hof) CUE_VER=\(_version.cue) make setup"
