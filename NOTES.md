# Info, Reference

http://iolanguage.org/

# Installation

https://github.com/stevedekorte/io

# Running Tests

> If each proto is in its own file and the name of the file is the name of the proto followed by ".io", io will automatically import that file when the proto is first referenced. The default search path is the current working directory.
>
> So, an exercism solution can be a proto (i.e. `HelloWorld := Object clone do(...)`) with methods defined, and if the file is named correctly (i.e. `HelloWorld.io`), the solution will be auto-imported by the test file.

## iospec

https://github.com/quag/iospec2/blob/master/iospec

```
wget -O /usr/local/bin/iospec https://raw.githubusercontent.com/quag/iospec2/master/iospec
chmod +x /usr/local/bin/iospec
```

## jasmine.io

https://github.com/bekkopen/jasmineio

> io doesn't seem to have any kind of package manager yet (perhaps by design?).
>
> So to use libraries like jasmine.io, you have to download the source files and source them when you want to run your program.

Included jasmine.io at the top-level of this repo. Can include a Makefile with each exercise as a convenience to run all the `*_spec.io` files in the current directory via `io ../../jasmine.io`.

