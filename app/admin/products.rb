ActiveAdmin.register Product do
        filter :product_name
        filter :created_at

         index do
                column :product_name
                column :quantity
                #column :category.category_name
                default_actions
        end

        form(:html => { :multipart => true }) do |f|
                f.inputs "New Product" do
                       # f.input :description, :as => :select, :collection => ["India", "America","Australia", "Japan","Chaina"], :prompt => "Select Country"
                        f.input :category_id, :as => :select, :collection => Category.all.map{|x| [x.category_name,x.id]}, :prompt => "Select One"
                        f.input :product_name
                        f.input :description
                        f.input :price
                        f.input :quantity
                        f.input :kvr, :as => :file

                end

                 f.buttons
        end

end

