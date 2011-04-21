require 'active_support'

Factory.sequence(:page_slug) do |n|
  "slug-#{n}"
end

Factory.sequence(:page_title) do |n|
  "This is page #{n}"
end

Factory.define :page do |f|
  f.title { Factory(:page_slug) }
  f.slug  { Factory(:page_title) }
end