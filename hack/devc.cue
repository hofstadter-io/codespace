name: "try hof"

_version: {
	hof: "0.6.8-beta.5"
	cue: "v0.5.0-beta.5"
}

image: "mcr.microsoft.com/devcontainers/universal:2"

customizations: {
	vscode: extensions: [
		"asdine.cue",
		"jallen7usa.vscode-cue-fmt",
	]
}

onCreateCommand: """
# install hof
wget https://github.com/hofstadter-io/hof/releases/download/v\(_version.hof)/hof_\(_version.hof)_Linux_x86_64 -O hof
chmod +x hof
sudo mv hof /usr/local/bin/hof

# install cue
wget https://github.com/cue-lang/cue/releases/download/\(_version.cue)/cue_\(_version.cue)_linux_amd64 -O cue
chmod +x cue
sudo mv cue /usr/local/bin/cue
"""

