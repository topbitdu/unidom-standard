# Unidom Standard 标准领域模型引擎

[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/unidom-standard/frames)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

[![Gem Version](https://badge.fury.io/rb/unidom-standard.svg)](https://badge.fury.io/rb/unidom-standard)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/unidom-standard.svg)](https://gemnasium.com/github.com/topbitdu/unidom-standard)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Standard domain model engine includes the Standard and Standard Association models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。标准领域模型引擎包括标准和标准关联的模型。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile

```ruby
gem 'unidom-standard'
```



## Run the Database Migration

```shell
rake db:migrate
```
The migration versions start with 200006.



## Call the Model

```ruby
gbk = Unidom::Standard::Standard.number_is('GBK').first
gbk.source_standards.merge(Unidom::Standard::StandardAssociating.association_coded_as('REVS').valid_at.alive).valid_at.alive
# The standards revises GBK.
gbk.target_standards.merge(Unidom::Standard::StandardAssociating.association_coded_as('REVS').valid_at.alive).valid_at.alive
# The standards revised by GBK, such as GB2312.

# GBK revise GB2312
Unidom::Standard::StandardAssociating.associate! gbk, with: gb2312, due_to: 'REVS'
```



## Inlcude the Concerns

```ruby
include Unidom::Standard::Concerns::AsSourceStandard
include Unidom::Standard::Concerns::AsTargetStandard
```

### As Source Standard concern

The As Source Standard concern do the following tasks for the includer automatically:
1. Define the has_many :target_associatings macro as: ``has_many :target_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :source_id``
2. Define the has_many :target_standards macro as: ``has_many :target_standards, through: :target_associatings, source: :target``
3. Define the #associate! method as: ``associate!(target, due_to: 'REVS', at: Time.now)``
4. Define the #associate? method as: ``associate?(target, due_to: 'REVS', at: Time.now)``

### As Target Standard concern

The As Target Standard concern do the following tasks for the includer automatically:
1. Define the has_many :source_associatings macro as: ``has_many :source_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :target_id``
2. Define the has_many :source_standards macro as: ``has_many :source_standards, through: :source_associatings, source: :source``
3. Define the #is_associated! method as: ``is_associated!(source, due_to: 'REVS', at: Time.now)``
4. Define the #is_associated? method as: ``is_associated?(source, due_to: 'REVS', at: Time.now)``



## Disable the Model & Migration

If you only need the app components other than models, the migrations should be neglected, and the models should not be loaded.
```ruby
# config/initializers/unidom.rb
Unidom::Common.configure do |options|

  options[:neglected_namespaces] = %w{
    Unidom::Standard
  }

end
```



## RSpec examples

```ruby
# spec/models/unidom_spec.rb
require 'unidom/standard/models_rspec'

# spec/types/unidom_spec.rb
require 'unidom/standard/types_rspec'

# spec/validators/unidom_spec.rb
require 'unidom/standard/validators_rspec'
```
