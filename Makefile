
dist:
	rm -rf dist
	python setup.py sdist

test-dist: dist
	twine check dist/*

test-upload: dist
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*

upload: dist
	twine upload dist/*

