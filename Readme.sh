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




