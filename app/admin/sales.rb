ActiveAdmin.register Sale do
        filter :bank_name
        filter :created_at
        index do
                column :bank_name
                column :atm_number
                column :amount
                column :created_at
                default_actions
        end
        form do |f|
                f.inputs "New Sale"do
                        f.input :bank_name
                        f.input :atm_number
                        f.input :amount
                end
                f.buttons
        end
end

