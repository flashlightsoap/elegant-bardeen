process MYSCRIPT{

        input:
        val STR

        output:
        stdout

        script:
        """
        #!/usr/bin/env python
        print("$STR".upper())
        """
}

workflow {
        Channel.of('this','that','other') | MYSCRIPT | view
}
