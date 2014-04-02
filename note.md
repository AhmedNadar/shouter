-if the object doesn't have an ID therefore its singlton resource. Such as:
in routes.rb file
. resource :dashboard, only: [:show]
result is "dashboard/" as url

- Now what is the function I need to do.
. User should be able to shout.
So I can think of columns the shout models needs.
ID, body text, user ID, time stamps

- After creating the initial functionality for user to shout, now user should have the ability to shout, by creating HTMl page. 
- There for we create a form on dashboard. That form is calling an existing object 'shout'. 
