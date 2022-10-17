require_relative "abstract_method/version"

module Kernel
  class AbstractMethodError < StandardError; end

  def abstract_method(*msg)
    raise AbstractMethodError.new(msg.empty? ? "Abstract method called" : msg.join(' '))
  end
end
