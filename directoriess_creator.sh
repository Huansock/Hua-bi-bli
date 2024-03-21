#!/bin/sh 

# Create the top-level Notes directory
mkdir -p Notes

# Create subdirectories for Computer Science, Knowledge, and Systems
mkdir -p Notes/000_Computer_science\,_knowledge\,_and_systems/{001_Knowledge,002_The_book,003_Systems,004_Data_processing_and_computer_science,005_Computer_programming\,_programs\,_and_data,006_Special_computer_methods,007_UNI_Leipzig_CS_bachelor}

# Create subdirectories for Encyclopedias and Books of Facts
mkdir -p Notes/030_Encyclopedias_and_books_of_facts/{031_Korean,032_German,033_English}

# Create subdirectories for Economics
mkdir -p Notes/330_Economics/332_Financial_economics

# Create subdirectories for Science
mkdir -p Notes/500_Science/{510_Mathematics,512_Algebra,515_Analysis,519_Probabilities_and_applied_mathematics}

# Create subdirectories for Physics
mkdir -p Notes/530_Physics/537_Electricity_and_electronics

# Create subdirectories for Uni Leipzig informatik 

mkdir -p Notes/000_Computer_science\,_knowledge\,_and_systems/007_UNI_Leipzig_CS_bachelor/007.1_Semester/{007.11_ADS,007.12_Analysis,007.13_DS,007.14_MuP,007.15_TI1}}	
mkdir -p Notes/000_Computer_science\,_knowledge\,_and_systems/007_UNI_Leipzig_CS_bachelor/007.2_Semester/{007.21_ADS2,007.22_Linear,007.23_Logik,007.24_MuP2,007.25_OOP}
mkdir -p Notes/000_Computer_science\,_knowledge\,_and_systems/007_UNI_Leipzig_CS_bachelor/007.3._Semester/{007.31_Automata,007.32_DBS,007.33_Kommunikation,007.34_Software_Technik,007.35_Wahrscheinlichkeit}

if command -v tree >/dev/null 2>&1; then
    tree . > blog_tree.txt
else
    echo "tree command is not available. Please install it to view the directory structure."
fi

echo "Directory structure has been created.\n"
echo "you can find your direcrory structure in ./blog_tree.txt"
