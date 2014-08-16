Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'mbdSIYkKsfPccwMtKijEHBZcp', 'bMpITuWo3ZGn3csMHXM4rwMhDZ93CMfqeibnvkfYIOEoU0gyNS'
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], scope: 'email', display: 'popup'
end
