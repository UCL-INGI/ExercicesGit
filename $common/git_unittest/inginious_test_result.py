import sys
import traceback
from unittest.result import STDOUT_LINE, STDERR_LINE
from unittest.runner import TextTestResult

from utils import _


class INGIniousTestResult(TextTestResult):

    separator1 = ('=' * 90) + "\n"
    separator2 = ('-' * 90) + "\n"

    def getDescription(self, test):
        doc_first_line = test.test_descriptions.get(test._testMethodName)
        if self.descriptions and doc_first_line:
            return doc_first_line
        else:
            return str(test)

    def startTest(self, test):
        super(TextTestResult, self).startTest(test)
        if self.showAll:
            self.stream.write(self.getDescription(test))
            self.stream.write(" ")

    def addSuccess(self, test):
        super(TextTestResult, self).addSuccess(test)
        if self.showAll or self.dots:
            self.stream.writeln(_("✔"))
            self.stream.writeln()

    def addError(self, test, err):
        super(TextTestResult, self).addError(test, err)
        if self.showAll:
            self.stream.writeln(_("... Erreur imprévue, merci de la signaler à l'auteur de la tâche"))
            self.stream.writeln()
        elif self.dots:
            self.stream.write(_("E"))
            self.stream.writeln()

    def addFailure(self, test, err):
        super(TextTestResult, self).addFailure(test, err)
        if self.showAll or self.dots:
            self.stream.writeln(_("✘"))
            self.stream.writeln()

    def addSkip(self, test, reason):
        super(TextTestResult, self).addSkip(test, reason)
        if self.showAll:
            self.stream.writeln(_("Ignoré {0!r}").format(reason))
            self.stream.writeln()
        elif self.dots:
            self.stream.write(_("I"))
            self.stream.writeln()

    def addExpectedFailure(self, test, err):
        super(TextTestResult, self).addExpectedFailure(test, err)
        if self.showAll:
            self.stream.writeln(_("✔ Le test a échoué comme attendu"))
            self.stream.writeln()
        elif self.dots:
            self.stream.write(_("✔"))
            self.stream.writeln()

    def addUnexpectedSuccess(self, test):
        super(TextTestResult, self).addUnexpectedSuccess(test)
        if self.showAll:
            self.stream.writeln(_("✘ Le test a réussi alors qu'il aurait dû échouer"))
            self.stream.writeln()
        elif self.dots:
            self.stream.write(_("✘"))
            self.stream.writeln()

    def printErrors(self):
        if self.dots or self.showAll:
            self.stream.writeln()
        self.printErrorList(_("Erreur interne"), self.errors)
        self.printErrorList(_("✘"), self.failures)

    def printErrorList(self, flavour, errors):
        for test, err in errors:
            self.stream.writeln(self.separator1)
            self.stream.writeln("%s: %s" % (flavour, self.getDescription(test)))
            self.stream.writeln(self.separator2)
            self.stream.writeln("%s" % err)

    def _exc_info_to_string(self, err, test):
        """Converts a sys.exc_info()-style tuple of values into a string."""
        exctype, value, tb = err
        # Skip test runner traceback levels
        while tb and self._is_relevant_tb_level(tb):
            tb = tb.tb_next

        if exctype is test.failureException:
            # Skip assert*() traceback levels
            length = self._count_relevant_tb_levels(tb)
            tb_e = traceback.TracebackException(exctype, value, tb, limit=length, capture_locals=self.tb_locals)
            msg_lines = []
            for line in tb_e.format_exception_only():
                msg_lines.append(line.replace("AssertionError: ", ""))
            msg_lines.append("\n")
        else:
            length = None
            tb_e = traceback.TracebackException(exctype, value, tb, limit=length, capture_locals=self.tb_locals)
            msg_lines = ["::\n\n    "] + list(map(lambda x: x.replace("\n", "\n    "), tb_e.format()))

        if self.buffer:
            output = sys.stdout.getvalue()
            error = sys.stderr.getvalue()
            if output:
                if not output.endswith('\n'):
                    output += '\n'
                msg_lines.append(STDOUT_LINE % output)
            if error:
                if not error.endswith('\n'):
                    error += '\n'
                msg_lines.append(STDERR_LINE % error)
        return ''.join(msg_lines)
