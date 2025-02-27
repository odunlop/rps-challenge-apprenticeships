feature 'user can choose rock, paper or scissors' do
  scenario 'user chooses rock' do
    enter_name_and_start
    choose_rock
    expect(page).to have_current_path("/result")
  end

  scenario 'user chooses paper' do
    enter_name_and_start
    select "Paper", :from => "choice"
    click_button "Go!"
    expect(page).to have_current_path("/result")
  end

  scenario 'user chooses scissors' do
    enter_name_and_start
    select "Scissors", :from => "choice"
    click_button "Go!"
    expect(page).to have_current_path("/result")
  end

  scenario 'the user can click the home botton to go back home' do
    enter_name_and_start
    find('#home').click
    expect(page).to have_current_path("/")
  end
end
