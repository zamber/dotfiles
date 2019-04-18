
# Shell Notes

    STDOUT (no number needed for file descriptor)

    command >stdout.txt
    command >>stdout.txt
    command >/dev/null

    STDERR (2 is required file descriptor)

    command 2>stderr.txt
    command 2>>stderr.txt # Append errors to file
    command 2>/dev/null # Discard stderr

    STDOUT + STDERR (separate destination)

    command >stdout.txt 2>stderr.txt
    command >>stdout.txt 2>>stderr.txt

    STDOUT + STDERR (duplicate destination, order matters)

    command >shared-output.txt 2>&1 #stderr follows stdout
    command 2>shared-output.txt >&2 #stdout follows stderr
    command >>shared-output.txt 2>&1 #append
