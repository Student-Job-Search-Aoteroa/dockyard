# Coding challenge

## What are we testing?

We are testing your skills in Javascript in a typical full-stack web development setting. What we will assess is the following:

-	Setup a build and coding environment from ground up
-	Create a complete piece of functionality in a web app
-	Familiarity with languages and frameworks
-	Code quality and professionalism
-	Ability to learn techniques as needed
-	Critical thinking and approaches to problem solving

## The scene

A fictional company, Docky McDockFace Dockyards wants to build a web application for managing their boat repair service. Their data store primarily consists of two sets - one containing information about their staff, and the other about the boats getting repaired. One staff member can work on multiple boats at the same time.

There are two independent tasks for this project.

## Task 1 - Frontend

Install json-server as per the instructions here:

https://github.com/typicode/json-server

Use the supplied json file in the project (i.e. db.json) to start up the server in your computer.

The routes of interest are below:

    GET    /boats
    GET    /boats/{id}
    POST   /boats
    PUT    /boats/{id}
    PATCH  /boats/{id}
    DELETE /boats/{id}

    GET    /workers
    GET    /workers/{id}
    POST   /workers
    PUT    /workers/{id}
    PATCH  /workers/{id}
    DELETE /workers/{id}

Fire up Postman or Advanced REST client for Chrome or any other REST API testing tool of your choice. Familiarize yourself with getting data in and out of the server.

You'll be building a single page application (SPA) that connects to this server. The SPA will have the following features:

1. A page that lists all boats (names and photos)
2. Clicking a boat in above list will show a page having all available details about a specific boat, including the names of the workers who are working on that boat
3. UI to do CRUD operations on the boat data set
4. UI to assign / un-assign workers to boats - there is no need to build a CRUD UI for the workers data set.

For this task, you are required to use the following:

1. React for the frontend
2. Redux for state management
3. Bootstrap 4 or Material Design for layout and styling
2. Some sort of a task runner / bundler (e.g. Webpack)

## Task 2 – Backend

Despite the similarity, this task has no dependencies on the previous task.

Analyse the supplied schema and the provided sample data supplied in the SQL file (i.e. dockyard.sql). Import this into a MySQL database, and based on your understanding, create a REST API to do the following tasks.

1.	Implement the GET route /api/boats which returns a JSON array of all boats and their properties. E.g. :
```
    [
        {"id":1, "name": "Boat One", ...},
        {"id":2, "name": "Boat Two", ...}
        ...
    ]
```

2.	Implement the GET route /api/boats/{id} which returns all available details about a specific boat, including the ids of all workers working on that boat.

For doing this task, use Express as the backend web application framework. You are also required to use Sequelize as the ORM.

## Submitting the project

Create the project on github. Commit often, so that we understand your coding style and problem solving approaches, starting from scaffolding to completion.

You may want to add more records to both the databases. Please use simple placeholder images and not links to actual images of boats and people on the internet. Take a dump of your final databases and add it to your repo.

Once it's all done, update the README.MD with instructions on how to install and run your code (frontend and backend). Send us an email with the link. All comms go to fullstack2017 AT studentjobsearch DOT co DOT nz

## Problems? Questions?

Rely on your own judgement and experience. The reality of web development is that the specs provided are often vague and non-intuitive.

Happy hacking!
