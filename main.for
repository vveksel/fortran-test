C
C     main.for
C     ablation simulation
C
C     Created by Vladislav Vekselman on 7/29/17.
C     Copyright 2017 Vladislav Vekselman. All rights reserved.
C
        module global
        implicit none
        real a,b,s
        end module global

        program add2
        implicit none
            call input
            call add
            call output
        stop
        end

        subroutine add
        use global
        implicit none
            s = a + b
        return
        end

        subroutine input
        use global
        implicit none
            print *, ' This program adds 2 real numbers'
            print *, ' Type them in now separated by a comma or space'
            read *, a,b
        return
        end

        subroutine output
        use global
        implicit none
            print *,  ' The sum of ', a,' and ' , b
            print *, ' is ' , s
        return
        end
