
Given('I navigate to Exercise-web homepage') do
   visit 'https://automationexercise.com/'
end

When('I click on signup\/login') do
  click_on 'Signup / Login'
end

And('I fill in the name') do
  fill_in 'Name', with: 'Sachindra'
end

When('I fill in the email') do
  # find(:xpath, "//select[@name='attributes[ruby][category]'")
  # find('//body/section[@id='form']/div[1]/div[1]/div[3]/div[1]/form[1]/input[3]').fill_in ,  with: 'chicku975@gmail.com'
  within find(class: 'signup-form') do
  fill_in 'email',  with: 'c975@gmail.com'
end
  # page.first('.icon-delete').click
  # page.all('a')[1].click
  # page.all('signup-email')[1].fill_in with: 'chicku975@gmail.com'
 # fill_in page.all('signup-email')[2] ,  with: 'chicku975@gmail.com'
 # fill_in find('//body/section[@id='form']/div[1]/div[1]/div[3]/div[1]/form[1]/input[3]')  ,  with: 'chicku975@gmail.com'
  # sleep(10)
end

When('I click on the Signup button') do
  click_button("Signup")
end

When('I select Mr.') do
#   within find(class: 'radio-inline') do
#
# end
  choose 'id_gender1'
end

When('I fill in the password') do
  fill_in 'password', with: 'secret'
end

When('I should select Day for DOB') do
  select '7', from: 'days'
end

When('I should select Month for DOB') do
  select 'January', from: 'months'
end

When('I should select Year for DOB') do
  select '1992', from: 'years'
end

When('I click both checkboxes') do
  check 'newsletter'
  check 'optin'
end

When('I fill in the first-name for address') do
  fill_in 'first_name', with: 'Sachindra'
end

When('I fill in the last-name for address') do
  fill_in 'last_name', with: 'Tripathi'
end

When('I fill in the company name for address') do
  fill_in 'company', with: 'R Systems International'
end

When('I fill in the address') do
  fill_in 'address1', with: 'Ecovillge2'
end

When('I fill in the address2') do
  fill_in 'address2', with: 'Greno West'
end

When('I select country') do
  select 'Australia', from: 'country'
end

When('I fill in the State') do
  fill_in 'state', with: 'Uttar Pradesh'
end

When('I fill in the City') do
  fill_in 'city', with: 'Greater Noida'
end

When('I fill in the Zipcode') do
  fill_in 'zipcode', with: '201310'
end

When('I fill in the Mobile Number') do
  fill_in 'mobile_number', with: '7258063318'
end

When('I click on the Create Account button') do
  click_button("Create Account")
end

Then('I should see account created!') do
  page.should have_text("ACCOUNT CREATED!")
  save_screenshot("screenshot1.png")
end
