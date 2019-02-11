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