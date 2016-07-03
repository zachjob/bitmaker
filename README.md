# Bikini Bottom Election
![Bikini Bottom](bikini-bottom.jpg)

## Overview
Bikini Bottom needs a new mayor. And its up to the brave students of Bitmaker to bring the vote to the people.

This assignment has two parts:
1. Listing out the current election results
1. Allowing the user to vote.

We're providing you with a server to interact with for this assignment. You'll be communicating with it through a JSON API.  The API will give you the current election results, and allow you to submit a vote.

Its up to you to build a wonderful frontend for this API, and talk to it asynchronously. You will be writing exclusively client-side code for this assignment, no Rails app.

Let's get started!

![The](the.jpg)

## Part 0 - Setup and Review
**First**, I recommend installing a browser addon to help you test making requests to the API. You can always use the command line program `curl` to make requests, but it can be a little intimidating.

A couple great choices are [Postman](https://www.getpostman.com/), which has both a Chrome App and native Mac App, or [RESTClient](https://addons.mozilla.org/en-US/firefox/addon/restclient/), an addon for Firefox.

**Second**, go ahead and fork the repo at https://github.com/bitmakerlabs/bb-election, where you'll find the skeleton of the frontend you'll be building.

**Third**, make sure you understand the various parts of a request. Here's a quick review. When you make a request:
1. There's a **method**: `GET`, `POST`, `PUT`, `PATCH`, or `DELETE`. We'll be using `GET` to retrieve data, and `POST` to submit data.
1. The **url**, broken down into three parts: `host`, `path`, and `query`
  + The **host** is the part of the url that doesn't change on a website.  If you go to https://alexa.bitmaker.co/weeks/current, the host is `alexa.bitmaker.co`
  + The **path**, or the route we're taking in the website. In https://github.com/bitmakerlabs/bb-election, the path is `/bitmakerlabs/bb-election`
  + The **query** contains additional parameters not in the path.  In https://www.google.ca/search?q=spongebob, the query is everything after `?`, `q=spongebob`
1. The **body**. In a `GET` request, the body is empty, but in a `POST`, it'll contain data. This data can be in multiple formats, but today it'll all be JSON, like this: `{ "key" : "value" }`

There are other parts as well, but this is what you'll need for this assignment.

The server you'll be interacting with is deployed at:
+ https://bb-election-api.herokuapp.com/

If you go to it now in your browser, you'll see some lovely JSON data!

## Part 1 - Listing Current Results
As you may have already seen if you went to the API in your browser, our first endpoint, the one that returns election results, lives at **the root of our API**, or `/`.

Making a `GET` request to `/` is going to return a bunch of JSON data to us, that'll look something like this:
```json
{
  "candidates": [
    {
      "id": "577805c3e30089e66c1ede16",
      "name": "Spongebob",
      "votes": 2
    },
    {
      "id": "577805c3e30089e66c1ede18",
      "name": "Squidward",
      "votes": 1
    },
    {
      "id": "577805c3e30089e66c1ede19",
      "name": "Sandy",
      "votes": 0
    },
    {
      "id": "577805c3e30089e66c1ede17",
      "name": "Patrick",
      "votes": 0
    },
    {
      "id": "577805c3e30089e66c1ede1a",
      "name": "Gary",
      "votes": 1
    }
  ]
}
```

Let's think about what's being returned. The response contains an array called `candidates`, which contains an object representing each candidate in the election. Each one has:
+ An `id`
+ A `name`
+ A `votes` count

**NOTE:** If you're observant, you may have noticed that the ids look a little different than what you're used to seeing. That's because the server uses MongoDB as a database instead of Postgres or SQLite like normal, and the ids are [hex strings](https://en.wikipedia.org/wiki/Hexadecimal) instead of numbers. Don't stress out about this, to the frontend, **it doesn't actually matter** what technology the server is using, it not going to change how we interact with the server, except that our ids will be `Strings` instead `Numbers`.

## Part 2 - Voting

