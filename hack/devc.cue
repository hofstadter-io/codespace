name: "try hof"

_version: "0.6.8-beta.2"

image: "mcr.microsoft.com/devcontainers/universal:2"

postCreateCommand: """
wget https://github.com/hofstadter-io/hof/releases/download/v\(_version)/hof_\(_version)_Linux_x86_64 -O hof
chmod +x hof
sudo mv hof /usr/local/bin/hof
echo "hallo!"
"""

customizations: {
	vscode: extensions: [
		"asdine.cue",
		"jallen7usa.vscode-cue-fmt",
	]
}
