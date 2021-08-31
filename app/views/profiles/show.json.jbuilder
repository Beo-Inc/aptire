json.user do
  json.id @profile_data.id
  json.username @profile_data.username
  json.first_name @profile_data.first_name if @profile_data.first_name
  json.last_name @profile_data.last_name if @profile_data.last_name
  json.other_names @profile_data.other_names if @profile_data.other_names
  json.developer 'Yes' if @profile_data.developer

  json.links @profile_data.links do |link|
    json.id link.id
    json.link_name link.name
    json.url link.url
  end
  json.skills @profile_data.skills do |skill|
    json.id skill.id
    json.skill_name skill.name
    json.self_rating skill.self_rating
    json.experience skill.years_of_experience
    json.projects_count skill.number_of_projects
  end
  json.employments @profile_data.employments do |employment|
    json.title employment.title
    json.company_name employment.company_name
  end
  json.newsletters_subscriptions do
    json.monday_morning_newsletter @profile_data.newsletters_subscription.monday_morning_newsletter
    json.featured_developer_newsletter @profile_data.newsletters_subscription.featured_developer_newsletter
  end
end
