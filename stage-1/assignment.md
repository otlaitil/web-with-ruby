# Stage 1 - pilot

The first phase is to create a landing page to an upcoming invoicing application
called E-laskutus (short for Ernon Laskutuspalvelu Oy). The end product will
eventually allow users to send invoices to their customers via email, but this
stage is just the landing page to see if potential customers are interested in
this kind of new service.

After successful completion of the pilot, the next phase will start the following week.

## User story

As a potential customer to the upcoming invoicing application I want to get basic
information of the product from the landing page. The information needed is a
simple description of the service and the launch date.

As a customer I do not care about the look and feel of the page. The content should
be as following

```
h1: Welcome (title)

p: Description of the product. Use any copy / text you want.

p: Release date. This is a dynamic field: it will always show current time + 1 month.
   in format: day.month.year 
   
   e.g. if date today is 16.10.2020, this field will display 16.11.2020.
```

## Technical requirements and tech stack

Landing page should respond from root route (`/`) and render a erb-template from
views directory.

A single minitest test case should be written. Requirements are that the route
responds with `200 OK` status code with a get request. 

During this phase the directory structure should be kept as simple as possible.

Example:

```
.
├── app.rb 	# Application server code
├── Gemfile 	# This file is for defining libraries and dependencies
├── test.rb	# contains the single test case - sample provided
├── config.ru	# enables the server to start, file provided
└── views	# contains the views presented to the user
    └── landing.html.erb
``` 

The project will be built with following tools and technologies.

### Application stack

* ruby (we recommend 2.7 or the latest)
* sinatra (the web server, a ruby gem)
* minitest (ruby gem, for testing)
* rack-test (ruby gem, additional library for testing web applications)
* erb templates (comes with sinatra)

Ruby gems are open source libraries which are usually fetched from rubygems.org.
Define the libraries in `Gemfile` to get started.

You can install the software to your machine as you see fit. One option is to
user Docker.

We provide a Docker setup (described in `Dockerfile`) for setting up an
environment with ruby and other needed software installed. You can find the
file attached. Running commands against Docker can be made easier for example
with a tool called make, and we provide also a `Makefile`. See available
commands from the file. The files provided are out of scope from learning perspective
for this stage. Take a look, but don't feel bad if something does not feel clear to you.

Examples of the commands are

* `make server` to start the web server
* `make test` to run tests
* `make sh` to launch a shell

They execute a `docker run` command with parameters defined in the `Makefile`.

### Source code hosting

Set up a git repository for this project and push it to Github.

### Deployment

Deploy this project to Heroku platform.

## Tips

All provided material can be found within the `./material` folder relative to this file.

### Setting up the project

For minitest / rack-testing, you need to wrap the sinatra-code in `app.rb` to a
class as following

```
class WebApp < Sinatra::Base
  # ... your sinatra code here
end
```

and create a `config.ru` file to enable starting the server after this change.
The file is attached to this assignment.

If you decide to name the `app.rb` and `class WebApp` differently, you need to
adjust the `config.ru` file to match.

After creating the `config.ru` file you can start the web server with a tool
`rackup` by executing the command `rackup` or running `make server`.

### Deployment

* When deploying to Heroku, use Heroku cli and `heroku create` for easier setup compared to the web interface.

### Editor

Any text editor or even an IDE is fine.

### Curated list of material

* Quick ruby reference: https://learnxinyminutes.com/docs/ruby/
* Ruby programming guide: https://poignant.guide/
* Sinatra intro: http://sinatrarb.com/intro.html
* Testing with minitest: https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest
