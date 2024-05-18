require'./lib/travel'

p Travel
  .new
  .with_dates("10/08/2024","15/08/2024")
  .from("Macaé - RJ")
  .to("Porto Alegre - RS")