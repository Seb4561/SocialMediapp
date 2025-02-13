require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    assign(:comment, Comment.create!(
      contenido: "Contenido",
      text: "Text",
      post: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Contenido/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(//)
  end
end
