######################## Prepping Data #################################
# Prior to creating any data visualization, it is important that we clean our data
# and conform it to only the observations that will be relevent to us. 

# Set your working directory and load in the 'dplyr' package into your current R session.


# Read in `IHME_WASHINGTON_CANCER_MORTALITY_RATES_1980_2014.csv` data using relative path


# Remove all non-county observations from the data set 


# Remove all observations that contain mortality rates for "both" sex


# Now let's take a closer look at the data for just "King County"
# Store all the relevant information in a variable called 'King.County'


# For the remainder of the exercise, we will be using "Neoplasms" as
# our cancer cause. Store inside a variable 'neoplasms.kc' all the information
# with neoplasms as the cause.


# To make things a little easier for graphing later, let's just take data for the 
# past 10 years. (Starting at 2014)


# Using our data from 2005-2014, create a data frame that has only the 'sex', 'year_id'
# and 'mortality_rate'


# Take a look at our data. You see how the data is "long"? For the plot that we are 
# interested in making, the data must be "wide". In a lot of instances where you are
# using charting apis (i.e. Plotly, ggplot2, D3), you must conform your data to work with
# such apis. To do so now, we will be using a package called `reshape2`.

# Install the `reshape2` package and load it into your current session


# For the sake of time, we've provided code on how to properly "cast" your data to
# wide format (assuming that you've correctly followed the instructions above). 
# We would highly recommend you looking into how this works. Below is a link 
# that explains the concept: http://seananderson.ca/2013/10/19/reshape.html
prepped.data <- dcast(neoplasms, year_id ~sex)

######################## Plotting Data #################################
# Now that our data has been prepped, it's time to create pretty visuals.
# The plot that we are recreating can be found at https://plot.ly/r/bar-charts/
# under the "Grouped Bar Chart" example. 

# First, let's make sure we have the `plotly` package installed and loaded into 
# our current R session


# Using the plot_ly function from the `plotly` package, pass in your prepped data
# as the data, the 'year_id' column as the x and the 'Female' column as the y.
# The plot type should be 'bar' and and make sure you include a name for the trace.


# Take a look at what you've made thus far. It doesn't look like what we want it
# to but we're getting close to it! 
# Now that our plot countains the Female mortality rates, we need to add a trace 
# for that of Male mortality rates.

# Using the `pipe` operator, use the add_trace function to add a trace for the Male
# mortality rates so that it can be included in your plot from above.
# Within your add_trace function, use the "Male" column as your y. You dont need to add
# a trace for x, but make sure you add a name for the trace.


# Take a look at what you've made thus far. You should see that the cancer
# mortaility rates for female and males each year are plotted next to each other. 
# Now that we have the foundation down, it's time to make our plot look presentable. 
# Let's start by adding a layout to the plot. Add a title for the overall plot, as well as 
# for both axes. Add a margin of 100 as well as a barmode of "group".




########################### Bonus ###################################
# Now, let's add some color to our plot.
# Make a new plot and add pink for the female trace, and blue for the male trace.





