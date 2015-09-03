module Webdrone
  class Browser
    def open
      @open ||= Open.new self
    end
  end

  class Open
    attr_accessor :a0

    def initialize(a0)
      @a0 = a0
    end

    def url(url)
      @a0.driver.get url
    end
  end
end
