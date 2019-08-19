# ASKING INPUT FROM A USER
# gets.chomp #==> always returns data in form of a string


# ARRAY
# ---------------------------------------------
# - list of elements

# HASH
# ---------------------------------------------
# - key/value pairs


# CRUD : CREATE // READ // UPDATE // DELETE

# ACTION      | ARRAY                     | HASH                        |
# -----------------------------------------------------------------------
# create      | array << element          | name_hash[key] = value      |
#             | array.push(element)       |                             |
# -----------------------------------------------------------------------
# read        | array[index]              | name_hash[key]              |
# -----------------------------------------------------------------------
# update      | array[index] = new value  | name_hash[key] = new value  |
# -----------------------------------------------------------------------
# delete      | array.delete(element)     | name_hash.delete(key)       |
#             | array.delete_at(index)    |                             |
# -----------------------------------------------------------------------


# VARIABLES
# ---------------------------------------------
# - we can store any datatype in a variable
# - we can assign a value to the variable (store it in a box)
# - we can re-assign a value to the variable (open the box and store a new value)
# - age += 1 (incrementation)
# - age -= 1 (decrementation)

# Concatenation > glue strings together
# ---------------------------------------------
# first_name = "Boris"
# last_name = "Paillard"
# - 'I am ' + first_name + ' ' + last_name

# Interpolation > glue strings together
# ---------------------------------------------
# "I am #{first_name} #{last_name}"
# - always double quotes
# - we can do ruby code inside

# CONDITIONALS/LOOPS
# ---------------------------------------------
# - until/while
# - if/unless
# - if/elsif/else
# - case statement


# METHODS
# ---------------------------------------------
# - does it take parameters? how many?
# - whats the name of my method?
# - what does the method return? It always returns something!!
# - By default the last line of code
# Argument: what we pass to the parameter
# Parameter: placeholder for argument, can take any value

# def name_method(parameters)
#   method body
#   returns something
# end

# Parameters vs. Arguments
def new_population(population, births)
  return population + births
end
# population and births are parameters

puts new_population(2000000, 300)

# 2000000 and 300 are arguments
# the parameters are going to take the values of the arguments
