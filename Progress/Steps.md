# High Level Steps

Link: https://sei-60-git-book.gitbook.io/sei-60-git-book/week-5/day-5-sessions#basic-project-setup-with-multiple-models

Basic Project Setup (with multiple models)[](#basic-project-setup-with-multiple-models)

Treat this as a really rough guide, and definitely don't always follow it - you'll figure out your approach soon. This is a basic approach you might follow when setting up a new Rails project:

| Step | What | Where | How |
| --- | --- | --- | --- |
| 1   | Planning | -   | Pen & Paper |
| 2   | Create a new Rails app | Terminal | `rails new kitten_party -T --database=postgresql` |
| 3   | Move into the new app's dir | Terminal | `cd kitten_party` |
| 4   | Add development Gems | /Gemfile | gem "(insert gem here)" |
| 5   | Bundle Gems | Terminal | `bundle` |
| 6   | Create database | Terminal | `rails db:create` |
| 7   | Generate first model | Terminal | `rails generate model Kitten name:string age:integer` |
| 8   | Edit migration as required | /db/migrate/[your_migration].rb | Add timestamps, more columns, etc if required. |
| 9   | Generate first controller | Terminal | `rails generate controller Kittens index show edit new` |
| 10  | Add methods to the controller | /app/controllers/kittens_controller.rb | Add methods for each action |
| 11  | Add views for your actions | /app/views/kittens/ | Add an [action].html.erb file for each action that has an associated view |
| 12  | Configure routes | /config/routes.rb | `root :to => "kittens#index"` `resources :kittens` |
| 13  | Repeat for other models | -   | Repeat steps 7-12 for each model |

## Low level steps

https://sei-60-git-book.gitbook.io/sei-60-git-book/week-5/day-3-more-rails#basic-project-setup-ver.-2.0
