# gocase-backend-challenge
I want to say thanks to all of you from **Gocase** Engineering Team for the opportunity to show what I could achieve on this challenge. The challenge indeed was in fact to expose my habilities and efforts to make it happen on rails (language i started to love studying). 

## What did I do?
I fulfilled a good part of what was asked by creating a simple REST API that render the endpoint responses as json. The responses can be shown on the browser or using an app api.

It is organized by versions (for now it is only a 'v1' released) so it could help with further implementations and tests also.

I developed simple controllers for the two Entities *Order* and *Batch* so then the API would be able to realize the actions requested by the routes predetermined. I Payed attention to the details, restrictions of the business rules. Hope it reaches what was scoped

### The Routes
The output routes the API by using resources are shown bellow. I add some routes to the endpoints needed to the required actions too. 
```  
Prefix              Verb              URI Pattern                                  Controller#Action

api_v1_orders           GET           /api/v1/orders(.:format)                     api/v1/orders#index
                        POST          /api/v1/orders(.:format)                     api/v1/orders#create
api_v1_order            GET           /api/v1/orders/:id(.:format)                 api/v1/orders#show
                        PATCH         /api/v1/orders/:id(.:format)                 api/v1/orders#update
                        PUT           /api/v1/orders/:id(.:format)                 api/v1/orders#update
                        DELETE        /api/v1/orders/:id(.:format)                 api/v1/orders#destroy
api_v1                  GET           /api/v1/order_status/:reference(.:format)    api/v1/orders#show_status
                        GET           /api/v1/list_per_channel/:purchase_channel(.:format) api/v1/orders#list_per_channel
api_v1_financial_report GET           /api/v1/financial_report(.:format)           api/v1/orders#financial_report
api_v1_batches          GET           /api/v1/batches(.:format)                    api/v1/batches#index
                        POST          /api/v1/batches(.:format)                    api/v1/batches#create
api_v1_batch            GET           /api/v1/batches/:id(.:format)                api/v1/batches#show
                        PATCH         /api/v1/batches/:id(.:format)                api/v1/batches#update
                        PUT           /api/v1/batches/:id(.:format)                api/v1/batches#update
                        DELETE        /api/v1/batches/:id(.:format)                api/v1/batches#destroy
                        GET           /api/v1/create_batch/:purchase_channel(.:format)           api/v1/batches#create
                        GET           /api/v1/production_batch/:reference(.:format)    api/v1/batches#production
                        GET           /api/v1/close_batch/:reference/:delivery_service(.:format) api/v1/batches#close

```

### Examples of endpoints:

```
http://localhost:3000/api/v1/orders
http://localhost:3000/api/v1/financial_report
http://localhost:3000/api/v1/list_per_channel/SiteBR
http://localhost:3000/api/v1/order_status/BR102030

```
### Aditional Stuff

- To Assure a seurity layer to the application there are some mesures to avoid external attacks such as: provide a secure conection over ssl always forcing SSL ( config.force_ssl = true on config file e.g.); storage of encrypted sessions; reset and expiry sessions to avoid haijacking; a good use of the http verbs to prevent CRFS; whitelist input filtering to avoid XSS (strip_tags e.g.) .
- To get a good permission layer it is necessaary to have a great user management, requiring authentications codes and tokens, force a strong password, use of captcha (in a UI) and query the user's access rights to avoid accessing different and not allowed options.
- I think it depends on the way they are being storaged. Probably could create a flag, or an extra option to differ the models, otherwise improving the query comparisson to assure the right choice of the product.
- Always researching the best preactices of UX, UI, and keeping the application live , fluid, attractive and consistent. Evermore keep the code clean and easy to maintain.

I Searched quickly on internet and found nice gems to help some of those issues too, as compass for UI, Devise for Auth Layer, RuboCup for Good code styling etc.

## What stack did I used?
- Ruby on Rails;
- Git;
- mysql2 gem;
- I used mysql because I already had mysql enviroment to test on;

## Observations
I did not venture to use essentially the proper formats for the attributes types, and used some shortcuts in order to provide a fast way to example the solution.
I created a SeedS file to exemplify some entries.
