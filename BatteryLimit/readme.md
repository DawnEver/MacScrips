# batteryLimit
tool based on [smcFanControl](https://github.com/hholtmann/smcFanControl)
### Opt 1(Recommand)
The Repo include smc and you could run `batteryLimit` with no configuration.
(Detail in [如何优雅地限制 MacOS 电池充电上限](https://linxu.hi-motor.site/en/posts/tech/Macos_battery_charge_limit))

### Opt 2(Origin)
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

#### automate
batteryLimit_origin