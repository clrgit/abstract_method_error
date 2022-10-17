require_relative "abstract_method_error/version"

class AbstractMethodError < StandardError; end

module Kernel
  def abstract_method(*msg)
    raise AbstractMethodError.new(msg.empty? ? "Abstract method called" : msg.join(' '))
  end
end
