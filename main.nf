process MYSCRIPT{
        container 'python:3.8-slim'
        input:
        val STR

        output:
        stdout

        script:
        """
        print("$STR".upper())
        """
}

workflow {
        Channel.of('this','that','other') | MYSCRIPT | view
}
