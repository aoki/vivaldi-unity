VERSION := $(shell /Applications/Vivaldi.app/Contents/MacOS/Vivaldi --version | cut -d ' ' -f 2)
APP_PATH := /Applications/Vivaldi.app/Contents/Versions/${VERSION}/Vivaldi\ Framework.framework/Resources/vivaldi

backup:
	cp /style/custom.css .
	cp /Applications/Vivaldi.app/Contents/Versions/${VERSION}/Vivaldi\ Framework.framework/Resources/vivaldi/browser.html .
.PHONY: backup

restore:
	cp ./custom.css   ${APP_PATH}/style/custom.css
	cp ./browser.html ${APP_PATH}/browser.html
.PHONY: restore

diff:
	diff ${APP_PATH}/style/custom.css ./custom.css
	diff ${APP_PATH}/browser.html ./browser.html
.PHONY: diff
