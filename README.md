
#  Priority Queue Simulation Using SQL

## Introduction

This is an End to End solution to simulating a priority queue using SQL, Postgres SQL Database and docker container in order to develop problems like some event processing application and minimize the number of requiered rooms to be served in hotels.


## Requirement

The purpose of this project is to support the management of a hotel, more specifically **how many rooms** should be prepared and opened for each given week. We want to minimize the number of served rooms so that we also minimize maintenance costs. Assume that the number of guests is always 2 per room and that a room can always be made available the same day as the check-out date. It should be noticed that a room can be filled for 2 consequence weeks.

As input there is a list of the reservations with the check-in and check-out dates. 

| reservation_id | check_in_date | check_out_date|
|----------------|---------------|---------------|
| id1            |  2021-01-04   | 2021-01-05    |




## Getting Started

This section explains how to run this App. I have tried to make it very simple. 

### Prerequisites
The required prerequisites are:

* Docker and docker-compose 3
* Internet connection to download required docker images and libraries.

### Installation

* running all containers
   ```sh
   $ docker-compose up -d
   ```
    ```sh
   $ docker-compose exec priority_queue check PriorityQ
   ```

  * After the command prints `Bingo! All columns match`, means that the solution's output and expected output are match with each other.

There are other directories inside `src/` that can be interesting to you:

* `init-fixtures`: contains the scripts that are necessary to initialize the
  database. Every time a solution script is checked, the whole database gets
  dropped and regenerated using these fixtures.

* `solution`: contains solution files.

* `output-obtained`: contains the latest execution results of solutions in
  CSV format.

* `output-expected`: contains the expected results from each query in CSV
  format.


## Stoping Services
Enter the following command to stop the containers:

```bash
$ docker-compose down -v
```

## Author

👤 **Tayebe Mohamadi**

## Version History
* 0.1
    * Initial Release
