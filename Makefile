upload:
	@rm -rf build
	@rm -rf dist
	@sudo rm -rf sewer.egg-info
	@python setup.py sdist
	@python setup.py bdist_wheel
	@twine upload dist/* -r testpypi
	@sudo pip install -U -i https://testpypi.python.org/pypi sewer

uploadprod:
	@rm -rf build
	@rm -rf dist
	@sudo rm -rf sewer.egg-info
	@python setup.py sdist
	@python setup.py bdist_wheel
	@twine upload dist/*
	@sudo pip install -U sewer

test:
	@find . -type f -name \*.pyc -delete | echo
	@coverage erase
	@coverage run --omit="*tests*,*.virtualenvs/*,*__init__*,*/usr/local/lib/python2.7/dist-packages*" -m unittest discover
	@coverage report --show-missing --fail-under=75
	@flake8 .