
Project prepared with [@mmcza](https://www.github.com/mmcza).
![drone_with_adaptive_control_model_reference](https://github.com/dariak153/Adaptive_Control_Flapping_Wings_Drone/blob/main/drone_with_MRAC.png)
Drone model implemetation with PD controller and MRAC controller in Symulink
![step_response](https://github.com/dariak153/Adaptive_Control_Flapping_Wings_Drone/blob/main/step_response_reference_signals.png)
Based on the comparative analysis of the response of the object and the model for a reference step signal with an amplitude of 60&deg;, which is visible in the figure, it can be concluded that the MIT method ensures stabilization at the given value. Using the selected transmittance of the model, a structure was obtained that allows eliminating excessive overshoots. However, oscillations around the steady state value occur for a relatively long time, which may result from the selected reference model.
![square_response](https://github.com/dariak153/Adaptive_Control_Flapping_Wings_Drone/blob/main/square_refence_signals.png)
An experiment was also carried out, which involved generating a square wave signal with a period of 8 seconds and an amplitude of 60\textdegree. The obtained graphs are visible in the figure. It was observed that for the first 4 seconds (first low state) the course is analogous to that obtained for a unit jump. After changing the reference signal level, the overshoot at the output $y$ is greater than the overshoot of the model response $y_{m}$, but the response settling time is shorter than during the first 4 seconds of the simulation. The reason is the non-linearity of the model. The transmittance $G_{m}(s)$ described by the formula ```latex
\begin{equation}
    G_{m}(s)=\frac{-6.88s^2 + 112.2s+585.1}{s^3+14.72s^2+147.3s+585.1}.
    \label{eq:transm_popr}
\end{equation}
``` was selected for a given operating point, and the linear approximation for the new operating point will differ from it. Changing $y_{ref}$ from the high state to the low state again caused the obtained response of the system $y$ to be most similar to the response of the $y_m$ model, both in terms of overshoot and the nature of the waveform.\\
After extending the simulation time, it was observed that subsequent periods give the same response as the one observed during 4-12 s.

