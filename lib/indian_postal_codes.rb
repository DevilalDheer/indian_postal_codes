require "indian_postal_codes/version"

module IndianPostalCodes
  class << self
    def details(postal_code)
      data[postal_code]
    end

    def data
      @data ||= begin
        this_file = File.expand_path(File.dirname(__FILE__))
        indian_postal_codes = File.join(this_file, 'data', 'India.yml')
        YAML.load(File.open(indian_postal_codes))
      end
    end

    def load
      data
    end
  end
end
