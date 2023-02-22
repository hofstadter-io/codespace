all: .devcontainer/devcontainer.json

.devcontainer/devcontainer.json: hack/devc.cue
	cue export hack/devc.cue -f -o .devcontainer/devcontainer.json

HOF_VER=0.6.8-beta.5
CUE_VER=v0.5.0-beta.5
setup:
	# install hof
	wget https://github.com/hofstadter-io/hof/releases/download/v$(HOF_VER)/hof_$(HOF_VER)_Linux_x86_64 -O hof
	chmod +x hof
	sudo mv hof /usr/local/bin/hof

	# install cue
	wget https://github.com/cue-lang/cue/releases/download/$(CUE_VER)/cue_$(CUE_VER)_linux_amd64 -O cue
	chmod +x cue
	sudo mv cue /usr/local/bin/cue
