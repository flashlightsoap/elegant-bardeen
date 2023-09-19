process MYSCRIPT{
        container 'python:3.8-slim'
        input:
        val STR

        output:
        stdout

        script:
        """
        #!/usr/bin/env python
        echo "Executing Python script..."
        
        """
}

workflow {
        Channel.of('this','that','other') | MYSCRIPT | view
}
