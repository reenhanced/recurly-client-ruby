Factory(:recurly_account, :class_name => "Recurly::Account") do |account|
  account.account_code       '100'
  account.state              'active'
  account.username           'account1'
  account.email              'account1@example.com'
  account.first_name         'Verena'
  account.last_name          'Test'
  account.company_name       'Acme Inc'
  account.accept_language    'en-US'
  account.hosted_login_token 'a92468579e9c4231a6c0031c4716c01d'
  account.created_at         3.days.ago
end

Factory(:recurly_billing_info, :class_name => "Recurly::BillingInfo") do |billing_info|
  billing_info.association        :account, :factory => :recurly_account

  billing_info.first_name         'Verena'
  billing_info.last_name          'Test'
  billing_info.address1           '123 Main St.'
  billing_info.city               'San Francisco'
  billing_info.state              'CA'
  billing_info.zip                '94105'
  billing_info.country            'US'
  billing_info.vat_number         'US1234567890'
  billing_info.ip_address         '127.0.0.1'
  billing_info.ip_address_country 'US'
  billing_info.card_type          'Visa'
  billing_info.year               2015
  billing_info.month              1
  billing_info.first_six          '411111'
  billing_info.last_four          '1111'
end
