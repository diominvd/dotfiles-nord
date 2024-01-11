import os

current_dir = os.path.abspath(os.curdir)

def install_config() -> None:
    warning_ans = input('Install .local files can replace your files. Continue? (y/n)')
    if warning_ans == 'y':
        os.system(f'sudo cp -r {current_dir}/config/* ~/.config/')
        print('.local files installed')
    else:
        print('.local files not installed')
    return None

def install_local() -> None:
    warning_ans = input('Install .local files can replace your files. Continue? (y/n)')
    if warning_ans == 'y':
        os.system(f'sudo cp -r {current_dir}/local/share/* ~/.local/share/')
        print('.config files installed')
    else:
        print('.config files not installed')
    return None

def install_zsh() -> None:
    warning_ans = input('Install .oh-my-zsh files can replace your files. Continue? (y/n)')
    if warning_ans == 'y':
        try:
            os.system(f'sudo cp -r {current_dir}/oh-my-zsh/* ~/.oh-my-zsh/')
        except:
            print('.oh-my-zsh files not installed')
        else:
            print('.oh-my-zsh files installed')
    else:
        print('.oh-my-zsh files not installed')
    return None


if __name__ == '__main__':
    install_config()
    install_local()
    install_zsh()
    print('Install completed. Restart system for full apply config.')
