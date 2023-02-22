all: devc

devc: hack/devc.cue
	cue export hack/devc.cue -f -o .devcontainer/devcontainer.json
