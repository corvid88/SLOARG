# Sets up a run of VIC with data files defined below.

# SETTINGS

ROOT_DIRECTORY="/home"

# All your input files that VIC will use.
INPUT_PARAMETERS_DIRECTORY="src/VIC_sample_data/classic/Stehekin/parameters"
GLOBAL_PARAMETERS_FILENAME="global_param.STEHE.txt"

# Path to the VIC binary file
VIC_EXECUTABLE_DIRECTORY="src/VIC/vic/drivers/classic"
VIC_EXECUTABLE_FILENAME="vic_classic.exe"

# These will be created in the script -- they do not have to exist.
VIC_INPUT_DIRECTORY="input_data" 
VIC_OUTPUT_DIRECTORY="results"

# -------------------

echo "Copying input data files to $VIC_INPUT_DIRECTORY."
cp -R $ROOT_DIRECTORY"/"$INPUT_PARAMETERS_DIRECTORY $ROOT_DIRECTORY"/"$VIC_INPUT_DIRECTORY

echo "Copying VIC executable to $VIC_INPUT_DIRECTORY."
cp $ROOT_DIRECTORY"/"$VIC_EXECUTABLE_DIRECTORY"/"$VIC_EXECUTABLE_FILENAME $ROOT_DIRECTORY"/"$VIC_EXECUTABLE_FILENAME

echo "Creating results directory."
mkdir $ROOT_DIRECTORY"/"$VIC_OUTPUT_DIRECTORY

echo "VIC setup complete. Run VIC with:"
echo "./"$VIC_EXECUTABLE_FILENAME" -g "$VIC_INPUT_DIRECTORY"/"$GLOBAL_PARAMETERS_FILENAME 
