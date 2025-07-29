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
      icon
    end
  end

  private

  def icon
    @icon ? Lucide.public_send(@icon) : nil
  end
end
