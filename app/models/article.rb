class Article < ActiveRecord::Base
    validates :title, presence: true, length: { minimum: 3, maximum: 60}
    validates :description, presence: true, length: { minimum: 15, maximum: 20000}
end

=begin
A magic of Ruby on Rails is that just because you have created this model,
it will now automatically give you getters and setters for each attribute in the table
which you can fill in from the console itself.
=end