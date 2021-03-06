module Unidom
  module Standard

    class Engine < ::Rails::Engine

      include Unidom::Common::EngineExtension

      isolate_namespace ::Unidom::Standard

      enable_initializer enum_enabled: false, migration_enabled: true

    end

  end
end
