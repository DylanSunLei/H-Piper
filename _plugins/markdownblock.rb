module Jekyll
	 class MarkdownBlock < Liquid::Block
	      def initialize(tag_name, text, tokens)
			        super
	    end
		  require "kramdown"
			      def render(context)
				     content = super
		     "#{Kramdown::Document.new(content).to_html}"
			      end
		#  def render(context)
		#  text = super
		#    site = context.registers[:site]
		#	  converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
		#	   _output += "<figcaption>#{converter.convert(_caption)}</figcaption>"
		#  end
	end
end
Liquid::Template.register_tag('markdown', Jekyll::MarkdownBlock)
