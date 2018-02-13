import sys
from pyndl import ndl
#A test script but Mike

def train(_events, _matrix):
    weights = ndl.ndl(events=_events,
                      alpha=0.1, betas=(0.1, 0.1),
                      method="openmp", number_of_threads=1,
                      remove_duplicates=True,verbose=True)
    weights.to_netcdf(_matrix)


def main():
    _events = sys.argv[1]
    _matrix = sys.argv[2]
    train(_events, _matrix)


if __name__ == "__main__":
    main()
