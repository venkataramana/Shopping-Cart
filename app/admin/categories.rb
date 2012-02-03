ActiveAdmin.register Category do
        filter :category_name
        filter :created_at

        form do |f|
                        f.inputs "New Category" do
                        # f.input :category_id, :as => :select, :collection => Category.all.map{|x| [x.category_name,x.id]}, :prompt => "Select Parent"
                        f.input :category_name
                        f.input :description
                end
                        f.buttons
        end
        sidebar :helpdesk do
        "Need help? if so--- Email us at: help@kvr.com"
        end
end

