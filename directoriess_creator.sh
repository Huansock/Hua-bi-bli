#!/bin/sh 



Root="Notes"

# 000 childs
000_childs=("001 Knowledge" "002 The book" "003 Systems" "004 Data processing and Computer Science" "Computer programming, programs, and data" "Special computer methods (e.g. AI, multimedia, VR)" "007 Uni-Leipzig CS")

for cs_child in "${000_childs[@]}"
do
    mkdir -p ${Root/000 Computer science/cs_child}
done

# 007 childs
007_child= 

# 030 childs
Enc_childs=("032 Encyclopedias in English" "033 Encyclopedias in other Germanic languages" "039 korean language")

for enc_child in "${Enc_childs[@]}"
do
    mkdir -p ${Root/030 Encyclopedias and books of facts/enc_child}
done

# 330 Eonomics
mkdir -p ${Root/"300 Eonomics"/"330 Economics"/"332 Financial economics"}

# Create subdirectories for Science
mkdir -p ${Root/"500 Science"/510_Mathematics,512_Algebra,515_Analysis,519_Probabilities_and_applied_mathematics}

# Create subdirectories for Physics
mkdir -p Notes/530_Physics/537_Electricity_and_electronics

# Create subdirectories for Uni Leipzig informatik 

mkdir -p Notes/000_Computer_science\,_knowledge\,_and_systems/007_UNI_Leipzig_CS_bachelor/007.1_Fst-Semester/{007.11_ADS,007.12_Analysis,007.13_DS,007.14_MuP,007.15_TI1}	
mkdir -p Notes/000_Computer_science\,_knowledge\,_and_systems/007_UNI_Leipzig_CS_bachelor/007.2_Snd-Semester/{007.21_ADS2,007.22_Linear,007.23_Logik,007.24_MuP2,007.25_OOP}
mkdir -p Notes/000_Computer_science\,_knowledge\,_and_systems/007_UNI_Leipzig_CS_bachelor/007.3._Thd-Semester/{007.31_Automata,007.32_DBS,007.33_Kommunikation,007.34_Software_Technik,007.35_Wahrscheinlichkeit}

if command -v tree >/dev/null 2>&1; then
    tree . > blog_tree.txt
else
    echo "tree command is not available. Please install it to view the directory structure."
fi

echo "Directory structure has been created.\n"
echo "you can find your direcrory structure in ./blog_tree.txt"
