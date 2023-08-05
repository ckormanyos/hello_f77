hello_f77
==================

<p align="center">
    <a href="https://github.com/ckormanyos/hello_f77/actions">
        <img src="https://github.com/ckormanyos/hello_f77/actions/workflows/hello_f77.yml/badge.svg" alt="Build Status"></a>
    <a href="https://godbolt.org/z/dGxTGv8or" alt="godbolt">
        <img src="https://img.shields.io/badge/try%20it%20on-godbolt-green" /></a>
</p>

hello_f77 implements the epic Hello World program in the Fortran77 language.

## Build on `*nix`

````sh
cd hello_f77
g++ hello_f77.f -x f77 -std=legacy -O2 -lgfortran -o hello_f77.exe
```
