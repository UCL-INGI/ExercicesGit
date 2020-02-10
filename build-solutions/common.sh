#!/usr/bin/env bash


function archive_zip () {
	cd "${1}"
	rm -f "${2}.zip"
	zip -q -r "${2}.zip" "${2}"
	rm -rf "${2}"
	cd -
}
