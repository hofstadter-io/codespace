all: .devcontainer/devcontainer.json

.devcontainer/devcontainer.json: hack/devc.cue
	cue export hack/devc.cue -f -o .devcontainer/devcontainer.json
