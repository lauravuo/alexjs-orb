Alex() {
    npm install --global alex@"${PARAM_VERSION}"
    alex "${PARAM_ARGS}"
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Alex
fi
