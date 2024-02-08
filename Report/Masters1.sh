% python -c "
import os

# Get all files in the current directory
files = os.listdir()

# Filter out only the .bib files
bib_files = [f.replace('.bib', '') for f in files if f.endswith('.bib')]

# Generate the LaTeX command
bib_command = '\\bibliography{' + ','.join(bib_files) + '}'

print(bib_command)
"
