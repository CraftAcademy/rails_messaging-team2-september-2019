Given("i click {string} button") do |button|
    click_on(button)
  end
  
  Given("the following user exist") do |table|
    table.hashes.each do |hash|
        User.create!(hash)
    end
end