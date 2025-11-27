# Module 1: Basic Building Blocks

# R can be used as a means for calculations, storing objects <- , doing
# calculations with stored variables and multiple stored values integrated
# into the operations, vector creation with concatenate c(), the help
# operation ?, basic functions such as +, -, /, *, ^, sqrt, abs. recycling
# operations, up arrow for cycling through old prompts, tab for previous
# variables.

# Module 2: Work space and Files

# showing the working directory through getwd(), listing all objects in
# in the local work space with ls(), listing all files in the working
# directory with list.files() or dir(), args() shows what arguments are
# required and not required for a function, dir.create() to create new
# working directories, setwd() to set the working directory,file.create()
# to create new files in the working directory, file.exists() to check
# for the existence of a file, file.info() to check information about a 
# files content's, file.rename() to rename files, copying files with 
# file.copy(), checking file paths with file.path(), 

# Module 3: Sequences of Numbers

# creating sequences of numbers in R using the : operator, they will be 
# created both forward add backwards, they can count by values other then
# integers but will only display numbers that fall between the bounds and 
# count based on the inputs you provide, seq() allows for control over the
# ":" operations, by function for how much to count by and the length to 
# set how long you want the count to be within the bounds, along does similar
# rep() to replicate functions, the each argument put each part of a vector
# the desired number of times requested instead of repeating the vector

# Module 4: Vectors

# atomic vectors are vectors consisting of one data type, where as lists 
# vectors are vectors with multiple data types, logical vectors, character
# vectors, integer vectors, and complex vectors, <, >, <=, >=, ==, !=, | "or:
# & "and", ! "not", paste function bringing vectors together, collapse
# function, merging vectors of same and different lengths.

# Module 5: Missing Values

# NA not available or missing, my_NA function to find NA's, sums(), NaN(),
# infinity

# Module 6: Sub-setting Vectors

#indexing vectors with [], is.na, !is.na, calling for all elements of a vector
# except for particular parts with -, naming vectors before or after their
# creation, changing the vector name with names(), checking if a vector is
# identical with another vector with the identical function, how a vector
# will respond based on what you call either a name or a numeric.

# Module 7: Matrices and Data Frames

# dim() shows the dimensions of a vector or a data from and is listed row
# then column, dim wont release vector data because it is 1 x length, the
# length function will check the vectors length, you can set dimensions with
# the dim function as well, the attributes function will also show the 
# dimensions, the class function tells us the class of a a section of data or
# if a chunk of data is a vector or data frame, combining columns in a 
# matrix causes there to all be one class type, using the data.frame 
# functions allows for two different classes to come together while 
# maintaining the integrity of the original combine data sets, the colnames
# function allows you to apply names to data frames.

# Module 8: Logic

# Starting with logical operators such as ==, inequality operators, not equal
# operations with !=, looking through logical expressions using comparisons
# such as the & and | operators, single uses of these operators evaluate across
# the entire vector while double uses just do the first non vectorised value
# AND operators are evaluated before OR operators, isTRUE() functions evaluating
# if a argument evaluates to true, use of the identical function again, xor()
# is a function used to determine if a function is exclusively OR meaning only 
# one side of the OR is TRUE, sample function gives us a random assortment of 
# integers ranging from our desired input in this case 10, which() function tells
# us which options in a vector are following the requested question, the any()
# and all() functions do the same respective to their names, 

# Module 9: Functions

# The Sys.Date function returns the local computers date, the mean function 
# returns the mean of all the arguments imputed, the boring function to return
# x without changing it, looking at a function source code by calling it 
# without args or parenthesis, writing my own mean function, saving the functions
# placing arguments for my functions to run, creating a remainder function with 
# a constant default argument, R will attempt to assume what arguments you are 
# fulllfilling when inputting arguments for a function, you can also assign 
# argument values outside of the original function code without issues this is 
# convenient for small offshoot tasks or quick manipulations across a large 
# work passing functions as arguments within other functions, using the paste 
# function, ellipses in code allow for an infinite amount of arguments, creating
# our own binary operators.

# Module 12: Looking at Data

# using the ls() function to look at all variables in the local work space, 
# checking the class of data with the class function, using the dim()
# function to see the dimensions of a data set, the nrow function will show 
# the number of rows, the ncol will show the number of columns, object.size
# will show how much memory and object is taking up, names() to show the 
# names of the data we took, the head() function shows the firs few rows of
# data, tail() shows the final few rows of data, the summary() function
# gives a summary of all the outputs in a data set, calling particular outputs
# whwen R trunckates using the $ operator in the summary argument,
