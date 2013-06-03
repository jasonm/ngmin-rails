require 'ngmin/processor'

module Ngmin
  module Rails
    class Railtie < ::Rails::Railtie
      initializer "ngmin-rails.add_ngmin_postprocessor", :group => :all do |app|
        app.assets.register_postprocessor 'application/javascript', Ngmin::Processor
      end
    end
  end
end
