# address_parser

### Background

At Homeday, we are working to improve the process of selling real estate by finding the best real estate agents for our customers.

In a nutshell, our selling process consists of:

- acquiring leads (potential customers who want to sell their real estate)
- providing real estate agent recommendations for the customer
- assisting both the agents and owners during the deal process
- sealing the deal and receiving commission

For this process, providing good real estate agent recommendations is crucial - a good agent that has relevant experience can make all the difference - from getting a better price to actually being able to sell the property at all.

Good recommendation requires relevant data as a base, and we collect and process large amounts of real estate listings daily to build and update that base.

### Your task

Your task will deal with one aspect of listing processing, namely, addresses and their parsing.

As we process real estate listings, all types of addresses show up: incomplete, malformed, not formatted properly, with multiple typos, etc.

We must take steps to normalize and parse the address strings by splitting them into components such as house number, street, city, etc. which we can then store and combine the way we need to.

What you have to do is to build a service that is:

- accessible with HTTP/HTTPS
- has a single endpoint that accepts an address string and returns address components

E.g. given the input of

```
address=Julie-Wolfthorn-Straße 1, Berlin
```

the return value could look like

```
{

  :street_number => "1",
  :street => "Julie-Wolfthorn-Str.",
  :district => "Mitte",
  :city => "Berlin",
  :state => "Berlin",
  :country=>"Germany"

}
```

We also expect the service to return an error response in case it cannot process an address.

### Input data

the **/data** folder in this repo contains a file with various addresses, you can use them to test your implementation.

### Requirements

The service should be written in Ruby.
The rest - framework, choice of libraries/gems/external services - is entirely up to you.

### What we expect as a result

- a Github repo with your implementation of the task
- tests, obviously
- a rationale behind the choices you've made

### Some hints

- Geocoding, though meant to provide coordinates for address, can also be used to parse addresses. You can check [google's geocoding API](https://developers.google.com/maps/documentation/javascript/geocoding) or any other geocoding APIs.
- Instant response is not required, but the service will be under continious load.
- The service should be deployable without too much effort.

I
