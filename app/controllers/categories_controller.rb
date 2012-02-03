class CategoriesController < InheritedResources::Base

        def index
                @categories = Category.find(:all)
                @products = Product.find(:all)
                respond_to do |format|
                        format.html # index.html.erb
                        format.xml  { render :xml =>@categories}
                        format.json  { render :json =>@categories}
                end
        end
        def ajaxaction

                @products = Product.find(:all, :conditions => ['category_id =?', params[:id]])
                # create rjs file named ajax_method.rjs
                # put the below code in that file;
                #
                # page.replace_html "id of your div or any other element that you want to change",:partial => "Name of partial that you want to replace",:locals => {:name_of_variable_user_in_partial_file => @your_array_object}
                #
        end
        def ajax_filter

                 @products = Product.find(:all,:conditions => ["product_name like ?","%#{params[:search]}%"])
                        #render :text=> @products.inspect and return false
                         if @products.nil?
                                flash[:notice] = "Found no search results!"
                          else
                                @products = Product.find(:all,:conditions => ["product_name like ?","%#{params[:search]}%"])
                        end
        end
end

