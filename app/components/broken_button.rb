class Components::BrokenButton < Phlex::HTML
  include Phlex::Rails::Helpers::LinkTo
  include PhlexIcons

  def initialize(href:, icon: nil)
    @href = href
    @icon = icon
  end

  def view_template(&block)
    puts view_context.link_to(@href).class
    link_to(@href) do
      yield
      render(@icon) if @icon
    end
  end
end
