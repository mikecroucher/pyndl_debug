# Creating the environment

```
conda create -n ooominds_debug python=3.6 ipython pandas netCDF4 Cython xarray
source activate ooominds_debug
```

Clone my fork of pyndl and install into the environment we created and activated above

```
git clone https://github.com/mikecroucher/pyndl
cd pyndl
python setup.py install
```

My fork of pyndl is for our experimentation.

# Test data
Full production run 

* test_train_mike.sh - ShARC submission script for full production run
* test_train.py - the Python script called by `test_train_mike.sh`

On ShARC, In the folder `/shared/ooominds1/Shared/rse_pyndl_debug` we have two smaller data sets

* 100K_tri.gz - The first 100 thousand lines of the full data set.  This completes fairly quickly on a desktop using 1 thread
* 1M_tri.gz - The first 1 million lines of the full data set

On running this

```
source activate ooominds_debug
ipython3 test_train.py  ./1M_tri.gz ./tri_test.nc
```

It gets as far as starting training.
If you run `top` or similar, you'll see that memory steadily climbs.   I quit it when it reached 24GB on my 16GB Mac.

Question: Which part of the code is eating all the memory?  Need to do memory profiling.

I'm using one thread at the moment to keep things simple









