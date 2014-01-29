require 'sprockets/processor'

module Ngmin
  class Processor < Sprockets::Processor
    def self.name
      'Ngmin::Processor'
    end

    def prepare
      ngmin_source = File.open(File.join(File.dirname(__FILE__), '../../vendor/ngmin.js')).read
      @context = ExecJS.compile "window = {};" + ngmin_source
    end

    def evaluate(context, locals)
      if context.pathname.basename.to_s.match(/.*\.(ejs).*/)
        data
      else
        @context.call 'window.annotate', data
      end
    end
  end
end
