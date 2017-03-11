chcp 65001

REM *************************************
REM Running the tests
REM *************************************

REM =====================================
REM To run all features on the test app, just type:
REM =====================================

REM jruby -S cucumber test/features

REM =====================================
REM Or, if you have Rake (which you should!), just go with:
REM =====================================

jruby -S rake

REM =====================================
REM For only a specific feature:
REM =====================================

REM jruby -S rake ONLY=combobox

REM =====================================
REM For running the test application:
REM =====================================

REM jruby -S rake test_app
