test = {
  'name': 'deep-map',
  'points': 1,
  'suites': [
    {
      'type': 'scheme',
      'cases': [
        {
          'locked': False,
          'code': r"""
          scm> (define (double x) (* 2 x))
          double
          scm> (deep-map double '(1 2 3 4))
          (2 4 6 8)
          scm> (deep-map double '(2 (3 4)))
          (4 (6 8))
          scm> (deep-map double '(1 2 3 (4) 5))
          (2 4 6 (8) 10)
          """,
        },
      ],
      'setup': r"""
      scm> (load-all ".")
      """,
    },
  ]
}