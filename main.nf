#!/usr/bin/env nextflow

// Define the input parameter
params.inputFile = file("input.txt")

// Define the output directory
outputDir = "output"

// Define the Nextflow process
process copyFile {
    input:
    file inputFile


    output:
    stdout
    //file "/Users/amaan.saifan/Documents/kube/output_file.txt"

    script:
    """
    ls
    echo "1111111111111"
    ls -alrt
    echo "======="
    pwd
    echo ${outputDir}
    echo ${inputFile}

    cat ${inputFile}

    # Create the output directory if it doesn't exist
    mkdir -p ${outputDir}

    ls -alrt

    # Copy the input file to the output directory
    cp ${inputFile} ${outputDir}/output_file.txt
    """
}

// Define the workflow
workflow {
    // Run the copyFile process with the inputFile as input
    copyFile(params.inputFile) | view
}

// Define where to store the workflow execution and logs
// You can change the directory to your preferred location
// nextflow.enable.dsl=2
// nextflow {
//     workDir = "work"
//     trace = true
//     publishDir path: "${outputDir}", pattern: "*", mode: 'copy'
// }
