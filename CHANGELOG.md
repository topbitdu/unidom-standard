# Unidom Standard Change Log 标准领域模型引擎变更日志

## v0.1
1. Standard model & migration (20000601000000)

## v0.2
1. Standard Associating model & migration (20000602000000)

## v0.3
1. Improved the Standard Associating model to add the .``associate!`` method
2. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.9

## v1.0
1. Improved the Standard Associating model to support the Keyword Arguments

## v1.0.1
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.0

## v1.1
1. As Source Standard concern
2. As Target Standard concern

## v1.2
1. Improved the As Source Standard concern to add the #``associate!`` method
2. Improved the As Target Standard concern to add the #``is_associated!`` method

## v1.3
1. Improved the As Source Standard concern to add the #``associate?`` method
2. Improved the As Target Standard concern to add the #``is_associated?`` method

## v1.3.1
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.6

## v1.3.2
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.7

## v1.3.3
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.7.1

## v1.3.4
1. Improved the Standard migration to extend the maximum length of the #``ics_code`` field

## v1.3.5
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.8
2. Improved the Engine class to include the Engine Extension concern

## v1.3.6
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.9
2. Improved the models to support the namespace neglecting

## v1.4
1. Models RSpec examples manifest
2. Types RSpec examples manifest
3. Validators RSpec examples manifest

## v1.4.1
1. Improved the Standard spec for the validations on the #``name`` attribute, & the #``number`` attribute

## v1.4.2
1. Improve the Standard spec for the number_is scope
2. Improve the Standard Associating spec for the source_is scope, the target_is scope

## v1.4.3
1. Improve the Standard Associating model for the source_is scope, & the target_is scope
2. Improve the Standard Associating spec for the ``belongs_to :source, class_name: 'Unidom::Standard::Standard', foreign_key: :source_id`` macro, & the ``belongs_to :target, class_name: 'Unidom::Standard::Standard', foreign_key: :target_id`` macro

## v1.4.4
1. Improve the Standard spec for the validations on the #``name`` attribute

## v1.4.5
1. Improve the Standard spec for the validations on the #``number`` attribute
