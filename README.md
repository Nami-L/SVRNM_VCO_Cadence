# SVRNM_VCO
Modeling a Voltage-Controlled Oscillator in SVRNM


### Comando para configurar synopsys usando **Makefile**

```bash
setenv GIT_ROOT `git rev-parse --show-toplevel`
setenv UVM_WORK $GIT_ROOT/work/uvm
mkdir -p $UVM_WORK && cd $UVM_WORK
ln -sf $GIT_ROOT/hw/Makefile/Makefile.vcs Makefile
