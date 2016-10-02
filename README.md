# Ubmi

An example umbrella app with two phoenix application.

This is just a try-out on figuring how easy it is to get two separate phoenix application with or without the same database get to work using an umbrella-app.

I basically created a normal elixir umbrella app:

- mix new umbi --umbrella
- it started a new elixir project with a folder called apps
- went to the folder app and basically initiated two phoenix applications named: belly and sally
- for Sally I changed the port to run at 4001 instead of 4000, to prevent port clashes
- in the Belly router I added a ```forward "/", Sally.Router``` to forward remaining requests to the Sally router

When the umbrella app is started all apps will be started, from Belly all requests will be forwarded to Sally.

That's it!

