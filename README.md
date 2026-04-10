# Assignment-3-CRUD-API AND Assignment 4 2 and 3 combined

Clone the repo:

git clone https://github.com/Bruvner/Assignment-3-CRUD-API
cd Assignment-3-CRUD-API

Java 22
Maven
Spring Boot
Postman

Build the project:

./mvnw clean install

Run the application:

./mvnw spring-boot:run

The app will start on: http://localhost:8080


Video

https://www.loom.com/share/ed34fbb00458477b98521050e2e5b1b5 

API Endpoints

Characters
Method	Endpoint                        Description                             Requests
GET	    /characters	                    Get all characters	                    None
GET	    /characters/{id}	            Get a character by ID	                None
POST	/characters	                    Add a new character	                    JSON:{ "name": "Luke Skywalker", "category": "Hero" }
PUT	    /characters/{id}	            Update a character	                    JSON:{ "name": "Luke Skywalker", "category": "Hero, Jedi" }
DELETE	/characters/{id}	            elete a character	                    None
GET	    /characters/category/{category}	Get characters by category	            None
GET	    /characters/search?name=substring Search characters by name substring	name=substring

And thats basically it. 

UPDATE

-Video showing mvc working demo :)

I had to put it in a zip file for space reasons - github didn't let me put the video file directly
[Video.zip](https://github.com/user-attachments/files/26624036/Video.zip)
