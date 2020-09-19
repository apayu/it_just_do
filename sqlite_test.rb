# require 'sqlite3'
require 'mavericks/data_record'
require 'mavericks/sqlite_model'

Mavericks::DataRecord::Base.establish_connection

class Task < Mavericks::DataRecord::Base
end

puts Task.schema


# user =  Task.new(name: 'abc')
# puts user.name

# class Task < Mavericks::Model::SQLite
# end

# class Task < Mavericks::Model::SQLite
#   Task.schema.keys.each do |attr|
#     define_method attr do
#       self[attr.to_s]
#     end
#
#     define_method "#{attr}=" do |arg|
#       self[attr.to_s] = arg
#     end
#   end
# end

# puts "Count: #{Task.count}"
# Task.all.each { |task| puts task['title'] }
# puts Task.find(1)['title']

# task = Task.create('title': '鐵人30', 'content': '每天一篇文章')
# puts task['title']
# task['title'] = 'IT邦幫忙鐵人賽'
# task.save!
# Task.all.each { |task| puts task['title'] }

# task = Task.new('title': '鐵人30', 'content': '每天一篇文章')
# task.save!
# Task.all.each { |task| puts task['title'] }

# puts task['title']
# puts task.title

# class Amo
#   define_method :hola do |my_arg|
#     "Hi! #{my_arg}"
#   end
# end
#
# puts Amo.new.hola('apa')

# 給 method_missing 的測試
# task = Task.new('title': '鐵人30', 'content': '每天一篇文章')
# task.save!
# Task.all.each { |task| puts task.id }
# # Task.all.each { |task| puts task.title }
# # Task.all.each { |task| puts task.content }
# task2 = Task.find(1)
# task2.title = '鐵人40'
# task2.save
# task3 = Task.find(1)
# puts task3.title
#
