# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: 

  Researched answer: it is a software design pattern used to design user interfaces and splits a system into 3 distinct parts. Using this pattern decouples major components and allows for code reuse (reduces wasteful code)
  According to its origin it doesnt actually apply to web programs. But parallels can be made:
  Model = the data structure that your program uses 
  View = the part that interacts with the screen or the next level up 
  Controller = processes data bt the model and the view
  
  In rails parallels to these concepts are easier to find because there are a : "model", "view", and "controller" which are all well definted by the framework. A model in rails is just a class declaration from which instances can be created in its likeness
  a view
  A request first comes to the controller. the controller finds the appropriate view and interacts with the model, the model interacts with your database and send the response to the controller. Then based on the response, the controller gives the output parameter to the view


2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the _routes_ in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the __controller_ in the file _./app/controllers__
  ```
  class ___NamesController___ < ApplicationController
    def __index___
      render ___json_____
    end
  end
  ```

  Step 3: Create the View in the file ___app/views/Projectname/index.html.erb____
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
gets an index of all users (a list of all instances of users)

/users/1      method="GET"     # :controller => 'users', :action => 'show'
gets the data associated with the instance of User with an id = 1


/users/new    method="GET"     # :controller => 'users', :action => 'new'
gets the html form to create a new instance of User

/users/       method="POST"    # :controller => 'users', :action => 'create'
creates a new instance of User

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
returns an html form for editing a user

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
updates user 1

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
deletes user 1


3b. Which of the above routes must always be passed params and why?
show edit update destroy
users/:param 
because you're looking at or modifying a single object so you need to specify which object


4. What is the public folder used for in Rails?

  Your answer: I dont know

  Researched answer: Contains the html code for error messages 404 422 and 500 which are prompted to render for various reasons. 422 is meant to be rendered when a change (patch) is rejected.404 is an error that the page requested doesn’t exist (route issue). 500 is a more general error message that just says "something went wrong".
  Public contains the favicon file
  Public also contains robots.txt which appears to be empty but online it says that it blocks crawlers online. Robots are programs that search engines use to crawl through or index the content of programs on the web and this file is purposed to block those as they may cause issues under certain circumstances.
  

5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"
  
get '/game/:guess' => 'main#game



6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: the action attr tells you the type of action (get post patch put or delete) that will occur
  I dont know you to designate the verb for the form

  Researched answer: THe previous answer was wrong 
  Action attribute is used to specify where the form should be sent for the input to be processed
  the input type is what determinates the HTTP verb (use input type = "submit" for posting)



7. Name two rails generator commands and what files they create:

  Your answer: rails g model and rails g controller and they generate a model and a controller, respectively

  Researched answer:
  rails g: model, channel, controller, and generator
  
  controller : creates a controller.rb file , a view file, a functional test file, a helper for the view, a JavaScript file, and a stylesheet file. It also made sure that a bunch of directories were in our application

  model: creates a model file. The generator checks that there exist the directories for models, controllers, helpers, layouts, functional and unit tests, stylesheets, creates the views, controller, model and database migration. It takes care of the route for the resource, and new tests for everything. But you need to migrate this all
  
  
8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. Ruby combines: Smalltalks conceptual elegance, pythins ease of use and learning anf Perls pragmatism
  It is a high level programming language and is interpreted not compiled (but cannot be compared to other with other high-level-non-interpreted languages like C and C++. It Is truly OOP

2. It has rich libraries available; it is easy to learn and very easy to extend

3. It is an opinionated software which means that it operates under the assumption that there is a best way to do something
4. RAILS PHILOSOPHY 1: DRY (dont repeat yourself; ties in with its love of being concise and efficient) End up with less bug prone code that is more easily maintained
5. RAILS PHILOSOPHY 2: Convention over configuration: rails the program has opinions on what the best ways to do many things; it will default to these assumptions rather than require or expect you to specify minute details

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer: a cookie is some data that is saved to speed up loading time or usage speed on a site. If you have cookies, changes to the site may not be rendered unless you delete the cookies
  Not sure exactly what a session is but I would imagine it’s like a client's session with the site 

  Researched answer:
  They are both ways to store information
  A session is data stored on the server where cookies are stored data in the visitor's browser
  Sessions are more secure than cookies because it is saved in the server but cookies can be turned off/stopped at any time
