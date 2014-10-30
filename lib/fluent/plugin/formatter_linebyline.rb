require "fluent/plugin/formatter_linebyline/version"

module Fluent
  module TextFormatter
    class FormatterLinebyline
      include Configurable # This enables the use of config_param

      #config_param :parameter_name, :type   defines configuration parameters
      
      def configure(conf)
        #Does nothing because no config parameters.  Left for plugin requirements.  
      end


      def format(tag, time, record) 
           	
      	seperationLine = "----------------"
      	outputArray = [seperationLine, tag, time, ""]
        
        record.each do |key, value|
        	line = key + " : " + value
        	outputArray << line
        end

        outputArray.join("\n");
      end
    end

    register_template("linebyline", Proc.new { FormatterLinebyline.new })
  end
end