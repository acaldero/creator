
#
# ARCOS.INF.UC3M.ES
# BY-NC-SA (https://creativecommons.org/licenses/by-nc-sa/4.0/deed.es)
#


.text

	main: 
			
			li $s5, 5
            jal test

            # exit
            li $v0, 10
            syscall


	test:
            # crear "stack frame" para $ra, $fp y una variable local
            subu $sp, $sp, 12
            sw   $ra, 8($sp)
            sw   $fp, 4($sp)
            addu $fp, $sp, 4

			li $s5, 2

	b_efs:  lw   $ra, 8($sp)
            lw   $fp, 4($sp)
            addu $sp, $sp, 12

            # return $v0
           jr $ra
