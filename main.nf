process MYSCRIPT{
        container 'python:3.8-slim'
        input:
        val STR

        output:
        stdout

        script:
        """
        #!/usr/bin/env python
        print("${STR}".upper())
        #print("$STR".upper())
        """
}

workflow {
        Channel.of('this','that','other') | MYSCRIPT | view
}
