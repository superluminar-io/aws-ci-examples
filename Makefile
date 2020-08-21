PR_TEST_STACK_NAME=pr-test-codebuild
MERGE_MASTER_STACK_NAME=merge-master-codebuild

pr-test:
	@aws cloudformation deploy \
		--stack-name $(PR_TEST_STACK_NAME) \
		--template-file "./pr-test-codebuild.yaml" \
		--capabilities CAPABILITY_NAMED_IAM

merge-master:
	@aws cloudformation deploy \
		--stack-name $(MERGE_MASTER_STACK_NAME) \
		--template-file "./merge-master-codebuild.yaml" \
		--capabilities CAPABILITY_NAMED_IAM
