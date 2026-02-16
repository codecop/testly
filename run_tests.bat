@rem run tests

@del /S *.exe
call fbc -mt -g -exx -i .\lib -i .\tests -p .\lib -m all_tests tests\all_tests.bas tests\test_suites.bas tests\test_selects_defines.bas tests\test_passed_tests.bas tests\test_list.bas tests\test_counters.bas tests\test_before_and_after.bas tests\test_basic.bas tests\test_base_fixtures.bas -x tests\all_tests.exe
if exist tests\all_tests.exe (
    tests\all_tests.exe
)

call fbc -mt -g -exx -i .\lib -p .\lib examples\simple_test.bas
if exist examples\simple_test.exe (
    examples\simple_test.exe
)
@del /s *.exe
