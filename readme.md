![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png)

#Tunr-Heroku

This repo shows a pair of ways to deploy tunr to Heroku. It focuses on 
a couple potential issues that can arise when using ERB forms or
MongoDB.

## Master Branch
On the master branch, implements method_override to enable.

Web browsers only implement the 'GET' and 'POST' method. To use the 
standard HTTP verbs we need to make a few changes. The first is in 
our Sinatra controller we need to include

```ruby
  set :method_override, true
```

This method will look for a specific value in a form submission and
change the post.

Let's look at an example:
```ruby
  <form method="post" action="/artists/<%= artist.id %>">  
    <input name="_method" value="DELETE" type="hidden"/>
    <button>Delete</button>
  </form>
```

This form will initially submit it into ``POST /artists/:id`` but since
``method_override`` is set and the body includes ``_method="DELETE"``, 
Sinatra will route this to ``DELETE /artists/:id`` enabling us to work 
through the standard HTTP verbs. 

A similar method allows us to send ``PUT`` requests via forms.

## Mongoid Branch
This branch shows how to deploy a Sinatra application backed by MongoDb
using the Mongoid gem. The code shows the changes to implement an 
embedded model in MongoDB.

This code does not implement the method_override Sinatra setting.

## Licensing
All content is licensed under a CC­BY­NC­SA 4.0 license.
All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact legal@ga.co.
