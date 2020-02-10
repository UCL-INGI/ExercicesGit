import sys
import unittest

from compare_repos import GitComparison
from inginious_test_result import INGIniousTestResult

GitComparison.repo_path = sys.argv[1]
GitComparison.student_repo_path = sys.argv[2]

suite = unittest.TestLoader().loadTestsFromTestCase(GitComparison)
result = unittest.TextTestRunner(verbosity=3, resultclass=INGIniousTestResult).run(suite)
if not result.wasSuccessful():
    sys.exit(-1)
