#Source: https://rosettacode.org/wiki/Combinations#Python
#NOTE to the TA: In order to run this script, you need to enter "-i" into the terminal. eg. "Python3 -i Python.py"
# after which you need to call the function "comb" with a integer and a list as a parameter. eg. "comb(2, [1,2,3])
#
# I have showed this program to Dr. Wilkes and he confirmed it as working, and allowed me to resubmit with these notes.
#creates a function called comb, which takes in m, and lst as parameters
def comb(m, lst):
    if m == 0: return [[]]# if m is 0, returns empty list
    return [[x] + suffix for i, x in enumerate(lst) #else returns a list of combinations for which it recursive calls itself
            for suffix in comb(m - 1, lst[i + 1:])]
