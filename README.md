# README

Welcome to Apple Expert! The goal of this application is to allow users to choose a category of apples (table apples, cooking apples, sauce apples, pie apples, juice apples, or butter apples) when deciding what kind of apples to purchase from a local fruit seller.

This is the repo for the Rails API backend portion of this SPA. Database used is PostgreSQL.

* Ruby version: 2.6.3
* Rails version: 6.1.4

## Configuration

* Database creation
  `rails db:create`

* Database initialization
  `rails db:migrate`
  
* Don't forget the seed data! The database is seeded with the apple categories as well as the 10 most commonly found apple varieties.
  `rails db:seed`

## User Stories

* A user will be able to select the category of apple they're looking for
* A user will then see a list of apples in that category
* A user will be able to select the apple varieties available to them 
* A user will see cards with info regarding each of the apple varieties they have chosen
* A user will be able to add apples to the database with a form
* A user will be able to edit apples
* A user will be able to delete apples
