Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rails.env.test?
        provider :github,"668e071b47891b091e42","fd91be64d82125266bae9925987fca3c5f9aa41d"     
    else
        provider :github, 
            Rails.application.credentials.github[:client_id],
            Rails.applicationl.credentials.github[:client_secret]
   end
end