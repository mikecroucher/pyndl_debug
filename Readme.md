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

# Test data
On ShARC, In the folder `/shared/ooominds1/Shared/rse_pyndl_debug` we have two smaller data sets

* 100K_tri.gz - The first 100 thousand lines of the full data set
* 1M_tri.gz - The first 1 million lines of the full data set








