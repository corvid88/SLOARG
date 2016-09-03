# SLOARG
Repo for SLOARG climate modeling app.

## Set Up from Scratch
If you already see `run_vic.exe` in the project directory, you can skip right to Running the Model. Or use these steps to start over completely.

1. Pull down the VIC model from github.
`git clone https://github.com/UW-Hydro/VIC.git`
2. Pull down VIC's standard sample data for reference.
`git clone https://github.com/UW-Hydro/VIC_sample_data`
3. Compile VIC's executable file so we can run it.
`
# Change to the actual executable directory
$ cd VIC/vic/drivers/classic 
# Do the executable compilation
$ make  
# if you see a bunch of warnings that should be fine, 
# as long as there are no full on errors.
`
4. Move the executable to a more accessible location.
`
# Back out to the project directory.
$ cd ../../../../
# Copy the executable with a simpler name.
$ cp VIC/vic/drivers/classic/vic_classic.exe ./vic_run.exe
`

## Running the Model

1. Add all forcings files to `vic_input/forcings`.
2. Add all parameter files to `vic_input/parameters`.
3. Set up your global parameters file -- this file:
..* Defines necessary universal variables (we will have to figure this out)
..* Defines file paths for all the other "lesser" parameters files. Make sure these are set appropriate to your machine.
4. Run the model!
`./vic_run.exe -g <GLOBAL_PARAMETERS_FILENAME>`

## Resources

VIC Model Docs:
[http://vic.readthedocs.io/en/develop/Overview/ModelOverview/](http://vic.readthedocs.io/en/develop/Overview/ModelOverview/)

Global Parameters Instructions:
[http://vic.readthedocs.io/en/develop/Documentation/Drivers/Classic/GlobalParam/](http://vic.readthedocs.io/en/develop/Documentation/Drivers/Classic/GlobalParam/)

Running the models instructions:
[http://vic.readthedocs.io/en/develop/Documentation/Drivers/Classic/RunVIC/](http://vic.readthedocs.io/en/develop/Documentation/Drivers/Classic/RunVIC/)
