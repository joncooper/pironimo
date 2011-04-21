Mongoid.master.collections.reject { |c| c.name =~ /^system/ }.each(&:drop)
puts 'Emptied the MongoDB database.'

user_info = {
  :name => 'Jon Cooper',
  :email => 'jon.cooper@gmail.com',
  :initials => 'jdc',
  :tip_css => 'background-color:orange;',
  :password => 'throwaway',
  :password_confirmation => 'throwaway',
}
user = User.create!(user_info)
user.confirm!
puts 'Created user: ' << user.name

front_page_info = {
  :slug => "front",
  :title => "P-1-R-O-N-1-M-0: It's not just for breakfast anymore."
}
front_page = Page.create!(front_page_info)
puts 'Created front page.'