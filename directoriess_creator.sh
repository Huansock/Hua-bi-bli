# Create the top-level Notes directory
mkdir -p Notes

# Create subdirectories for Computer Science, Knowledge, and Systems
mkdir -p Notes/000\ Computer\ science\,\ knowledge\,\ and\ systems/{001\ Knowledge,002\ The\ book,003\ Systems,004\ Data\ processing\ and\ computer\ science,005\ Computer\ programming\,\ programs\,\ and\ data,006\ Special\ computer\ methods,007\ UNI\ Leipzig\ CS\ bachelor}

# Create subdirectories for Encyclopedias and Books of Facts
mkdir -p Notes/030\ Encyclopedias\ and\ books\ of\ facts/{031\ Korean,032\ German,033\ English}

# Create subdirectories for Economics
mkdir -p Notes/330\ Economics/332\ Financial\ economics

# Create subdirectories for Science
mkdir -p Notes/500\ Science/{510\ Mathematics,512\ Algebra,515\ Analysis,519\ Probabilities\ and\ applied\ mathematics}

# Create subdirectories for Physics
mkdir -p Notes/530\ Physics/537\ Electricity\ and\ electronics

# Create subdirectories for Uni Leipzig informatik 

mkdir -p 007.1\ 1.\ Semester/{007.11\ ADS,007.12\ Analysis,007.13\ DS,007.14\ MuP,007.15\ TI1}
mkdir -p 007.2\ 2.\ Semester/{007.21\ ADS2,007.22\ Linear,007.23\ Logik,007.24\ MuP2,007.25\ OOP}
mkdir -p 007.3\ 3.\ Semester/{007.31\ Automata,007.32\ DBS,007.33\ Kommunikation,007.34\ Software\ Technik,007.35\ Wahrscheinlichkeit}

if command -v tree >/dev/null 2>&1; then
    tree . > blog_tree.txt
else
    echo "tree command is not available. Please install it to view the directory structure."
fi

echo "Directory structure has been created.\n"
echo "you can find your direcrory structure in ./blog_tree.txt"
