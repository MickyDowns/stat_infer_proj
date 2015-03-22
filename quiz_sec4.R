# question 1
base=c(140,138,150,148,135)
wk2=c(132,135,151,146,130)
difference=base-wk2
s=sd(difference)
n=5
mean(difference)+c(-1,1)*qt(0.975,n-1)*s/sqrt(n)

t.test(difference)
# answer: 0.08652, i divided in 1/2 for two-sided

# question 2
mn=1100
s=30
n=9
mn+c(-1,1)*qt(0.975,n-1,lower.tail=TRUE)*s/sqrt(n)
# true student has may need to get int


# question 3
n=8
p=c(1,0,0,0)
c=c(0,1,1,1)
difference=c
s=sd(difference)

mean(difference)+c(-1,1)*qt(0.975,n-1,lower.tail=FALSE)*s/sqrt(n)
t.test(difference,alternative="greater")$p.value
# assuming 1. that "exact" means testing if the two are equal and 
# 2. default for t.test is 2-sided. So, dividing result in half. 



# question 4
mu0=1/100
mua=10/1787

lambda=1/100

ppois(0.56,1,lower.tail=T) # yields 0.37
ppois(0.6,1,lower.tail=T) # yields 0.37
ppois(5.7,10,lower.tail=T) # yields 0.07
ppois(6,10,lower.tail=T) # yields 0.13 guessed this one
ppois(5,10,lower.tail=T) # 0.067
ppois(56,100,lower.tail=T) # yields 0.
ppois(55,100,lower.tail=T) # yields 0.
ppois(0.,1/100,lower.tail=F)

# question 5
n=18
ymean=-3
xmean=1
difference=ymean-xmean

difference
# question 6
n=9
# 1077 to 1123 at 90% CI


# question 7
n=100
mua=0.01
s=0.04
alpha=0.05
z=qnorm(1-alpha)
pnorm(0+z*s/sqrt(n),mean=mua,sd=s/sqrt(n),lower.tail=FALSE)

# question 8
power.t.test(power=0.9,delta=(mua-0),sd=s,type="one.sample",alt="one.sided")$n


# question 9

