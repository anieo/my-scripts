# AWS Current Profile Indicator

used to show current **awscli** profile in Bash/terminal prompt

## Usage

make [ps1.sh](./ps1.sh) excutable

```SHELL
$ chmod u+x ps1.sh
```

refrence [ps1.sh](./ps1.sh) in `.bashrc` or `~/..bash_profile` or etc

```bash
PS1="... $(/path/to/ps1.sh) ...."
```