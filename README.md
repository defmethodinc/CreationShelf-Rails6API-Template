# Rails 6/API/Postgresql/ActiveAdmin/Devise/RSpec
This is a Def Method Inc. [Rails Resource](https://github.com/defmethodinc/def-method-resources/tree/master/resource-library/rails) and template project.

Ruby 2.7.0 - Rails6

Simplified RailsAPI setup with RSpec and ActiveAdmin.

This API is meant to serve data to corresponding template clients:
 - [iOS](https://github.com/defmethodinc/dm-ios-swift-ui-combine-template)

The term "CreationShelf" is meant to denote a place to put and store "Creations", a Creation being something a duck-type or generic model in a simlar vein to todos or widgets. A Creation is a thing. Users make Creations.

## Using this Template
Click the green `User this template` on the [repo's homepage](https://github.com/defmethodinc/CreationShelfTemplate) in Github.

Then [rename the project](https://stackoverflow.com/questions/42326432/how-to-rename-a-rails-5-application).

## Contributing/Adding to this Template
This project is managed through Github projects [here](https://github.com/defmethodinc/CreationShelfTemplate/projects/1). Next prioritized items to do are in the "To Do" column.

Find out more about general Github projects [here](https://help.github.com/en/github/managing-your-work-on-github/about-project-boards).

## Installation

 - clone this repo
 - `bundle install`
 - `bundle exec rails db:create db:migrate db:seed`

This will create an `AdminUser`. Check the seed file for the login info.

## Modeling
A variety of modeling choices were made in order to establish some commonly used and important relationships. A `User` has_many `Creations`. A `Creation` has_many `Photos`. This relationship is "polymorphic", so a `Creation` has_many `Photos` as a "holder". Other "holder"(s) can be added. For instance, a `Creation` may have many Steps one could take to produce said `Creation`. Each Step could "hold" photos.

## Database
This app assumes communication with a Postgres server.

As a Rails project, this app uses ActiveRecord to maintain migrations of the database schema and interact with the databse.

### Seeding
A seed file is located at `db/seeds.rb`. The seed file can be executed to seed your db by running `bundle exec rails db:seed`

Seeding is written to be [idempotent](https://en.wikipedia.org/wiki/Idempotence).

It creates an `AdminUser`, used for logging into the `ActiveAdmin` interface.

It also creates Users, Creations, and Photos.

## ActiveAdmin
[ActiveAdmin](https://activeadmin.info/) has been configured. Seed the database then go to the `/admin` route. Credentials to sign in are in the seed file.

Here one finds a GUI to perform CRUD actions on the models. Some of the views have been customized and this can be found by going to the `app/admin` directory.

## Testing
This app has been built with [RSpec](https://github.com/rspec/rspec-rails).

Other utilities such as FactoryBot for easily building/creating fixture data of the models and Faker for creating fake data for testing have been added as well.

## Debugging
Pry has been included as test/development dependencies. Run `binding.pry` to stop the runtime process at that point and open up a repl. Use the commands `next`, `continue`, `step` to navigate through the breakpoint.
 - [pry](https://github.com/pry/pry)
 - [pry-rails](https://github.com/rweng/pry-rails)
 - [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)

## CI
CI is setup with [Codeship](https://app.codeship.com/projects/395526).

## Versioning
API is setup for versioning. All api routes are currently nested in the namespace `api/v1/...`

## JSON Spec
The [Json spec](https://jsonapi.org/) has attempted to be followed.
