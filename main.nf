process MYSCRIPT{
        input:
        val STR

        output:
        stdout

        script:
        """
        echo "Executing Python script..."
        
        """
}

workflow {
        Channel.of('this','that','other') | MYSCRIPT | view
}
