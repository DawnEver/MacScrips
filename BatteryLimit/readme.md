# batteryLimit
tool based on [smcFanControl](https://github.com/hholtmann/smcFanControl)

#### initial
git clone https://github.com/hholtmann/smcFanControl.git
cd smcFanControl/smc-command
make
sudo ./smc -k BCLM -w [*limited value(16)*]

#### change value
cd smcFanControl/smc-command 
sudo ./smc -k BCLM -w [*limited value(16)*]

#### show value
./smc -k BCLM -r