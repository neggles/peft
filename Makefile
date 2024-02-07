.PHONY: quality style test docs

check_dirs := src tests examples

# Check that source code meets quality standards

# this target runs checks on all files
quality:
	pre-commit run --all-files
	doc-builder style src tests --max_len 119 --check_only

# Format source code automatically and check is there are any problems left that need manual fixing
style:
	pre-commit run
	doc-builder style src tests --max_len 119
