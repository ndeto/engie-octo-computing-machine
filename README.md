# README

We have a concern `app/models/concerns/custom_attributes.rb` which reads the custom attributes intended for that model in the `CustomerAttributes` model

It then creates virtual attributes during runtime which are held by an instance.

The `CustomerAttributes` table holds
 
 - `name_model` - Name of the model that the custom attribute is intended for
 - `attribute_name` - Name of the custom column
 - `type` - The data type i.e string, boolean

Comments:

This method allows us to add any attribute to a model during runtime using a single concern and the `CustomAttributes` table.
However, a user can not do database queries (Pure SQL) to the database to retrieve such attributes unless they have a way of retrieving an existing instance in the application.

Testing:

Run:
```
rails db:migrate
rails db:seed
````

Then on the rails console:

```ruby


# Update the custom attribute: `support_phone`

c = Customer.first
c.update(support_phone: '25672345678')
c  => 
#<Customer id: 1, internal_id: nil, official_name: "Customer, Inc.", created_at: "2021-06-03 07:48:17", updated_at: "2021-06-03 07:48:42", support_phone: "25672345678"> 
```