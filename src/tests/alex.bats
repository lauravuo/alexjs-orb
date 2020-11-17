# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/alex.sh
}

@test '1: Run alex' {
    # Mock environment variables or functions by exporting them (after the script has been sourced)
    export PARAM_VERSION="9.0.1"
    export PARAM_ARGS="./src/tests/test.md"
    # Capture the output of our "Alex" function
    run Alex
    echo $output
    [ "$status" -eq 0 ]
    [ "$output" = "src/tests/test.md: no issues found" ]
}