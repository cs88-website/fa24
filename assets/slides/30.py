from lab10 import *

def eval_demo():
    """
    >>> exp =  Pair('+', Pair(2, Pair(Pair('*', Pair(3, Pair(3, nil))), Pair(5, nil))))
    >>> print(exp)
    (+ 2 (* 3 3) 5)
    >>> print(exp.rest)
    (2 (* 3 3) 5)
    >>> print(exp.rest.first)
    2
    >>> print(exp.rest.rest.first)
    (* 3 3)
    >>> print(exp.rest.rest.rest.first)
    5
    >>> calc_eval(exp.rest.rest.first)
    9
    >>> print(exp.rest.map(calc_eval))
    (2 9 5)
    >>> args = exp.rest.map(calc_eval)
    >>> args
    Pair(2, Pair(9, Pair(5, nil)))
    >>> calc_apply(addition, args)
    16
    >>> print(exp)
    (+ 2 (* 3 3) 5)
    >>> calc_eval(exp)
    16
    """
