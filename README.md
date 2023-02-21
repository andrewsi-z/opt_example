# opt_example

## Lab exercises: A simple container image build to run a TensorFlow hands-on exercise.

## Overview
This project is to assist in the creation of a container environment to run a simple tensorflow example.

The jupyter notebook referenced is available here: https://www.tensorflow.org/tutorials/keras/classification
It will be downloaded automatically as part of the container build.

## Steps:

1. Clone the lab github repository `git clone https://github.com/andrewsi-z/opt_example.git`

2. Navigate to the subdirectory.

3. Run docker build using the provided dockerfile `docker build .`
    - Using a python base image, this will create an environment with a recent TensorFlow release, various libraries, as well as the lab jupyter notebooks.

4. Create and run a docker container using the image created on the prior step. As part of this step, you should map the jupyter notebook port, 8888, to a port on your local system. An example follows:
    - `docker run -it --rm -p 8571:8888 <image id> `
    - This states the image in interactive mode, tells docker to delete the container upon exit, and publishes container port 8888 to host port 8571.

5. From a web browser, connect to the jupyter URL provided on the prior step. Note, you must change port 8888 to port 8571.


