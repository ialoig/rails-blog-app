module ApplicationHelper
	class HTMLwithPygments < Redcarpet::Render::HTML
		def block_code (code, language)
			Pygments.highlight(code, lexer: language)
		end
	end
	def markdown (content)
		render = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
		option = {
			autolink: true,
			no_intra_emphasis: true,
			tables: true,
			fenced_code_blocks: true,
			disable_indented_code_blocks: true,
			strikethrough: true,
			lax_spacing: true
		}
		Redcarpet::Markdown.new(render, option).render(content).html_safe
	end
end
