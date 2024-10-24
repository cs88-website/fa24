t = [[1, 2], [3, 4]]
t[0].append(t[1:2])

def of(us):
    def last(k):
        "The last k items of us"
        while k > 0:
            result.append(us.pop())
            k = k - 1
        return result
    return last

def surround(n, f):
    "n is the first and last item of f(2)"
    result = [n]
    result = f(2)
    result[0] = [n]
    return result.append(n)

result = [1]
surround(3, of([4, 5, 6]))

from link import *

def nested_link():
    """
    >>> s = Link(2, Link(3, Link(    4     , Link(5))))
    >>> t = Link(2, Link(3, Link(  Link(4) , Link(5))))
    >>> print(s)
    <2 3 4 5>
    >>> print(t)
    <2 3 <4> 5>
    >>> s = Link(Link(8), Link(Link(4, Link(6, Link(Link(7)))), Link(5)))
    >>> print(s)
    <<8> <4 6 <7>> 5>
    >>> s.first.first
    8
    >>> s.rest.first.rest.rest.first
    Link(7)
    >>> s.rest.first.rest.rest.first.first
    7
    """


