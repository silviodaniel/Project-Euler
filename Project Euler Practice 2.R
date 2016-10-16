Project Euler 2

#5 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
#without any remainder. What is the smallest positive number that is evenly divisible 
#by all of the numbers from 1 to 20?
gcd <- function(a, b)##Greatest common factor 
{
  a=as.integer(a)
  b=as.integer(b)
  stopifnot(!(a==0 && b==0))
  if ( a == 0 )
    return(b)
  
  if ( b == 0 )
    return(a)
  
  return(abs(gcd(b, a-b*floor(a/b))))
}

##Least common multiple of 2 numbers
lcm=function(a,b){
  a=as.integer(a)
  b=as.integer(b)
  return(abs(a*b)/gcd(a,b))
}

lcm = a*b/(gcd(a,b))
lcm3=function(x,y,z){
  x=as.integer(x)
  y=as.integer(y)
  z=as.integer(z)
  return(lcm(x,lcm(y,z)))}##GIVES THE LCM of 4(40,44..60), and 5&6(30,60)
lcm3(4,5,6)

gcd(4,5)

(4*5)/(gcd(4,5))
lcm(4,lcm(5,6))
lcm2(lcm2(1,2,3),lcm2(4,5,6),lcm2(7,8,9))
lcm2(lcm2(2,3,4),lcm2(5,6,7),lcm2(8,9,10))

lcm5=function(d,e,f,g,h){#LCM for 5 numbers
  d=as.integer(d)
  e=as.integer(e)
  f=as.integer(f)
  g=as.integer(g)
  h=as.integer(h)
  return(lcm3(lcm3(d,e,f),g,h))}

lcm4=function(i,j,k,l){#LCM for 4 numbers
  i=as.integer(i)
  j=as.integer(j)
  k=as.integer(k)
  l=as.integer(l)
  return(lcm3(lcm(i,j),k,l))}

lcm5(1,2,3,4,4)
lcm3(16,17,18,19,20)
lcm3(lcm3(10,11,12,13,14),lcm2(15,16,17),18,19,20)
lcm3(lcm3(1,2,3,4,5),lcm3())
lcm2(lcm2(12,13,14),lcm2(15,16,17),lcm2(18,19,20))

lcm5(lcm5(1,2,3,4,5),lcm5(6,7,8,9,10),lcm5(11,12,13,14,15),lcm5(16,17,18,19,20),20)
#?? Integer overflow?
