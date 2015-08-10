# fav-gif-blog
Basic blog designed to allow users to sign up, sign in, and make posts in the form of .gif files

## Steps Taken
1. Run rails setup ($ rails new [project-name] -d postgresql)

2. Uncomment Bcrypt, require RSpec and run bundle install ($ bundle / bundle install)

3. Add Bootstrap CDN as well as any headers or special things wanted on every page to the application.html.erb

4. Create controllers for the basic sets you will need (Users, Posts, Sessions) ($ rails g controller [Name] [attributes (name, username, etc)])

5. Create models for basics sets you will need (Users, Posts, Sessions) ($ rails g model [Name] [attributes (name, username, etc)])

6. Ensure that models have all the attributes they will need. Be sure to add has_secure_password to Users as well as has_many relationship to Posts

7. Check migration files to ensure that all the attributes are set up correctly.  Check for Users having t.string :name, t.string :email, t.string :password_digest etc.

8. Create database and migrate models ($ rake db:create db:migrate)

9. Go through each controller and build the methods for each action that is necessary. 
  
  - New Create Destroy
  - Authentication methods

10. Create HTML views and templates using partials when available.

11. Bootstrap those things as much as possible. Make it look shiny!

12. Test all the routes and see what works and what doesn't.

13. Troubleshoot =)