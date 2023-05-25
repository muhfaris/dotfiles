# Dotfile

## Requirements

- API key from chat GPT
- [Dracula theme](https://draculatheme.com/vim)

## Nvim

The nvim configuration file is config from [AstroNvim](https://github.com/AstroNvim/AstroNvim).
You can use the config `nvim/lua/user` as custom configuration, copy and paste the folder into `nvim/lua/`.

## Git commit

### Conventional Changelog

Help you to make a good commit to every project. I think is good habbit.
Install the `commitizen` on global settings.

```bash
npm install -g commitizen
```

last step, copy the configuration `root/czrc` and paste in your root system `/`, give a name `.czrc`.

### Multiple ssh key

configurations for multiple ssh key and different repository project, in this case in github.

```
# GitLab.com
Host github.com
  HostName github.com
  Preferredauthentications publickey
  User git
  IdentityFile ~/.ssh/id_rsa

Host github.com-ahmad
  HostName github.com
  Preferredauthentications publickey
  User git
  IdentityFile ~/.ssh/id_ahmad
```

next step, set the url each repository

```
git remote set-url origin git@github.com-ahmad:ahmad/docker-config.git
```
