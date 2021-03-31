ActiveAdmin.register Plan do
  permit_params :name, :details, :architect_name, :rating, :price, :design_img_url, :blueprint_one_url,
                :blueprint_two_url
end
