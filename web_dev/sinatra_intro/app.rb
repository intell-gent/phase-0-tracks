# require gems
require 'sinatra'
require "sinatra/reloader"
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET routen 
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do

  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a get /contact route that displays an address
get '/address' do
  "<h3>633 Folsom, <br> San Francisco,<br> CA 94107 </h3>"
end
# A /great_job route that can take a person's name as a query parameter
# say "Good job, [person's name]!". 
# ELSE, the route simply says "Good job!"
get '/great_job/:person' do
  if params[:person]
    "Good job, #{params[:person]}!"
  else
    "Good job!"
  end
end
# A route that uses route parameters to add two numbers and respond with the result.
get '/add/:num1/:num2' do 
  total = params[:num1].to_i + params[:num2].to_i
  "#{params[:num1]} + #{params[:num2]} = #{total}"
end

# Optional bonus: Make a route that allows the user 
# to search the database in some way 
get '/search/:name' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    current_name = "#{student['name']}".split(" ")
    if current_name[0] == "Mr." || current_name[0] == "Ms." || current_name[0] == "Mrs." || current_name[0] == "Dr." || current_name[0] == "Miss" 
      if current_name[1]  == params[:name]
        response << "ID: #{student['id']}<br>"
        response << "Name: #{student['name']}<br>"
        response << "Age: #{student['age']}<br>"
        response << "Campus: #{student['campus']}<br><br>"
      end
    else
        if current_name[0]  == params[:name]
          response << "ID: #{student['id']}<br>"
          response << "Name: #{student['name']}<br>"
          response << "Age: #{student['age']}<br>"
          response << "Campus: #{student['campus']}<br><br>"
        end
    end 
  end
  response
end

# checks output
# get '/input/:output' do
#   output = params[:output]
#   "#{output} is a #{output.class}."
#  end