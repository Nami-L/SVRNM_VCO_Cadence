# SVRNM_VCO
Modeling a Voltage-Controlled Oscillator in SVRNM

![simulación del Modelo RNM](vco.png)

### Comando para configurar Cadence usando **Makefile**

```bash
setenv GIT_ROOT `git rev-parse --show-toplevel`
setenv UVM_WORK $GIT_ROOT/work/uvm
mkdir -p $UVM_WORK && cd $UVM_WORK
ln -sf $GIT_ROOT/hw/Makefile/Makefile.vcs Makefile
```

### Makefile
Despues de hacer los pasos anterior para tener el entorno de Trabajo, puedes utilizar ahora el makefile:
- make compile : Te servira para compilar y ver los resultados
- make run: Te ayurara para compilar, ver los resultados y ver la interfaz gráfica

Y si tienes dudas, puedes colocar make var o make help :)