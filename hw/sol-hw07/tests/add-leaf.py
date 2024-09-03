test = {
  'name': 'add-leaf',
  'points': 1,
  'suites': [
    {
      'scored': True,
      'setup': """
      scm> (load-all ".")
      scm> (define (tree label branches) (cons label branches))
      scm> (define (label t) (car t))
      scm> (define (branches t) (cdr t))
      scm> (define (is-leaf t) (null? (branches t)))
      """,
      'type': 'scheme',
      'cases': [
        {
          'code': """
          scm> (define t (tree 1 nil))
          t
          scm> (add-leaf t 10)
          (1)
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': """
          scm> (define t (tree 1 (list (tree 2 nil) (tree 3 nil))))
          t
          scm> (add-leaf t 4) ; if you're getting (1 (2) (3) 4), make sure you're appending 2 *lists of trees* together!
          (1 (2) (3) (4))
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': """
          scm> (define t (tree 1 (list (tree 2 (list (tree 3 nil) (tree 4 nil))) (tree 3 nil))))
          t
          scm> (add-leaf t 5)
          (1 (2 (3) (4) (5)) (3) (5))
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': """
          scm> (define t (tree 1 (list (tree 2 (list (tree 4 nil) (tree 5 nil))) (tree 3 (list (tree 6 nil) (tree 7 nil))))))
          t
          scm> (add-leaf t 8)
          (1 (2 (4) (5) (8)) (3 (6) (7) (8)) (8))
          """,
          'hidden': False,
          'locked': False
        }
      ]
    }
  ]
}