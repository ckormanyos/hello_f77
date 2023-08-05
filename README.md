hello_f77
==================

<p align="center">
    <a href="https://github.com/ckormanyos/hello_f77/actions">
        <img src="https://github.com/ckormanyos/hello_f77/actions/workflows/hello_f77.yml/badge.svg" alt="Build Status"></a>
    <a href="https://godbolt.org/z/dP3Y1EYnr" alt="godbolt">
        <img src="https://img.shields.io/badge/try%20it%20on-godbolt-green" /></a>
</p>

hello_f77 implements the epic _Hello_ _World_ program in the Fortran77 language.

## Compile on `*nix`

Use GCC to compile [`hello_f77.f`](./hello_f77.f) (requires the presence of `fortran`).

```sh
cd hello_f77
g++ hello_f77.f -x f77 -std=legacy -O2 -lgfortran -o hello_f77.exe
```
