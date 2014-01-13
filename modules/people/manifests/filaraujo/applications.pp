class people::filaraujo::applications inherits people::filaraujo {
    
    notify { "loading applications": }

  	# browsers
	include chrome::dev
	include chrome::canary
	include dropbox
	include firefox
	include firefox::nightly
	include opera
	include opera::developer

	# development	
	include charles
  	include iterm2::stable
	include ohmyzsh

	# sublime 
	include sublime_text_3
	include sublime_text_3::package_control

	sublime_text_3::package { 'Theme - Centurion': source => 'allanhortle/Centurion' }
	sublime_text_3::package { 'Color Scheme - Brackets': source => 'l4ci/Br4ckets-Theme' }
	

	sublime_text_3::package { 'Emmet': source => 'sergeche/emmet-sublime' }
	sublime_text_3::package { 'Swig': source => 'jonschlinkert/sublime-swig' }
	sublime_text_3::package { 'SublimeLinter': source => 'https://github.com/SublimeLinter/SublimeLinter' }
	
    # dashlane
  	include dashlane 

  	#storage
  	include dropbox
  	include googledrive
    
}