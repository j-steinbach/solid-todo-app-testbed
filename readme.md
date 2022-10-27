# README

This repository sets up a local CSS instance, creates a default user and then (future!) starts both solid-todo-apps to run some tests.

Note: This is badly glued together and not production-ready :)

## Install

Run `install.sh` to install the CSS. Run `install-everything.sh` to install the server and both solid-todo-apps.

## Run

Run `start-server.sh` to start the server on `localhost:3000` (TODO: be able to configure this).

## Setup User

Run `setup-user.sh` to add a new user `a@a.a` with password `a` and webid `localhost:3000/a/profile/card#me`. Internally this uses _curl_.

Alternatively we can also do it with _httpie_: `↳ http POST localhost:3000/idp/register/ @register-profile-request.json`

See the [CSS docs](https://github.com/CommunitySolidServer/CommunitySolidServer/blob/9a5fc674f3f98c1d33122f5cde8a501449db6c1f/documentation/markdown/usage/identity-provider.md#json-api) for more info.

Note: this needs the server to be running!

## TODOs

Immediate

- [ ] add .gitignore (which server files in _css-data_ can be ignored?
    - [ ] should we store the `css-data/.internal` folder?
- [x] pre-populate the default `index.ttl` file with tasks some
    - E: we decided against having a default `index.ttl` (or folder) -- this is something that should be done client-side (to see if the folder/index creation actually works)
    - in the future the app might create some tasks by itself for testing-purposes
- [ ] setup/run some tests!

Later

- [ ] _kill-server.sh_ script because I am pretty sure this one leaks memory somewhere and doesn't die.. `pgrep node` and `pkill node` does the job though
- [ ] more automation (automatically create the default user)
- [ ] be able to configure the CSS (port, ...)
- [ ] combine all the scripts (options, choice)
- [ ] remove root `.acl` file? (currently allows free Read, Write, Control for everyone?)
