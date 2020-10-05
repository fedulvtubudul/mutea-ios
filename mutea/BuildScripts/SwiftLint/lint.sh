#!/bin/sh


if ! command -v swiftlint &> /dev/null
then
	echo "warning: Please install SwiftLint. See https://github.com/realm/SwiftLint for details."
	exit
fi


swiftlint --config "./BuildScripts/SwiftLint/GeneralPolicy.yml"
