require 'rails_helper'

describe "User can see hello world from stimulus", type: :system do
  it 'with success', js: true do
    visit root_path

    expect(page).to have_content("Aguarde...")

    expect(page).to have_content("Hello, World!", wait: 3)
  end
end
