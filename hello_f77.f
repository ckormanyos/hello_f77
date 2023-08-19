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
