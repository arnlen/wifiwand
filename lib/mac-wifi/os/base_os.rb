# Base class for classes identifying a supported operating system.

module MacWifi

class BaseOs < Struct.new(:id, :display_name); end

class BaseOs

  class MethodNotImplementedError < RuntimeError

    def to_s
      "This class is not intended to be instantiated directly. Instantiate a subclass of it."
    end
  end

  def current_os_is_this_os?
    raise MethodNotImplementedError.new
  end

  def create_model(want_verbose)
    raise MethodNotImplementedError.new
  end

end
end