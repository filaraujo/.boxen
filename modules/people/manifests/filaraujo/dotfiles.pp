class people::filaraujo::dotfiles inherits people::filaraujo {
    
    notify { "loading dotfiles": }
    
    # define dotfile repo
    repository { "${boxen::config::srcdir}/dotfiles":
        source  => 'filaraujo/dotfiles'
    }

 	file { "zsh-profile":
        path    => "/Users/${::luser}/.zprofile",
        source  => "${boxen::config::srcdir}/dotfiles/.zprofile",
        require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "zsh-rc":
        path    => "/Users/${::luser}/.zshrc",
        source  => "${boxen::config::srcdir}/dotfiles/.zshrc",
        require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }


    file { "aliases":
        path    => "/Users/${::luser}/.aliases",
        source  => "${boxen::config::srcdir}/dotfiles/.aliases",
        require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }
    
}