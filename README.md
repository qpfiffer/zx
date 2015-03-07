## About
`zx` is a simple file-based time-tracking utility to help with invoicing and
itemizing work done.

## File Format

A sample of the format:

```
2015/02/13:
    - 1:45PM: Start
        * Re-introduction to project
        * Setup with VPN, access to repositories, etc.
        * Started looking into missing images, discovered many were
          actually HTML pages
    - 3:30PM: Stop
// 1:45
```

Each time-tracking file is intended to be human readable and append-only,
inspired by [Ledger](http://ledger-cli.org/).

A file consists of a number of day-delimited collections of `sessions`. Each
`session` is again delimited by `Start` and `Stop` tokens.

Each day's sessions are totalled and left in a comment at the end of the day.
The next time you initiate a command interacting with the file, a comment will
be left with the `<hours>:<minutes>` of that day's time usage.

Comments are ignored by `zx`, but can be useful if you wish to inspect the
file itself.

## Usage

```
Usage: zx [--version] [--help] <command> [<args>]

Commands:
    start       Starts a new session
    log         Logs a message to the currently open session, or the last
                open session.
    stop        Stops the current session
```
