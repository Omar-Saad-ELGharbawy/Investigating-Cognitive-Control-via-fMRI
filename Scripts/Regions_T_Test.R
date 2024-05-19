for (i in 1 : 7){
  print("Please Enter Region : ")
  print(i)
  # scan voxels of : incongruent , congruent , incongruent- congruent tasks
  print("Cope 1")
  incongruent <- scan()
  print("Cope 2")
  congruent <- scan()
  print("Cope 3")
  difference_group <- scan()
  
  # Perform t-test and extract p-value
  difference_pvalue <- t.test(difference_group)$p.value
  incongruent_pvalue <- t.test(incongruent)$p.value
  congruent_pvalue <- t.test(congruent)$p.value
  
  # symbol to indicate if p value is significant or very significant ot not significant
  if (incongruent_pvalue < 0.001) {
    incong_symbol <- "**"
  } else if (incongruent_pvalue < 0.05) {
    incong_symbol <- "*"
  } else {
    incong_symbol <- ""
  }
  if (congruent_pvalue < 0.001) {
    cong_symbol <- "**"
  } else if (congruent_pvalue < 0.05) {
    cong_symbol <- "*"
  } else {
    cong_symbol <- ""
  }
  if (difference_pvalue < 0.001) {
    diff_symbol <- "**"
  } else if (difference_pvalue < 0.05) {
    diff_symbol <- "*"
  } else {
    diff_symbol <- ""
  }
  region_label <- paste("Region ",i)
  colors <- c("green", "blue", "red")
  # Plot the bar chart with significance symbols
  barplot(c(mean(incongruent), mean(congruent),mean(difference_group) ), 
          names.arg = c("Incongruent", "Congruent", "Incong-Cong"), 
          ylim = c(0, max(c(mean(incongruent), mean(congruent),mean(difference_group))+0.5 )), 
          ylab = "Mean Value", main = region_label,col = colors)
  text(0.7, mean(incongruent)+0.1, incong_symbol)
  text(1.9, mean(congruent)+0.1, cong_symbol)
  text(3.1, mean(difference_group)+0.1, diff_symbol)
}