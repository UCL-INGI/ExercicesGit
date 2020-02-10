extract:
	pybabel extract -o messages.pot -F babel.cfg ../../../

init:
	pybabel init -i messages.pot -d lang -l en

update:
	pybabel update -i messages.pot -d lang -l en
	pybabel compile -d lang
	cp lang/en/LC_MESSAGES/messages.mo en.mo
