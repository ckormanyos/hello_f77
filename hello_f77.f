ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c  Copyright Christopher Kormanyos 1985 - 2023.
c  Distributed under the Boost Software License,
c  Version 1.0. (See accompanying file LICENSE_1_0.txt
c  or copy at http://www.boost.org/LICENSE_1_0.txt)
c

c     g++ hello_f77.f -x f77 -std=legacy -O2 -lgfortran -o hello_f77.exe
c     See also https://godbolt.org/z/dGxTGv8or

      program hello
      implicit none

      character*32 text

      text = 'Hello World'
      write (*,*) text

      end
