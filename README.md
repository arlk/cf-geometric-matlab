# Geometric Controller for Crazyflie on MATLAB/Simulink

### How to run?
Open MATLAB 2017a or greater and run `main.m`:
```
>> main
```
You can change `T` in `main.m` to increase/reduce simulation time.

### How to change model parameters?
Edit `functions/model_utils/crazyflie.m`

### How to change controller parameters?
Edit `functions/control_utils/geometric_control.m`

### How to change estimator parameters?
Edit `functions/control_utils/est_params.m`

### How to disable the estimator and make the controller effectively state-feedback?
Set `enable_est = 0` in `main.m`.

### How to edit the plotting function (change limits/colors/markers)?
Edit `functions/plot_utils/plot_traj.m`

### How to change the trajectory?
This is a little cumbersome. You will need to open up the Simulink model and edit or replace the `circle` block.
