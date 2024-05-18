require'./lib/travel'

p Travel
  .new
  .with_dates(start_date,end_date)
  .from(origin)
  .to(destination)