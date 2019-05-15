Given /the following toolkits exist/ do |toolkits_table|
  toolkits_table.hashes.each do |toolkit|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that toolkit to the database here.
    @toolkit = Toolkit.create!(toolkit)
    @intermediate = @toolkit.intermediates.build(:category => Category.where(name: "Law").first)
    @intermediate.save
  end
end

Given /the following categories exist/ do |categories_table|
  categories_table.hashes.each do |category|
    Category.create!(category)
  end
end