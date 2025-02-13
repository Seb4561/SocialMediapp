require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  let(:comment) {
    Comment.create!(
      contenido: "MyString",
      text: "MyString",
      post: nil
    )
  }

  before(:each) do
    assign(:comment, comment)
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(comment), "post" do

      assert_select "input[name=?]", "comment[contenido]"

      assert_select "input[name=?]", "comment[text]"

      assert_select "input[name=?]", "comment[post_id]"
    end
  end
end
