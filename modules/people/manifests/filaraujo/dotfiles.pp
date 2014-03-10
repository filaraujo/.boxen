class people::filaraujo::dotfiles inherits people::filaraujo {

    notify { "loading dotfiles": }

    # define dotfile repo
    repository { "${boxen::config::srcdir}/dotfiles":
        source  => 'filaraujo/dotfiles'
    }

    file { "aliases":
       ensure   => "link",
       path     => "/Users/${::luser}/.aliases",
       target   => "${boxen::config::srcdir}/dotfiles/.aliases",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "atom_config":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/config.cson",
       target   => "${boxen::config::srcdir}/dotfiles/.atom/config.cson",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "atom_keymap":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/keymap.cson",
       target   => "${boxen::config::srcdir}dotfiles/.atom/keymap.cson",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "atom_snippets":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/snippets.cson",
       target   => "${boxen::config::srcdir}dotfiles/.atom/snippets.cson",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "atom_styles":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/styles.less",
       target   => "${boxen::config::srcdir}dotfiles/.atom/styles.less",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "atom_init":
       ensure   => "link",
       path     => "/Users/${::luser}/.atom/init.coffee",
       target   => "${boxen::config::srcdir}dotfiles/.atom/init.coffee",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "functions":
       ensure   => "link",
       path     => "/Users/${::luser}/.functions",
       target   => "${boxen::config::srcdir}dotfiles/.functions",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "gitconfig":
       ensure   => "link",
       path     => "/Users/${::luser}/.gitconfig",
       target   => "${boxen::config::srcdir}dotfiles/.gitconfig",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "jshint":
       ensure   => "link",
       path     => "/Users/${::luser}/.jshintrc",
       target   => "${boxen::config::srcdir}dotfiles/.jshintrc",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "zshrc":
       ensure   => "link",
       path     => "/Users/${::luser}/.zshrc",
       target   => "${boxen::config::srcdir}dotfiles/.zshrc",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    file { "zsh-profile":
       ensure   => "link",
       path     => "/Users/${::luser}/.zprofile",
       target   => "${boxen::config::srcdir}dotfiles/.zprofile",
       require  => Repository["${boxen::config::srcdir}/dotfiles"]
    }

    # old way
    #file { "zsh-profile":
    #    path    => "/Users/${::luser}/.jshintrc",
    #    source  => "${boxen::config::srcdir}dotfiles/.jshintrc",
    #    require  => Repository["${boxen::config::srcdir}/dotfiles"]
    #}

}
