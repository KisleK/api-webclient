Rails.application.routes.draw do
  get '/' => 'weathers#index'
end






# <h1>Weather</h1>



# <h3> City: <%= @weathers["location"]["city"] %> </h3>
 

# <h3> <% @weathers["channel"]["item"]["forecast"][0..4].each do |day| %> </h3>
#   <h2> Day: <%= day["day"] %> - High: <%= day["high"] %>, Low: <%= day["low"] %>, <%= day["text"] %> </h2>
  
  
   
# <% end %>
#   