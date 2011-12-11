require 'yaml'

module Beggar
  class CLI
    def initialize(args = nil)
      @config = load_config
    end

    def start
      Beggar::Base.new(@config).summary
    end
    
  private
    
    def load_config
      YAML.load_file(File.join(ENV['HOME'], '.beggar'))
    end
  end
end
