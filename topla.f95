program sum
real, dimension(1675,5) :: v1,v2,v3,v4,vsum
open (10, file = "sub-as-buckled-pdos.pdos_atm#11(As1)_wfc#1(s)", status='old')
   do i=1,1675  
      read(10,*) v1(i,1), v1(i,2),v1(i,3), v1(i,4), v1(i,5)    
   end do 
 close(10)  

open (20, file = "sub-as-buckled-pdos.pdos_atm#19(As1)_wfc#1(s)", status='old')
   do i=1,1675  
      read(20,*) v2(i,1), v2(i,2),v2(i,3), v2(i,4), v2(i,5)    
   end do 
 close(20)  
open (30, file = "sub-as-buckled-pdos.pdos_atm#20(As1)_wfc#1(s)", status='old')
   do i=1,1675  
      read(30,*) v3(i,1), v3(i,2),v3(i,3), v3(i,4), v3(i,5)    
   end do 
 close(30)  
open (40, file = "sub-as-buckled-pdos.pdos_atm#21(As1)_wfc#1(s)", status='old')
   do i=1,1675 
      read(40,*) v4(i,1), v4(i,2),v4(i,3), v4(i,4), v4(i,5)    
   end do 
 close(40)  

do i=1,1675
      vsum(i,1) = v1(i,1) 
      do j = 2,5
         vsum(i,j) = v1(i,j) + v2(i,j) + v3(i,j) + v4(i,j)
      end do
   end do
 
 open(50, file='sub-as-buckled-pdos', status='new')  
   do i=1,1675
       write(50,*) vsum(i,1),vsum(i,2),vsum(i,3),vsum(i,4),vsum(i,5)
   end do  
  close(50)   
end program sum
