# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/alex.sh
}

@test '1: Run alex' {
    # Mock environment variables or functions by exporting them (after the script has been sourced)
    export PARAM_VERSION="9.0.1"
    # Capture the output of our "Alex" function
    result=$(Alex)
    [ "$result" == "Hello World" ]
}