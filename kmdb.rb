Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

new_studio = Studio.new
new_studio["name"] = "Warner Bros"
new_studio.save

warner_bros=Studio.find_by({"name" => "Warner Bros"})


new_movie1 = Movie.new
new_movie1["title"] = "Batman Begins"
new_movie1["year_released"] = "2005"
new_movie1["rated"] = "PG-13"
new_movie1["studio_id"] = warner_bros["id"]
new_movie1.save


new_movie2 = Movie.new
new_movie2["title"] = "The Dark Knight"
new_movie2["year_released"] = 2008
new_movie2["rated"] = "PG-13"
new_movie2["studio_id"] = warner_bros["id"]
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"] = "The Dark Knight Rises"
new_movie3["year_released"] = 2012
new_movie3["rated"] = "PG-13"
new_movie3["studio_id"] = warner_bros["id"]
new_movie3.save

batman_begins=Movie.find_by({"title" => "Batman Begins"})
dark_knight=Movie.find_by({"title" => "The Dark Knight"})
dark_knight_rises=Movie.find_by({"title" => "The Dark Knight Rises"})

new_actor1 = Actor.new
new_actor1["name"] = "Christian Bale" #1
new_actor1.save

new_actor2 = Actor.new
new_actor2["name"] = "Michael Caine" #2
new_actor2.save

new_actor3 = Actor.new
new_actor3["name"] = "Liam Neeson" #3
new_actor3.save

new_actor4 = Actor.new
new_actor4["name"] = "Katie Holmes" #4
new_actor4.save

new_actor5 = Actor.new
new_actor5["name"] = "Gary Oldman" #5
new_actor5.save


new_actor6 = Actor.new
new_actor6["name"] = "Heath Ledger" #6
new_actor6.save

new_actor7 = Actor.new
new_actor7["name"] = "Aaron Eckhart" #7
new_actor7.save

new_actor8 = Actor.new
new_actor8["name"] = "Maggie Gyllenhaal" #8
new_actor8.save

new_actor9 = Actor.new
new_actor9["name"] = "Tom Hardy" #9
new_actor9.save

new_actor10 = Actor.new
new_actor10["name"] = "Joseph Gordon-Levitt" #10
new_actor10.save

new_actor11 = Actor.new
new_actor11["name"] = "Anne Hathaway" #11
new_actor11.save

christian_bale=Actor.find_by({"name" => "Christian Bale"}) #1
michael_caine=Actor.find_by({"name" => "Michael Caine"}) #2
liam_neeson=Actor.find_by({"name" => "Liam Neeson"}) #3
katie_holmes=Actor.find_by({"name" => "Katie Holmes"}) #4
gary_oldman=Actor.find_by({"name" => "Gary Oldman"}) #5
heath_ledger=Actor.find_by({"name" => "Heath Ledger"}) #6
aaron_eckhart=Actor.find_by({"name" => "Aaron Eckhart"}) #7
maggie_gyllenhaal=Actor.find_by({"name" => "Maggie Gyllenhaal"}) #8
tom_hardy=Actor.find_by({"name" => "Tom Hardy"}) #9
joseph_gordon_levitt=Actor.find_by({"name" => "Joseph Gordon-Levitt"}) #10
anne_hathaway=Actor.find_by({"name" => "Anne Hathaway"}) #11

new_role1 = Role.new
new_role1["movie_id"] = batman_begins["id"]
new_role1["actor_id"] = christian_bale["id"]
new_role1["character_name"] = "Bruce Wayne"
new_role1.save

new_role2 = Role.new
new_role2["movie_id"] = batman_begins["id"]
new_role2["actor_id"] = michael_caine["id"]
new_role2["character_name"] = "Alfred"
new_role2.save

new_role3 = Role.new
new_role3["movie_id"] = batman_begins["id"]
new_role3["actor_id"] = liam_neeson["id"]
new_role3["character_name"] = "Ra's Al Ghul"
new_role3.save

new_role4 = Role.new
new_role4["movie_id"] = batman_begins["id"]
new_role4["actor_id"] = katie_holmes["id"]
new_role4["character_name"] = "Rachel Dawes"
new_role4.save

new_role5 = Role.new
new_role5["movie_id"] = batman_begins["id"]
new_role5["actor_id"] = gary_oldman["id"]
new_role5["character_name"] = "Commissioner Gordon"
new_role5.save

new_role6 = Role.new
new_role6["movie_id"] = dark_knight["id"]
new_role6["actor_id"] = christian_bale["id"]
new_role6["character_name"] = "Bruce Wayne"
new_role6.save

new_role7 = Role.new
new_role7["movie_id"] = dark_knight["id"]
new_role7["actor_id"] = heath_ledger["id"]
new_role7["character_name"] = "Joker"
new_role7.save

new_role8 = Role.new
new_role8["movie_id"] = dark_knight["id"]
new_role8["actor_id"] = aaron_eckhart["id"]
new_role8["character_name"] = "Harvey Dent"
new_role8.save

new_role9 = Role.new
new_role9["movie_id"] = dark_knight["id"]
new_role9["actor_id"] = michael_caine["id"]
new_role9["character_name"] = "Alfred"
new_role9.save

new_role10 = Role.new
new_role10["movie_id"] = dark_knight["id"]
new_role10["actor_id"] = maggie_gyllenhaal["id"]
new_role10["character_name"] = "Rachel Dawes"
new_role10.save

new_role11 = Role.new
new_role11["movie_id"] = dark_knight_rises["id"]
new_role11["actor_id"] = christian_bale["id"]
new_role11["character_name"] = "Bruce Wayne"
new_role11.save

new_role12 = Role.new
new_role12["movie_id"] = dark_knight_rises["id"]
new_role12["actor_id"] = gary_oldman["id"]
new_role12["character_name"] = "Commissioner Gordon"
new_role12.save

new_role13 = Role.new
new_role13["movie_id"] = dark_knight_rises["id"]
new_role13["actor_id"] = tom_hardy["id"]
new_role13["character_name"] = "Bane"
new_role13.save

new_role14 = Role.new
new_role14["movie_id"] = dark_knight_rises["id"]
new_role14["actor_id"] = joseph_gordon_levitt["id"]
new_role14["character_name"] = "John Blake"
new_role14.save

new_role15 = Role.new
new_role15["movie_id"] = dark_knight_rises["id"]
new_role15["actor_id"] = anne_hathaway["id"]
new_role15["character_name"] = "Selina Kyle"
new_role15.save



# Prints a header for the movies output
puts ""
puts "Movies"
puts "======"
puts ""

movies_all=Movie.all

for movie in movies_all
    movie_name=movie["title"]
    movie_year=movie["year_released"]
    movie_rated=movie["rated"]
    movie_studio_id=movie["studio_id"]

    studio_name=Studio.find_by({"id" => movie_studio_id})

    puts "#{movie_name} #{movie_year} #{movie_rated} #{studio_name["name"]}"
end


# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

roles_all=Role.all

for role in roles_all
    movieid=role["movie_id"]
    actorid=role["actor_id"]
    charactername=role["character_name"]

    movie_name=Movie.find_by({"id" => movieid})
    actor_name=Actor.find_by({"id" => actorid})

    puts "#{movie_name["title"]} #{actor_name["name"]} #{charactername}"
end



# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!


