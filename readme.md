![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png)

#Modeling Tunr

> _This is a suggested pair programming activity._

You and the people at Tunr want to add some functionality to your talent management application. You and your parter get the benefit of starting with the existing application that can already CRUD artists. Now Tunr has hired you guys to also keep track of their managers and songs!

## Starting Advice

* Use the code in `starter-code` to get started!
* Don't forget to `bundle`, `rake db:create`, `rake db:migrate`, `rackup` etc...
* [ActiveRecord Official Docs](http://guides.rubyonrails.org/active_record_basics.html)
* Keep an eye on your `schema.rb` file (but not touching it) to see that your migrations are working properly!
* Think about the most appropriate datatype for each migration.
* If you get stuck, get unstuck! Advice for getting unstuck includes:
	* Not freezing up but continually trying new things (googling, reading docs, experimenting, etc)
	* Identifying once you are stuck, as you have already tried all options you can think of
	* Honing in on your gap in knowledge by phrasing a specific question
	* Close your knowledge gap by ASKING that question to someone!

## Requirements

- Sprint 1: User can CRUD managers

  - Create a `Manager` model and table in your database. Give them the attributes `name`, `email`, `office_number`, and `cell_phone_number` all type `String`. *Hint: Make sure that the new file is being required in your `config.ru`*

- Sprint 2: User can CRUD songs

  - Same as above, give the song attributes `title`, `duration`, `date_of_release`, and `album_title`.

- Sprint 3: User can see some data populated in the application

  - Seed your application with some data:

  **Artist**:  

    - Name: Luciano Pavarotti
    - Photo URL: "http://artcreationforever.com/images/luciano-pavarotti/luciano-pavarotti-03.jpg"
    - Nationality: Italiano
    - Instrument: Voice
    - Home Address: 1 Strada Roma

  **Manager**:  

    - Name: Ricky Bobby
    - Email: rbobby@gmail.com
    - Office Number: 516-877-0304  
    - Cell Phone Number: 718-989-1231

  **Song**:  
  
    - Title: The Best Song Ever
    - Duration: 3:31
    - Date of Release: 7/13/2015
    - Album Title: Best Album Ever

##Bonus

An artist can have many songs and a manager can have many artists: configure your app to make sure it is configured with these relationships using [Active Record Associations](http://guides.rubyonrails.org/association_basics.html).

* _Hint: In addition to the code you have to add to the models, you'll have to add foreign keys to both the `artists` and `songs` tables._

### Self Evaluation

During the previous exercise, rate your progress on a scale of 1-5 (5 being the highest) for the following criteria:

- **Persistence:** Do you handle frustration well? Do you independently pursue understanding?
- **Organization:** Do you thoughtfully implement best coding patterns and practices?
- **Collaboration:** Do you make an effort solve problems and share your ideas with others?
- **Communication:** Do you clearly convey your thoughts to others in illustrative and clear ways?
- **Self-compassion:** Do you make productive use of turning failures into learning opportunities?
- **Resourcefulness:** Do make an effort to compare and contrast new ideas with ones you already know?
