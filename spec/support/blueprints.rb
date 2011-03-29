require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Project.blueprint do
  title { "Project Title"}
  description { "Description For Project 1"}
  deadline { "Wed, 30 Mar 2011 15:24:59 +0545" }
end

TaskGroup.blueprint do
  title { "Task Group Title"}
  objective { "Objective For TaskGroup 1"}
  deadline { "Thu, 31 Mar 2011 15:24:59 +0545" }
end

Task.blueprint do
  title { "Task Group Title"}
  objective { "Objective For TaskGroup 1"}
  deadline { "Thu, 31 Mar 2011 15:24:59 +0545" }
end