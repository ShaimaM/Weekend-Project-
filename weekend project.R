# Cost for adults and children
ticket_cost <- 60
ticket_cost_child <- 30
# List 5 of your favorite movies
movies <- c('Toy Story', 'Another Round', 'captain phillips',
            'once upon a time','The Assistant') 
#n_movies <- 5
# How many screens does the theater have? (assume 1 per movie)
screens <- 5
# How many seats does each theater hold
seats <- 100 
week_days <- rep(0, 7)  # Store totals for each day

# iterate through the week
for (i in 1:length(week_days)) {
  
  # Keep track of total revenue for the day
  Total_revenue <- 0
  
  # iterate through the amount of screens on a particular day
  for (j in 1:length(screens)) {
    
    # Calculate  how many adults and children are watching the movie
    visitors_adults <- sample(seats, 1)
    visitors_children <- sample((seats - visitors_adults), 1)
    
    # Calculate the revenue for adults and children
    Total_revenue_adult = visitors_adults * ticket_cost 
    Total_revenue_children = visitors_children * ticket_cost_child
    
    # Calculate revenue, and add to running total for the day
    Total_revenue = Total_revenue_adult + Total_revenue_children + Total_revenue
    print(Total_revenue)
  }
  week_days[i] <- Total_revenue
}
print (week_days)
highest_revenue_day = max(which.max(week_days))
cat("Revenue was the highest in the day:", highest_revenue_day)

week_day = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")
barplot(week_days, names.arg = week_day, col = "lavender", border = "maroon",
        xlab = "Days", ylab = "Total Revenue", main = "The Week Revenue")
order(week_day, decreasing=TRUE)