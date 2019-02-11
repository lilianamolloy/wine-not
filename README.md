# Starting a Rails Project

In the terminal:
```
$ rails new <projectname> --database=postgresql
$ cd <projectname>
```
Make sure postgress is running
```
$ rails db:create
```
Start the server
```
$ rails s
```

# Setting up env 

https://rubygems.org/gems/dotenv/versions/2.1.1

At the top of the Gemfile
```ruby
#dotenv 
gem 'dotenv-rails', :groups => [:development, :test]
```
In terminal
```
$ bundle
```

In .gitignore
```
.env
```
Create a .env file

# Devise

In gemfile
```ruby
gem 'devise'
```

Then run 
```
$ bundle install
$ rails generate devise:install
$ rails generate devise User
$ rails db:migrate
```

In the controller, where you want to authenticate the user before proceeding.
```ruby
before_action :authenticate_user!
```

# Setting up a welcome page

In terminal
```
$ rails g controller pages
```

in pages controller create a welcome method:
```ruby
def welcome
end
```

in pages view create a welcome.html.erb file

# Setting up a basic navbar

In views folder create a shared folder and within create a file called _navbar.html.erb

In application.html.erb
```ruby
<%= render "shared/navbar" %>
```

in 
_navbar.html.erb
```ruby erb 
<nav>
    <% if user_signed_in? %>
        <%= link_to('Logout', destroy_user_session_path, method: :delete) %>
    <% else %>
        <%= link_to('home', root_path) %>
        <%= link_to('Sign Up', new_user_registration_path) %>
        <%= link_to('Log In', new_user_session_path) %>
    <% end %>
</nav>
```