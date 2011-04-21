Factory.sequence(:user_name) do |n|
  "User #{n}"
end

Factory.sequence(:user_initials) do
  Array.new(3).collect { ('a'..'z').to_a[rand(26)] }.join
end

Factory.sequence(:user_tip_css) do |n|
  colors = ['red', 'orange', 'green', 'blue', 'indigo', 'violet']
  selected_color = colors[n % colors.length]
  "{color:#{selected_color}}"
end

Factory.define :user do |f|
  f.name      { Factory(:user_name)     }
  f.initials  { Factory(:user_initials) } 
  f.tip_css   { Factory(:user_tip_css)  }
end
