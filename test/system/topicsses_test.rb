require "application_system_test_case"

class TopicssesTest < ApplicationSystemTestCase
  setup do
    @topicss = topicsses(:one)
  end

  test "visiting the index" do
    visit topicsses_url
    assert_selector "h1", text: "Topicsses"
  end

  test "creating a Topicss" do
    visit topicsses_url
    click_on "New Topicss"

    fill_in "Description", with: @topicss.description
    fill_in "Title", with: @topicss.title
    click_on "Create Topicss"

    assert_text "Topicss was successfully created"
    click_on "Back"
  end

  test "updating a Topicss" do
    visit topicsses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @topicss.description
    fill_in "Title", with: @topicss.title
    click_on "Update Topicss"

    assert_text "Topicss was successfully updated"
    click_on "Back"
  end

  test "destroying a Topicss" do
    visit topicsses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topicss was successfully destroyed"
  end
end
