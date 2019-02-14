module Logging
  def logger
    @logger ||= Logger.new(opts)
    puts "module methods"
  end
end
  
class Person
  extend Logging
  def relocate
    puts "class methods"
    self.class.logger.debug "Relocating person..."
      # do relocation stuff
  end
end

Person.logger
