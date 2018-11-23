Dir[File.join(File.dirname(__FILE__), '../pages/*_PO.rb')].each { |file| require file}

module PageObjects

    def home

        @home ||= MapearElementosPage.new

    end
end