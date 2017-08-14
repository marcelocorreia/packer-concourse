PIPELINE_NAME=packer-concourse
REPO_NAME=$(PIPELINE_NAME)
GITHUB_USER=marcelocorreia
NAMESPACE=github.com/marcelocorreia
REPO_URL=git@github.com:$(GITHUB_USER)/$(PIPELINE_NAME).git


git-push:
	git add . ; git commit -m "updating pipeline"; git push
	
pipeline: git-push
	fly -t dev set-pipeline \
		-n -p $(PIPELINE_NAME) \
		-c cicd/pipeline.yml \
		-l cicd/properties.yml \
		-l $(HOME)/.ssh/ci-credentials.yml

	fly -t dev unpause-pipeline -p $(PIPELINE_NAME)
.PHONY: pipeline

pipeline-destroy:
	fly -t dev destroy-pipeline -p $(PIPELINE_NAME)
.PHONY: pipeline-destroy