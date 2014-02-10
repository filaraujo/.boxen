class people::filaraujo::applications inherits people::filaraujo {

    notify { "loading applications": }

  	# browsers
	include chrome::beta
	include chrome::canary
	include dropbox
	include firefox
	include firefox::nightly
	include opera
	include opera::developer

	# development
	include charles
	include heroku
  	include iterm2::stable
    include mongodb
    include ohmyzsh
    include virtualbox

    #phantomjs
    include phantomjs
    phantomjs::version { '1.9.0': }

	# sublime
	include sublime_text_3
	include sublime_text_3::package_control

	sublime_text_3::package { 'Theme - Centurion': source => 'allanhortle/Centurion' }
	sublime_text_3::package { 'Color Scheme - Brackets': source => 'l4ci/Br4ckets-Theme' }

	sublime_text_3::package { 'PreferenceHelper': source => 'Chris---/SublimeText-Preference-Helper' }
	sublime_text_3::package { 'SublimeGit': source => 'kemayo/sublime-text-git' }
	sublime_text_3::package { 'CSSComb': source => 'csscomb/csscomb-for-sublime' }
	sublime_text_3::package { 'Emmet': source => 'sergeche/emmet-sublime' }
	sublime_text_3::package { 'SASS': source => 'nathos/sass-textmate-bundle' }
	sublime_text_3::package { 'Swig': source => 'jonschlinkert/sublime-swig' }
    sublime_text_3::package { 'SublimeLinter': source => 'SublimeLinter/SublimeLinter3' }
    sublime_text_3::package { 'SublimeLinter-jshint': source => 'SublimeLinter/SublimeLinter-jshint' }
	sublime_text_3::package { 'SublimeLinter-json': source => 'SublimeLinter/SublimeLinter-json' }
    sublime_text_3::package { 'SublimeLinter-csslint': source => 'SublimeLinter/SublimeLinter-csslint' }
    sublime_text_3::package { 'Javascript Beautify': source => 'enginespot/js-beautify-sublime' }
    sublime_text_3::package { 'Sublime JsDocs': source => 'spadgos/sublime-jsdocs' }



    # dashlane
  	include dashlane

  	#storage
  	include dropbox
  	include googledrive

}