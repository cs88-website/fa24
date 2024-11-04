class Tree:
    """A tree is a label and a list of branches."""

    def __init__(self, label, branches=[]):
        self.label = label
        for branch in branches:
            assert isinstance(branch, Tree)
        self.branches = list(branches)

    def is_leaf(self):
        return not self.branches

    def __repr__(self):
        if self.branches:
            branch_str = ', ' + repr(self.branches)
        else:
            branch_str = ''
        return 'Tree({0}{1})'.format(repr(self.label), branch_str)

    def __str__(self):
        return '\n'.join(self.indented())

    def indented(self):
        lines = [str(self.label)]
        for b in self.branches:
            for line in b.indented():
                lines.append('  ' + line)
        return lines
    
def print_sums(t):
    return print_sums_helper(t, 0)

def print_sums_helper(t, path_sum):
    path_sum += t.label
    if t.is_leaf():
        print(path_sum)

