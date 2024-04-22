datos <- read.csv("stackoverflow.csv")

library(ggplot2)

# Crear el linechart utilizando ggplot
linechart <- ggplot(stack, aes(x = 1:nrow(stack), y = python)) +
  geom_line(color = "#0052a5", size = 0.8) +  
  scale_x_continuous(breaks = seq(1, nrow(stack), length.out = 11), labels = seq(2009, 2019, length.out = 11)) +
  labs(x = "Año", y = "Frecuencia", title = "Preguntas con la palabra python en Stack Overflow") +
  theme_minimal() +  
  theme(
    panel.grid.major = element_line(color = "#000000", linewidth = 0.3, linetype = "dotted"),  
    panel.grid.minor = element_line(color = "#000000", linewidth = 0.3, linetype = "dotted"),  
    plot.background = element_rect(fill = "#ffd600", color = NA),            
    axis.title = element_text(color = "#0052a5", size = 15, face = "bold"),                      
    axis.text = element_text(size = 14),                                     
    plot.title = element_text(color = "#0052a5", size = 22, face = "bold")              
  )

# Guardar el gráfico como imagen
ggsave("linechart_stackoverflow.png", plot = linechart, width = 10, height = 6, units = "in")


