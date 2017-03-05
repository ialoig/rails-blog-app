module ApplicationHelper

	def markdown (content)
		render = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
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
