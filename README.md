# README

> A simple application build with ruby on rails and mysql2 to complete the assignment with basic CURD method

## Built With

- Ruby on Rails.
- Mysql2.
- Bootstrap

### Prerequisites

- Ruby,rails,bundler installed in your system
- XAMP/WAMP/MAMP installed in your system form mysql database
- Postman for testing api

### How to use

Download this repo from the link from top right corner
run <bundle install> to download the required gems

- Database creation
  start your apache server XAMP/WAMP/MAMP
  create databse with name blog

- Database initialization
  run <rails db:migrate> to migrate database

run <rails server>
You are good to go

- How to check api
  Go to post man select method [ GET/POST/PATCH/DELET ]
  Give api path <https://localhost:3000/api/V1/articles> for articles
  provide data in json format using body/row {
  "title":"this is title",
  "body":"this is content"
  }
  Give api path <https://localhost:3000/api/V1/triangles> for triangle
  provide data in json format using body/row {
  "a":"24",
  "b":"20",
  "c":"3"
  }
  Then send the request.
