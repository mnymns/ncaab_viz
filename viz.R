library(ggplot2)
library(ggrepel)

dat <- read.csv('data.csv')


png("all_teams.png", width = 800, height = 600)
plot(dat$pt_for_dif, dat$pt_ag_dif,
     xlab = "Points For Differential",
     ylab = "Points Against Differential",
     main = "Home vs Away Point Differential by Team")
segments(
  x0 = -5, y0 = -15,
  x1 = 15, y1 = 5,
  lwd = 2,
  col = "red"
)
dev.off()

dat_sub <- dat[dat$pt_for_dif - dat$pt_ag_dif >= 11, ]

png("top_teams.png", width = 800, height = 600)
ggplot(dat_sub, aes(x = pt_for_dif, y = pt_ag_dif, label = team_name)) +
  geom_point() +
  geom_text_repel(
    size = 3,
    max.overlaps = Inf
  ) +
  geom_segment(
    x = -5, y = -15,
    xend = 15, yend = 5,
    color = "red",
    linewidth = 1
  ) +
  labs(
    x = "Points For Differential",
    y = "Points Against Differential",
    title = "Top Home vs Away Point Differential by Team"
  )
dev.off()

