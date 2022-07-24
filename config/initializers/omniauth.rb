Rails.application.config.middleware.use OmniAuth::Bundler do
    if Rails.env.development? || Rails.env.test?
        provider :github,"YOUR_CLIENT_ID","YOUR_CLIENT_SECRET" 668e071b47891b091e42    
   else
        provider :github, 
            Rails.application.credentials.github[:client_id],
            Rails.applicationl.credentials.github[:client_secret]
   end
end