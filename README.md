# Rails S3 Uploader

Rails S3 Uploader is a gem in development to facilitate file uploads to Amazon S3 using Active Storage in Rails applications.

---

## Installation

**Note:** This gem is currently in development and your final version has not yet been released on RubyGems.org.

To use the development version, add this line to your Gemfile:

```ruby
gem 'rails_s3_uploader', git: 'https://github.com/eltonsantos/rails_s3_uploader.git'

```
And run: **bundle install**

## Usage

**Note:** Full usage documentation will be provided in future versions.

Rails S3 Uploader was developed to facilitate the file upload process to AWS S3 in Ruby on Rails projects. It can be especially useful in projects that need to store and manage files efficiently in the AWS cloud.

### Recommended Project Types

- **Web Applications:** Easily integrate image, document, and other file uploads in web applications built with Ruby on Rails.

- **E-commerce Applications:** Manage product images, catalogs, and media files on e-commerce platforms.

- **Content Management Systems (CMS):** Allow users to upload and manage multimedia content in Rails-based CMS systems.

- **Collaboration Projects:** Facilitate document sharing among users on collaborative platforms.

## Initial Configuration

#### Environment Variables

Create a **.env** file at the root of your Rails project and add your AWS credentials:

```sh
AWS_ACCESS_KEY_ID=your_access_key_id
AWS_SECRET_ACCESS_KEY=your_secret_access_key
AWS_REGION=your_region
AWS_BUCKET=your_bucket
```

### Initializer

Create an initializer in *config/initializers/rails_s3_uploader.rb*:

```ruby
RailsS3Uploader.configure do |config|
  config.access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  config.region = ENV['AWS_REGION']
  config.bucket = ENV['AWS_BUCKET']
end
```

### Development

To set up the development environment, clone the repository and install the dependencies:

```sh
git clone https://github.com/eltonsantos/rails_s3_uploader.git

cd rails_s3_uploader

bin/setup
```

You can use *bin/console* for an interactive prompt that allows you to test the code.

To install this gem locally, run:

```sh
bundle exec rake install
```

Contributions are welcome! Bug reports and pull requests are welcome on GitHub at *https://github.com/eltonsantos/rails_s3_uploader*.

## Requirements

- Ruby >= 2.6.0 (recommended 2.7+)
  
- Rails >= 6.0 (compatible up to Rails 7)
  
- AWS S3 Account: You need an S3 bucket and access credentials to use the rails_s3_uploader gem.

## Licence

This gem is available as open-source under the terms of the MIT license.





