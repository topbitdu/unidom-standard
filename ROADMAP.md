# Unidom Standard Roadmap 标准领域模型引擎路线图

## v0.1
1. Standard model & migration (20000601000000)

## v0.2
1. Standard Associating model & migration (20000602000000)

## v0.3
1. Improve the Standard Associating model to add the .``associate!`` method
2. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.9

## v1.0
1. Improve the Standard Associating model to support the Keyword Arguments

## v1.0.1
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.0

## v1.1
1. As Source Standard concern
2. As Target Standard concern

## v1.2
1. Improve the As Source Standard concern to add the #``associate!`` method
2. Improve the As Target Standard concern to add the #``is_associated!`` method

## v1.3
1. Improve the As Source Standard concern to add the #``associate?`` method
2. Improve the As Target Standard concern to add the #``is_associated?`` method

## v1.3.1
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.6

## v1.3.2
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.7

## v1.3.3
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.7.1

## v1.3.4
1. Improve the Standard migration to extend the maximum length of the #``ics_code`` column

## v1.3.5
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.8
2. Improve the Engine class to include the Engine Extension concern

## v1.3.6
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.9
2. Improve the models to support the namespace neglecting

## v1.4
1. Models RSpec examples manifest
2. Types RSpec examples manifest
3. Validators RSpec examples manifest

## v1.4.1
1. Improve the Standard spec for the validations on the #``name`` attribute, & the #``number`` attribute

## v1.4.2
1. Improve the Standard spec for the ``number_is`` scope
2. Improve the Standard Associating spec for the ``source_is`` scope, the ``target_is`` scope

## v1.4.3
1. Improve the Standard Associating model for the source_is scope, & the target_is scope
2. Improve the Standard Associating spec for the ``belongs_to :source, class_name: 'Unidom::Standard::Standard', foreign_key: :source_id`` macro, & the ``belongs_to :target, class_name: 'Unidom::Standard::Standard', foreign_key: :target_id`` macro

## v1.4.4
1. Improve the Standard spec for the validations on the #``name`` attribute

## v1.4.5
1. Improve the Standard spec for the validations on the #``number`` attribute

## v1.4.6
1. As Source Standard shared examples
2. RSpec shared examples manifest
3. Improve the Standard spec for the As Source Standard concern

## v1.4.7
1. As Target Standard shared examples
2. Improve the Standard spec for the As Target Standard concern
3. Improve the RSpec shared examples manifest to remove the As Source Standard shared examples

## v1.4.8
1. Improve the As Source Standard shared examples for the argument validations of the #associate! method, & the #associate? method
2. Improve the Standard spec for the As Source Standard concern

## v1.4.9
1. Improve the Ruby Gem Specification to depend on unidom-common v1.10
2. Improve the Standard migration, & the Standard Associating migration for the #opened_at column, & the #closed_at column

## v1.4.10
1. Improve the Ruby Gem Specification to depend on unidom-common v1.11
2. Improve the Standard migration, & the Standard Associating migration for the #state column
