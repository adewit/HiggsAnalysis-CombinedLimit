 source /cvmfs/cms.cern.ch/slc7_amd64_gcc820/external/gcc/8.2.0-bcolbf/etc/profile.d/init.sh
 source /cvmfs/cms.cern.ch/slc7_amd64_gcc820/external/gsl/2.2.1-bcolbf/etc/profile.d/init.sh
 source /cvmfs/cms.cern.ch/slc7_amd64_gcc820/external/boost/1.72.0-bcolbf/etc/profile.d/init.sh
 source /cvmfs/cms.cern.ch/slc7_amd64_gcc820/external/xz/5.2.4-bcolbf/etc/profile.d/init.sh
 source /cvmfs/cms.cern.ch/slc7_amd64_gcc820/external/tbb/2019_U9-bcolbf/etc/profile.d/init.sh
 source /cvmfs/cms.cern.ch/slc7_amd64_gcc820/external/igprof/5.9.16-bcolbf/etc/profile.d/init.sh
 #myroot
 source /afs/cern.ch/user/a/amarini/work/HiggsCombination/standalone/root-build/bin/thisroot.sh
 export LD_LIBRARY_PATH=/cvmfs/cms.cern.ch/slc7_amd64_gcc820/cms/vdt/0.4.0-bcolbf/lib:/cvmfs/cms.cern.ch/slc7_amd64_gcc820/external/pcre/8.37/lib/:${LD_LIBRARY_PATH}
 export PATH=${PATH}:${PWD}/exe:${PWD}/scripts
 export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${PWD}/lib
 export PYTHONPATH=${PYTHONPATH}:${PWD}/lib/python:${PWD}/lib

