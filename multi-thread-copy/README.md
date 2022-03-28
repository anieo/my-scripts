# Multi threading copy

copy files from source to directory concurrently
useful when copying a ridiculously large amount of files

## Usage

```shell
$ copy.sh <source> <destenation>
```

### Example
 only working example actually

```shell
$ /path/to/script/./copy.sh ./source ./dest
```

## cases to handle

- [X] `./`
- [X] `source/` -> `dest/soruce/`
- [X] `source` -> `dest/source`
- [ ] `source` -> `dest/` : copy content only
- [ ] `../` : handle in source and destnation
- [ ] `~/` : handle in source and destnation
- [ ] `..` : handle in source and destnation
- [ ] `..` : handle in source and destnation
- [ ] absolute paths : handle in source and destnation
- [ ] error handling for wrong input
- [ ] Help message
