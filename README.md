hello_f77
==================

<p align="center">
    <a href="https://github.com/ckormanyos/hello_f77/actions">
        <img src="https://github.com/ckormanyos/hello_f77/actions/workflows/hello_f77.yml/badge.svg" alt="Build Status"></a>
    <a href="https://godbolt.org/z/sMoP43Mcc" alt="godbolt">
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
It can be found in [`hello_f77.f`](./hello_f77.f).

You can even try this program at the following
[short link](https://godbolt.org/z/sMoP43Mcc) to [godbolt](https://godbolt.org).

```fortran
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C
C     Copyright Christopher Kormanyos 1985 - 2023.
C     Distributed under the Boost Software License,
C     Version 1.0. (See accompanying file LICENSE_1_0.txt
C     or copy at http://www.boost.org/LICENSE_1_0.txt)
C

C     g++ hello_f77.f -x f77 -std=legacy -O2 -lgfortran -o hello_f77.exe
C     See also https://godbolt.org/z/sMoP43Mcc

      PROGRAM HELLO
      IMPLICIT NONE

      CHARACTER*32 MY_TEXT

      MY_TEXT = 'Hello World'
      WRITE (*,*) MY_TEXT

      END
```

## Historical Perspective

`FORTRAN` (in particular `FORTRAN77` or `f77`) was there early in the game.

From a subjective standpoint, however, it seemed like there was an intermediate
time epoch during which its support was lost, missing, or in some other
way incomplete and obscure.

Now trusty old `f77` is back. It is properly supported as part of GCC on many systems.
There is also (as there should be) conformance with legacy code.
This includes support for the $128$-bit floating-point data type `REAL*16`.

Even though `REAL*16` (and its complex counterpart `COMPLEX*32`)
are not used in _Hello_ _World_, they are available for number crunching
when needed. These high-precision types can be difficult to find in the world of
high-preformance, efficient, object-code-generating programming languages.

This makes `FORTRAN` _even_ _today_ still a leading program
for high-performance, high-precision numerical calculations.
