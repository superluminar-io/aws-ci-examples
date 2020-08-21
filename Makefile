PR_TEST_STACK_NAME=pr-test-codebuild

pr-test:
	@aws cloudformation deploy \
		--stack-name $(PR_TEST_STACK_NAME) \
		--template-file "./pr-test-codebuild.yaml" \
		--capabilities CAPABILITY_NAMED_IAM
