Factory.sequence(:post_body) do |n|
  "This is post #{n}"
end

Factory.define :post do |f|
  f.body { Factory(:post_body) }
end
