module Webdrone
  class Browser
    def exec
      @exec ||= Exec.new self
    end
  end

  class Exec
    attr_accessor :a0

    def initialize(a0)
      @a0 = a0
    end

    def script(script, *more)
      @a0.driver.execute_script(script, *more)
    end
  end
end
