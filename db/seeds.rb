# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# toolkits = [{:title => "Spanish Workshop", :author => 'Me', :category => 'Law', :steps => '1234', :overview => 'Lorem Ipsum'},
#             {:title => "Demonstration", :author => 'You', :category => 'Social', :steps => '1234', :overview => 'Lorem Ipsum'},
#         ]


# toolkits.each do |toolkit|
#     Toolkit.create!(toolkit)
# end



case Rails.env
when "development"
  @category1 = Category.create({:name => "Law"})
  @category2 = Category.create({:name => "Social"})

  @toolkit1 = Toolkit.create({:title => "How to Prepare a Law Workshop", :author => 'wikiHow', :overview => 'A workshop is an informative or instructional class focused on teaching specialized skills or exploring a particular subject. Workshop presenters are usually educators, subject matter experts, managers or other leaders who possess knowledge of a particular subject or mastery of specific skills. Depending on the topic, workshops may be only one or two hours in length or extend across weeks of time. Workshop leaders can strengthen the effectiveness of their presentations through careful planning, organization and presentation practice. Here are the steps for preparing a workshop.'})
  @toolkit2 = Toolkit.create({:title => "How to Prepare a Law Workshop 2", :author => 'wikiHow', :overview => 'A workshop is an informative or instructional class focused on teaching specialized skills or exploring a particular subject. Workshop presenters are usually educators, subject matter experts, managers or other leaders who possess knowledge of a particular subject or mastery of specific skills. Depending on the topic, workshops may be only one or two hours in length or extend across weeks of time. Workshop leaders can strengthen the effectiveness of their presentations through careful planning, organization and presentation practice. Here are the steps for preparing a workshop.'})
  
  @toolkit3 = Toolkit.create({:title => "Chinese Workshop", :author => 'He', :overview => 'Lorem Ipsum'})

  @intermediate1 = Intermediate.create({:toolkit_id => @toolkit1.id, :category_id => @category1.id})
  @intermediate2 = Intermediate.create({:toolkit_id => @toolkit2.id, :category_id => @category1.id})
  @intermediate3 = Intermediate.create({:toolkit_id => @toolkit3.id, :category_id => @category1.id})

  @step1 = Step.create({:content => "Define the objective of the workshop. Your objective may be to teach a concrete skill, such as how to create and save documents in a word processing application. Or your aim may be to deliver general information or guidance about a specific topic, such as painting or creative writing. Regardless of the focus, it's important to define the objective first", :number => 1})
  @step2 = Step.create({:content => "Determine the needs of workshop participants. When teaching a particular skill, for example, understanding the participants' needs in regard to skill level and learning pace will assist you in delivering appropriate content. The more you tailor the workshop to your audience, the more effective the workshop will be.", :number => 2})
  @step3 = Step.create({:content => "Decide on the order of the topics. Move the most important skills or information to the early part of the workshop. Depending on the subject of the workshop, it may also be useful to introduce and build on each topic, beginning with the simplest or most straight forward topic and concluding with the more difficult or complex topic.", :number => 3})
  @step4 = Step.create({:content => "Assign an estimated length of time to each item on the outline. For particularly complicated topics or skills, allot a sufficient amount of time in case participants get stuck or have questions. It is also important to factor in scheduled breaks during the workshop to give the participants a chance to go to the bathroom or stretch their legs.", :number => 4})

  @step1_2 = Step.create({:content => "Define the objective of the workshop. Your objective may be to teach a concrete skill, such as how to create and save documents in a word processing application. Or your aim may be to deliver general information or guidance about a specific topic, such as painting or creative writing. Regardless of the focus, it's important to define the objective first", :number => 1})
  @step2_2 = Step.create({:content => "Determine the needs of workshop participants. When teaching a particular skill, for example, understanding the participants' needs in regard to skill level and learning pace will assist you in delivering appropriate content. The more you tailor the workshop to your audience, the more effective the workshop will be.", :number => 2})
  @step3_2 = Step.create({:content => "Decide on the order of the topics. Move the most important skills or information to the early part of the workshop. Depending on the subject of the workshop, it may also be useful to introduce and build on each topic, beginning with the simplest or most straight forward topic and concluding with the more difficult or complex topic.", :number => 3})



  @toolkit1.steps << @step2

  @toolkit1.steps << @step1
  @toolkit1.steps << @step3
  @toolkit1.steps << @step4

  @toolkit2.steps << @step2_2

  @toolkit2.steps << @step1_2
  @toolkit2.steps << @step3_2



  #Staging Data

  @stage_toolkit1 = Stoolkit.create({:title => "How to Prepare a Law Workshop", :author => 'wikiHow', :overview => 'A workshop is an informative or instructional class focused on teaching specialized skills or exploring a particular subject. Workshop presenters are usually educators, subject matter experts, managers or other leaders who possess knowledge of a particular subject or mastery of specific skills. Depending on the topic, workshops may be only one or two hours in length or extend across weeks of time. Workshop leaders can strengthen the effectiveness of their presentations through careful planning, organization and presentation practice. Here are the steps for preparing a workshop.'})
  @stage_toolkit2 = Stoolkit.create({:title => "How to Prepare a Law Workshop 2", :author => 'wikiHow', :overview => 'A workshop is an informative or instructional class focused on teaching specialized skills or exploring a particular subject. Workshop presenters are usually educators, subject matter experts, managers or other leaders who possess knowledge of a particular subject or mastery of specific skills. Depending on the topic, workshops may be only one or two hours in length or extend across weeks of time. Workshop leaders can strengthen the effectiveness of their presentations through careful planning, organization and presentation practice. Here are the steps for preparing a workshop.'})
  
  @stage_toolkit3 = Stoolkit.create({:title => "Chinese Workshop", :author => 'He', :overview => 'Lorem Ipsum'})

  @stage_step1 = Sstep.create({:content => "Define the objective of the workshop. Your objective may be to teach a concrete skill, such as how to create and save documents in a word processing application. Or your aim may be to deliver general information or guidance about a specific topic, such as painting or creative writing. Regardless of the focus, it's important to define the objective first", :number => 1})
  @stage_step2 = Sstep.create({:content => "Determine the needs of workshop participants. When teaching a particular skill, for example, understanding the participants' needs in regard to skill level and learning pace will assist you in delivering appropriate content. The more you tailor the workshop to your audience, the more effective the workshop will be.", :number => 2})

  @stage_step1_2 = Sstep.create({:content => "Define the objective of the workshop. Your objective may be to teach a concrete skill, such as how to create and save documents in a word processing application. Or your aim may be to deliver general information or guidance about a specific topic, such as painting or creative writing. Regardless of the focus, it's important to define the objective first", :number => 1})
  @stage_step2_2 = Sstep.create({:content => "Determine the needs of workshop participants. When teaching a particular skill, for example, understanding the participants' needs in regard to skill level and learning pace will assist you in delivering appropriate content. The more you tailor the workshop to your audience, the more effective the workshop will be.", :number => 2})
  @stage_step3_2 = Sstep.create({:content => "Decide on the order of the topics. Move the most important skills or information to the early part of the workshop. Depending on the subject of the workshop, it may also be useful to introduce and build on each topic, beginning with the simplest or most straight forward topic and concluding with the more difficult or complex topic.", :number => 3})
  @stage_step4_2 = Sstep.create({:content => "Assign an estimated length of time to each item on the outline. For particularly complicated topics or skills, allot a sufficient amount of time in case participants get stuck or have questions. It is also important to factor in scheduled breaks during the workshop to give the participants a chance to go to the bathroom or stretch their legs.", :number => 4})



  @stage_toolkit1.ssteps << @stage_step2

  @stage_toolkit1.ssteps << @stage_step1

  @stage_toolkit2.ssteps << @stage_step2_2

  @stage_toolkit2.ssteps << @stage_step1_2
  @stage_toolkit2.ssteps << @stage_step3_2
  @stage_toolkit2.ssteps << @stage_step4_2

  @toolkit1.stoolkits << @stage_toolkit1
  @toolkit2.stoolkits << @stage_toolkit2
  @toolkit3.stoolkits << @stage_toolkit3



  # Seed user data
  User.create!(firstName:  "Oski",
              lastName: "Bear",
              email: "oskibear@berkeley.edu",
              password:              "foobar",
              password_confirmation: "foobar",
              admin: true)

  20.times do |n|
    firstName  = Faker::Name.first_name
    lastName = Faker::Name.last_name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(firstName:  firstName,
                  lastName: lastName,
                  email: email,
                  password:              password,
                  password_confirmation: password)
  end
 when "production"
  #  @category1 = Category.create({:name => "Law"})

   @toolkit1 = Toolkit.create({:title => "How to Prepare a Law Workshop", :author => 'wikiHow', :category => "Law", :overview => 'A workshop is an informative or instructional class focused on teaching specialized skills or exploring a particular subject. Workshop presenters are usually educators, subject matter experts, managers or other leaders who possess knowledge of a particular subject or mastery of specific skills. Depending on the topic, workshops may be only one or two hours in length or extend across weeks of time. Workshop leaders can strengthen the effectiveness of their presentations through careful planning, organization and presentation practice. Here are the steps for preparing a workshop.'})
   @step1 = Step.create({:content => "Define the objective of the workshop. Your objective may be to teach a concrete skill, such as how to create and save documents in a word processing application. Or your aim may be to deliver general information or guidance about a specific topic, such as painting or creative writing. Regardless of the focus, it's important to define the objective first", :number => 1})
   @step2 = Step.create({:content => "Determine the needs of workshop participants. When teaching a particular skill, for example, understanding the participants' needs in regard to skill level and learning pace will assist you in delivering appropriate content. The more you tailor the workshop to your audience, the more effective the workshop will be.", :number => 2})
   @step3 = Step.create({:content => "Decide on the order of the topics. Move the most important skills or information to the early part of the workshop. Depending on the subject of the workshop, it may also be useful to introduce and build on each topic, beginning with the simplest or most straight forward topic and concluding with the more difficult or complex topic.", :number => 3})

  #  @intermediate1 = Intermediate.create({:toolkit_id => @toolkit1.id, :category_id => @category1.id})

   @toolkit1.steps << @step2
   @toolkit1.steps << @step1
   @toolkit1.steps << @step3

   User.create!(firstName:  "Oski",
                lastName: "Bear",
                email: "oskibear@berkeley.edu",
                password:              "foobar",
                password_confirmation: "foobar",
                admin: true)
end