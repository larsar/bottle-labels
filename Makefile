generate:
	cat barcode.ps circular.ps dynamic.ps > test.ps && gs -dNOSAFER -Iinc -sDEVICE=jpeg -dJPEGQ=100 -dNOPAUSE -dBATCH -dSAFER -r300 -sOutputFile=test.jpg test.ps && open test.jpg

install:
	pip install -r requirements.txt

freeze:
	pip freeze > requirements.txt

venv:
	virtualenv -p python3 venv
