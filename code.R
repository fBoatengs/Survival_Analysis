library(survival)
library(coin)
library(survminer)


## Drawing the Survival curve for the 2 treatment groups
fit<-survfit(Surv(time,event) ~ group,data=glioma)

ggsurvplot(fit, data = glioma,
           legend.labs =c("Control", "RIT"),
           ggtheme = theme_bw()
           
-- The plot shows a difference in the survival curves for patients treated with  the novel radioimmunotherapy and those in the control group. That is patients  treated with the novel radioimmunotherapy have, on average, longer survival times than patients in the control group.
                      
           
## Applying the log-rank test for the two treatments
survdiff(Surv(time,event) ~ group,data=glioma)

-- Since the p-value is less than 0.05, we reject the null hypothesis and conclude that there is a significant difference in survival times between  patients treated with the novel radioimmunotherapy and those in the control group. 
