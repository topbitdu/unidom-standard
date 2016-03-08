# Unidom Standard 标准领域模型引擎

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/unidom-standard.svg)](https://badge.fury.io/rb/unidom-standard)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Standard domain model engine includes the Standard and Standard Association models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。标准领域模型引擎包括标准和标准关联的模型。

## Usage in Gemfile
```ruby
gem 'unidom-standard'
```

## Run the Database Migration
```shell
rake db:migrate
```

## Call the Model
```ruby
Unidom::Standard::Standard.valid_at.alive.first
Unidom::Standard::StandardAssociation.valid_at.alive.first
```
