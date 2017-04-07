# Todo List app
# Create User interface
# add to a list
# Remove from list
# Print List
require 'sqlite3'
class ThedoList
  def initialize
    puts "building Database..."
    @list_db = SQLite3::Database.new("dolists.db")
    @list_db.results_as_hash = true
      create_table_list = <<-SQL
        CREATE TABLE IF NOT EXISTS list(
          id INTEGER PRIMARY KEY,
          item VARCHAR(255),
          description VARCHAR(255),
          date VARCHAR(255), 
          completed VARCHAR(255)
        )
        SQL

        puts "building List table"
        @list_db.execute(create_table_list)
  end
  
  def add_item(item, description, date, completed)
      puts "adding item.."
     @list_db.execute("INSERT INTO list (item, description, date, completed) 
      VALUES (?, ?, ?, ?)", [item, description, date, completed])
  end

  def update_item(id)
      puts "What would you like to update (item, description, date, completed)."
      input = gets.chomp
      puts "What will be the new value for #{input}? make sure to add ''."
      output = gets.chomp
      @list_db.execute("UPDATE list SET #{input} = #{output} WHERE list.id = #{id}")
  end

  def delete_item(id)
    @list_db.execute("DELETE FROM list WHERE list.id = #{id}")
  end

  def print_list
    list = @list_db.execute("SELECT * FROM list")
    puts "Printing to do list."
    puts "----------------------------------------------------------"
    list.each do |item|
      puts "the id: #{item['id']} for #{item['item']}"
      puts "you description is #{item['description']}"
      puts "the task was started on the date: #{item['date']}"
      puts "the status is completed: #{item['completed']}."
    end
    puts "----------------------------------------------------------"
  end
end
def user_interface
  new_list = ThedoList.new()
  answer = ""
  until answer == "q"
    puts "do you want to add, update, print, or delete an item to your list. type q when finished"
    answer = gets.chomp
    if answer == "add"
      puts "What is the list item? make sure to add ''"
      item = gets.chomp
      puts "What is the description?  make sure to add ''"
      description = gets.chomp
      puts "What is the date?  make sure to add ''"
      date = gets.chomp
      puts "is the task completed?  make sure to add ''"
      completed = gets.chomp
    
      new_list.add_item(item, description, date, completed)
      new_list.print_list
    elsif answer == "update"
        new_list.print_list
        puts "What item id would you like to Update?"
        id = gets.chomp
        new_list.update_item(id)
        new_list.print_list
    elsif answer == "delete"
      new_list.print_list
      puts "What item id would you like to delete?"
      id = gets.chomp
      new_list.delete_item(id)
      new_list.print_list
    elsif answer == "print"
      new_list.print_list
    elsif answer == "q"
      puts "quiting..."
    else
      puts "Invalid input."
    end
  end
end
# driver code
 # new_list = ThedoList.new()
user_interface
# add item
  # new_list.add_item("clean up", "clean the kitchen", "4/6/17", '1')
  # new_list.print_list

# Update item
  # new_list.update_item(1)
  # new_list.print_list

#delete item
  # new_list.delete_item(1)
  # new_list.print_list