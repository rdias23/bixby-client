
require "bixby-client/platform_util"

require "digest"
require "fileutils"

require "systemu"

module Bixby
class Command

  include Bixby::Log
  include Bixby::PlatformUtil

  def initialize(options=nil)
  end

  # retrieve all loaded subclasses of this classs
  #
  # @return [Array<Class>] List of subclasses
  def self.subclasses
    @subclasses
  end

  # Reads JSON data from STDIN
  #
  # @return [Object] data found on STDIN (can be Hash, Array, String, etc)
  def get_json_input
    input = read_stdin()
    input.strip! if input
    (input.nil? or input.empty?) ? {} : MultiJson.load(input)
  end

  # Read all available data on STDIN without blocking
  # (i.e., if no data is available, none will be returned)
  #
  # @return [String] data
  def read_stdin
    buff = []
    while true do
      begin
        buff << STDIN.read_nonblock(64000)
      rescue
        break
      end
    end
    return buff.join('')
  end

  private

  def self.inherited(subclass)
    if superclass.respond_to? :inherited
      superclass.inherited(subclass)
    end
    @subclasses ||= []
    @subclasses << subclass
  end

end # Command
end # Bixby
