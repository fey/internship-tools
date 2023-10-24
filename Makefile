install:
	rm -f duckdb_cli-linux-amd64.zip duckdb
	curl -LOk https://github.com/duckdb/duckdb/releases/download/v0.9.1/duckdb_cli-linux-amd64.zip
	unzip duckdb_cli-linux-amd64.zip -d .
	rm -f duckdb_cli-linux-amd64.zip
	chmod +x ./duckdb

open:
	./duckdb internship.duckdb

download-prs:
	make download KIND=pr

download-issues:
	make download KIND=issues


download:
	epr -c "!dependabot[bot]" -x ${KIND} -s all \
		"hexlet/hexlet-cv" \
		"hexlet/hexlet-sicp" \
		"hexlet/hexlet-correction" \
		"hexlet/hexlet-comparator" \
		"hexlet/hexlet-friends" \
		"hexlet/jsbrowser" \
		"Hexlet/RestApiTutorial.ru" \
		"Hexlet/react-flowbot-ui-kit" \
		"hexlet-rus/runit" \
		"Hexlet/hexletguides.github.io" \
		"hexlet-basics/hexlet-basics" \
		"hexlet-basics/exercises-javascript" \
		"hexlet-basics/exercises-php" \
		"hexlet-basics/exercises-java" \
		"hexlet-basics/exercises-python" \
		"hexlet-basics/exercises-ruby" \
		"hexlet-basics/exercises-clojure" \
		"hexlet-basics/exercises-elixir" \
		"hexlet-basics/exercises-kotlin" \
		"hexlet-basics/exercises-html" \
		"hexlet-basics/exercises-css" \
		"https://github.com/hexlet-codebattle/codebattle" \
		"https://github.com/hexlet-codebattle/battle_asserts" \
		> ${KIND}.csv
