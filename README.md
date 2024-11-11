# Ruby Docker Setup

This README explains how to create a Docker image for a Ruby application.

## Prerequisites


- A Ruby application ready to be containerized.

## Steps to Create Docker Image

### 1. **Create a `Dockerfile`**

In the root of your Ruby project, create a `Dockerfile` with the following content:

```Dockerfile
# Use the official Ruby image
FROM ruby:3.1

# Install required packages for Rails (if applicable)
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock first (to leverage Docker cache)
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on (default Rails port is 3000)
EXPOSE 3000

# Set the command to run the application
CMD ["rails", "server", "-b", "0.0.0.0"]

