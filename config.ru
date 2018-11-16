require 'rack'
require_relative "./app"
run Battle

# class Battle
#
#     def call(env)
#       [200, {"Content-Type" => "text/html"}, ["Hello Battle!"]]
#     end
#
#   end
# run Battle.new
