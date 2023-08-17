all: .devcontainer/devcontainer.json

.devcontainer/devcontainer.json: hack/devc.cue
	cue export hack/devc.cue -f -o .devcontainer/devcontainer.json

HOF_VER?=0.6.8
CUE_VER?=v0.6.0

versions:
	@echo "HOF_VER: $(HOF_VER)"
	@echo "CUE_VER: $(CUE_VER)"

setup:
	# install hof
	wget https://github.com/hofstadter-io/hof/releases/download/v$(HOF_VER)/hof_$(HOF_VER)_Linux_x86_64 -O hof
	chmod +x hof
	sudo mv hof /usr/local/bin/hof

	# install cue
	mkdir -p tmp
	cd tmp && wget https://github.com/cue-lang/cue/releases/download/$(CUE_VER)/cue_$(CUE_VER)_linux_amd64.tar.gz -O cue.tar.gz
	cd tmp && tar -xf cue.tar.gz
	cd tmp && sudo mv cue /usr/local/bin/cue
	rm -rf tmp
