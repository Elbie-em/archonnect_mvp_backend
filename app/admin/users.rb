ActiveAdmin.register User do
  permit_params :email, :password
  form do |f|
    f.inputs "Admin Details" do 
    f.input :email
    f.input :password
    end
    f.actions
  end
  
end
