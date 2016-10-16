##Project Euler Practice

#6: Sum of squares 1:100 minus the total sum squared
x=1:10
x
sum(x)
y=sum(x)
y^2

set=1:100
y=sum(set)
y^2

x=1:3
x
x^2

sqrd=
  
#1
?seq
#
ten=seq(1,10, by=2)
seq(3,12,by=3)
#
mult3=seq(3,999,by=3)##
head(mult3)
tail(mult3)
mul5=seq(5,999,by=5)##
head(mul5)
tail(mul5)
threes=sum(mult3)##
threes
fives=sum(mul5)##
fives
total=threes+fives##
total
fives



#recursive function
factorial=function(x){
  if(x==1)
    return(1)
  else
    return(x*factorial(x-1))#Multiplies the n and n-1 factorial (n=4; 4*(3*2*1))
}
factorial(2)
factorial(3)
factorial(4)

sum=function(y){
  if(y==1)
    return(1)
  else
    return(y+y-1)
}
sum(2)
sum(3)
sum(4)

#2 Fibonacci 1,2,3,5,8,13,21,34,55
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
#find the sum of the even-valued terms.
function(x){y=x+x

}
x=1:10
x
?function
phi=1/2*(sqrt(5)+1)
fib=(phi^n-(-phi)^n))/sqrt(5)
fib= function(n){
  return(phi^n-((-1/phi)^n)/sqrt(5))}

fib(1)
fib(5)
fib(8)
fib(11)

fib2= function(n){
  return((n-2)+ n-1)
}

fib2(1)
fib2(5)

#FORMULA FOR FIBONACCI SEQUENCE
#Calculate for n=2 to <400 million
fib=function(n){
  ((1+sqrt(5))^n-(1-sqrt(5))^n)/(2^n*sqrt(5))
}
sum(fib(2:3))
fib(42)#Highest value <400 mill
sum(fib(2:42))
fib3=fib(2:42)
#??HOw to get only even numbers in R
#Maybe use function if ==True then use the function

#getting even numbers
for 
sum(fib3[which(fib3%%==0)])

x=1:10
x%%2==0
xe=x%%2==0
function(x){
  if(xe==TRUE)
    return(x)
}

add=function(x){
  if(x%%2==0)
  return(sum(x))}
y=1:10
add(4)
  
#4 PALINDROMES A palindromic number reads the same both ways. The largest palindrome made from the 
#product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

is.palindrome <- function(word) {
  rawWord <- charToRaw(tolower(word)) ## converts to lower case
  sprintf("%s is %sa palindrome", word,
          c("not ", "")[identical(rawWord, rev(rawWord)) + 1])
}

palindrome =function(a){
  identical(a,rev(a))+1}

}
#Convert number to a string??