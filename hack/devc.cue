name: "try hof"

_version: "0.6.8-beta.1"

image: "mcr.microsoft.com/devcontainers/universal:2"

postCreateCommand: """
echo "hallo!"

wget https://github.com/hofstadter-io/hof/releases/download/v\(_version)/hof_\(_version)_Linux_x86_64 -O /usr/local/bin/hof
chmod +x /usr/local/bin/hof
"""

customizations: {
	vscode: extensions: [
		"asdine.cue",
		"jallen7usa.vscode-cue-fmt",
	]
}
