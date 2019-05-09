require "application_system_test_case"

class SoundsTest < ApplicationSystemTestCase
  setup do
    @sound = sounds(:one)
  end

  test "visiting the index" do
    visit sounds_url
    assert_selector "h1", text: "Sounds"
  end

  test "creating a Sound" do
    visit sounds_url
    click_on "New Sound"

    fill_in "Title", with: @sound.title
    click_on "Create Sound"

    assert_text "Sound was successfully created"
    click_on "Back"
  end

  test "updating a Sound" do
    visit sounds_url
    click_on "Edit", match: :first

    fill_in "Title", with: @sound.title
    click_on "Update Sound"

    assert_text "Sound was successfully updated"
    click_on "Back"
  end

  test "destroying a Sound" do
    visit sounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sound was successfully destroyed"
  end
end
