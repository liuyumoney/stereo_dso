# files=XXX where XXX is either a folder or .zip archive containing images. They are sorted alphabetically. for .zip to work, need to comiple with ziplib support.
# gamma=XXX where XXX is a gamma calibration file, containing a single row with 256 values, mapping [0..255] to the respective irradiance value, i.e. containing the discretized inverse response function. See TUM monoVO dataset for an example.
# vignette=XXX where XXX is a monochrome 16bit or 8bit image containing the vignette as pixelwise attenuation factors. See TUM monoVO dataset for an example.
# calib=XXX where XXX is a geometric camera calibration file. See below.
# mode=X:
#   mode=0 use iff a photometric calibration exists (e.g. TUM monoVO dataset).
#   mode=1 use iff NO photometric calibration exists (e.g. ETH EuRoC MAV dataset).
#   mode=2 use iff images are not photometrically distorted (e.g. synthetic datasets).
# preset=X
#   preset=0: default settings (2k pts etc.), not enforcing real-time execution
#   preset=1: default settings (2k pts etc.), enforcing 1x real-time execution
#   preset=2: fast settings (800 pts etc.), not enforcing real-time execution. WARNING: overwrites image resolution with 424 x 320.
#   preset=3: fast settings (800 pts etc.), enforcing 5x real-time execution. WARNING: overwrites image resolution with 424 x 320.
# nolog=1: disable logging of eigenvalues etc. (good for performance)
# reverse=1: play sequence in reverse
# nogui=1: disable gui (good for performance)
# nomt=1: single-threaded execution
# prefetch=1: load into memory & rectify all images before running DSO.
# start=X: start at frame X
# end=X: end at frame X
# speed=X: force execution at X times real-time speed (0 = not enforcing real-time)
# save=1: save lots of images for video creation
# quiet=1: disable most console output (good for performance)
# sampleoutput=1: register a "SampleOutputWrapper", printing some sample output data to the commandline. meant as example.

./bin/dso_dataset \
    files=/data/KITTI/dataset/sequences/05   \
    calib=/data/KITTI/dataset/sequences/camera04-12.txt   \
    preset=0    \
    mode=1  \
    output_dir=/prj/3DV-AD/test/DSO-stereo-H/test_0000/KITTI/
