# JS/Rails OOO Guide (Backend)

## User Stories

* A user will be able to select the category of apple they're looking for
* A user will then see a list of apples in that category
* A user will be able to select the apple varieties available to them 
* A user will see cards with info regarding each of the apple varieties they have chosen
* A user will be able to add apples to the database with a form
* A user will be able to edit apples
* A user will be able to delete apples

## Checklist

### BEFORE YOU START

[x] 1. Check project requirements

[x] 2. Think about what you want to build:
  * choose a domain you're familiar with
  * choose a domain you care about

[x] 3. Wireframing & User stories

[x] 4. Design your MVP

### PROJECT SET UP 

[x] 5. Generate a new Rails API using `rails new <my_app_name> --database=postresql --api`

[x] 6. Create a github repo and connect to your project

### MODELS

[x] 7. Build your models: `rails g model <your_model_name> attributes`
  * Migrations
  * Model classes
  * Associations

[x] 8. Test your models and associations in the console
  * Create some seed data
  * Adjust migrations as needed

### Part 2: Routes, Controllers, Serializers

[x] 1. Routes
  * Implement specific namespaced routes for a controller for MVP
  * Build vertically!
  * Run `rails routes` to confirm routes
  * Start the server and visit `http://localhost:3000/api/v1/<your_resource_name>` to see any errors

[x] 2. Controllers
  * In your console run: `rails g controller api/v1/<your_controller_name>` 
  * Build relevant routes for MVP (ex: index and create)
  * Visit `http://localhost:3000/api/v1/<your_resource_name>` to see JSON data

[] 3. Fast JSON API Serializer
  * Add `gem 'fast_jsonapi'` to your Gemfile and run `bundle install`
  * Create serializer classes:
    * `rails g serializer <your_resource_name>`
  * Update Controller Actions
    ```
    class Api::V1::ApplesController < ApplicationController
      def index
        apples = Apple.all
        # render json: apples
        render json: ApplesSerializer.new(apples)
      end
    end
    ```
  * Adding attributes:
    ```
    class ApplesSerializer
      include FastJsonapi::ObjectSerializer
      attributes :variety, :harvest, :notes, :image_url, :category_ids
    end
    ```
  * Accessing Associations(Related Objects):
    ```
    class ApplesSerializer
      include FastJsonapi::ObjectSerializer
      attributes :variety, :harvest, :notes, :image_url, :category_ids, :category
    end
    ```
  * Adding Relationships
    * To control the attributes displayed in the association

[] 4. TEST: Confirm data at your Rails endpoints!

[] 5. Build out your associated models using this same process. Remember: Focus on building vertically!