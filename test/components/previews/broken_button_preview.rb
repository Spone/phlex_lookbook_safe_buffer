class BrokenButtonPreview < Lookbook::Preview
  # @!group
  def default
    render Components::BrokenButton.new(href: "#") { "Default" }
  end

  def with_icon
    render Components::BrokenButton.new(href: "#", icon: "ExternalLink") { "Button with Icon" }
  end

  def with_href_and_icon
    render Components::BrokenButton.new(href: "#", icon: "ExternalLink") { "Link" }
  end
  # @!endgroup
end
