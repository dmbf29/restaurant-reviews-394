Rails.application.routes.draw do
  # verb '/path', to: 'controller#action'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do # for all restaurants
      get 'top'
    end

    member do # has a restaurant_id
      get 'chef'
    end
  end
  resources :reviews, only: [:destroy]
end

# get 'restaurants/:id/chef', to: 'restaurants#chef'
# <%= link_to @restaurant.chef, chef_restaurant_path(@restaurant) %>

# <%= link_to "top restaurants", top_restaurants_path %>
