# dotiles
- [x] neovim

![image](https://user-images.githubusercontent.com/16787866/162878131-b1049229-4448-4437-814f-8db682bc4169.png)

## Git Config
``` 
# ~/.gitconfig
[user]
    email = muhfaris@disroot.org
    name = Muhammad Faris

[merge]
  tool = vimdiff

[mergetool]
  prompt = true
  keepBackup = false

[mergetool "vimdiff"]
  cmd = nvim -d $LOCAL $REMOTE $MERGED -c '$wincmd w' -c 'wincmd J'

[difftool]
  prompt = false

[diff]
  tool = vimdiff

[pull]
    rebase = true

[url "git@github.com:"]
    insteadOf = https://github.com/
[url "git@gitlab.com:"]
    insteadOf = https://gitlab.com/
[url "git@bitbucket.org:"]
    insteadOf = https://bitbucket.org/

```

## SSH Config 
``` 
# ~/.ssh/config
Host gitlab.<company name>.tech
  Preferredauthentications publickey
  IdentityFile ~/.ssh/id_ed25519_<company>
```
