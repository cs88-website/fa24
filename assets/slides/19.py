from tree import *

class Server:
    """An email server.

    >>> a, b = Client('John'), Client('Jack')
    >>> s = Server([a, b])
    >>> s.send(Email('Hi', 'John', 'Jack'))
    >>> b.inbox[0].msg
    'Hi'
    """
    def __init__(self, clients):
        self.clients = {c.name: c for c in clients}

    def send(self, email):
        "Append the email to the inbox of the client it is addressed to."
        self.clients[email.recipient_name].inbox.append(email)

class Email:
    def __init__(self, msg, sender, recipient_name):
        self.msg = msg
        self.sender = sender
        self.recipient_name = recipient_name

class Client:
    def __init__(self, name):
        self.inbox = []
        self.name = name


class CallCounter:
    def __init__(self):
        self.n = 0

    def count(self, f):
        def counted(n):
            self.n += 1
            return f(n)
        return counted
    
def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-2) + fib(n-1)

def memo(f):
    cache = {}
    def memoized(n):
        if n not in cache:
            cache[n] = f(n)
        return cache[n]
    return memoized
