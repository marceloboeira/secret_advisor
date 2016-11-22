#Secret Advisor
> :envelope: An elegant and simple way to to send secret advices to co-workers without drawing too much attention, focused on small teams.

## Setup

Create the `.env` file:

`$ touch .env`

Add the env variables to the `.env` file:

`MONGODB_HOST=...` - Usually localhost or docker-host

## Showtime

If you decide to use docker, you need to start mongodb with:

`$ make compose`

and start web-server with:

`$ make start`

## Contributing

### Running specs

Make sure mongo is running, either on localhost or docker.

Then run:

`$ make test` or `$ make spec`

### Commit Policy

We have a very rigid **commit policy**, to contribute please follow these rules:

```
feature: Add hat wobble
 ^--^  ^------------^
 |     |
 |     +-> Summary in present tense
 |
 +-------> Type: chore, doc, feature, fix, refactor, style, or test
```

### Available tags:

 * **chore**: Add oyster build script
 * **doc**: Explain hat wobble
 * **feature**: Add beta sequence
 * **fix**: Remove broken confirmation message
 * **refactor**: Share logic between 4d3d3d3 and flarhgunnstow
 * **style**: Convert tabs to spaces
 * **test**: Ensure Tayne retains clothing

> Based on [this](http://seesparkbox.com/foundry/semantic_commit_messages).
