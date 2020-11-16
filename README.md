HiggsAnalysis-CombinedLimit
===========================

### Official documentation

[Manual to run combine](http://cms-analysis.github.io/HiggsAnalysis-CombinedLimit/)

### Standalone compilation in `lxplus`
```
git clone https://github.com/cms-analysis/HiggsAnalysis-CombinedLimit.git HiggsAnalysis/CombinedLimit
cd HiggsAnalysis/CombinedLimit
source env_standalone.sh 
make -j 8; make # second make fixes compilation error of first
```

### Standalone compilation against RooFit-dev master & running
```
source env_standalone_root_master.sh
make -j 4
```

To run with igprof:
```
ulimit -s 128000 # NOT unlimited; doesn't assign enough memory to threads
igprof -d -t combine -z -mp -o igprof.mp.gz combine -M MultiDimFit  ... --igpMem # Will dump igprof reports at different points in the fit; they will have a name but it is currently hardcoded, so take care to rename the files after they are produced
```
Analysing igprof reports:
```
igprof-analyse --sqlite -d -v -r MEM_LIVE -g dump.afterminimize.out.gz | sed '/[[:cntrl:]]/d' | sqlite3 igreport_perf_afterminimize_memlive.sql3 # need to pass through sed to remove some unreadable characters
```
Setting up the reports on a CERN webpage:
```
mkdir /eos/user/u/username/www/cgi-bin
cd /eos/user/u/username/www/cgi-bin
wget https://raw.githubusercontent.com/igprof/igprof/master/src/igprof-navigator
mkdir data
```
Now copy the report to the data directory:
```
cp igreport_perf_afterminimize_memlive.sql3 /eos/user/u/username/www/cgi-bin/data/
```
And access the report at:
```
http://username.web.cern.ch/username/cgi-bin/igprof-navigator/igreport_perf_afterminimize_memlive
```



