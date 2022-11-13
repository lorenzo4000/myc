.text                                                   
  .global main 



      main:
    


          push %rbp


          mov %rsp, %rbp


     sub 6, %rsp






            movq $L1, -8(%rbp)






         mov -8(%rbp), %rbx






       mov %rbx, -16(%rbp)










            mov -8(%rbp), %r12






       mov -16(%rbp), %r13



mov $L2, %rdi  
                                 mov %r12, %rsi  
                                          mov %r13, %rdx 
                                           call printf 
                                    mov %rax, %r14 



  
                                         mov %rbp, %rsp 
   
                              
  
      pop %rbp  
                                                ret  
               



















        .data



 L1: .string "as"




















 L2: .string "%d == %d\n"








  
