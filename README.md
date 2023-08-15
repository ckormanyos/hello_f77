hello_f77
==================

<p align="center">
    <a href="https://github.com/ckormanyos/hello_f77/actions">
        <img src="https://github.com/ckormanyos/hello_f77/actions/workflows/hello_f77.yml/badge.svg" alt="Build Status"></a>
    <a href="https://godbolt.org/z/dP3Y1EYnr" alt="godbolt">
        <img src="https://img.shields.io/badge/try%20it%20on-godbolt-green" /></a>
</p>

hello_f77 implements the epic _Hello_ _World_ program in `FORTRAN77`.

## Compile on `*nix`

Use GCC to compile [`hello_f77.f`](./hello_f77.f). This requires the presence
of `fortran` in the enabled languages of the GCC build and an installed `libgfortran`
on the system.

```sh
cd hello_f77
g++ hello_f77.f -x f77 -std=legacy -O2 -lgfortran -o hello_f77.exe
```

## Source Listing

The complete source is provided below.
It can be found in [`hello_f77.f`](./hello_f77.f)

```fortran
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c     Copyright Christopher Kormanyos 1985 - 2023.
c     Distributed under the Boost Software License,
c     Version 1.0. (See accompanying file LICENSE_1_0.txt
c     or copy at http://www.boost.org/LICENSE_1_0.txt)
c

c     g++ hello_f77.f -x f77 -std=legacy -O2 -lgfortran -o hello_f77.exe
c     See also https://godbolt.org/z/dP3Y1EYnr

      program hello
      implicit none

      character*32 text

      text = 'Hello World'
      write (*,*) text

      end
```

## Historical Perspective

From a senior programmer's perspective, `FORTRAN77` was there early in the game.
From a subjective observer's standpoint it then seemed like its support was lost,
missing, incomplete or obscure for a while.

Now trusty old `f77` is back, and it is properly supported as part of GCC on many systems.
There is also (as there should be) conformance with legacy code,
including the $128$-bit floating-point data type `REAL*16` (although not used in
_Hello_ _World_, there for number crunching when neeeded).
