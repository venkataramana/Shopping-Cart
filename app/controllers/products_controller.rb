class ProductsController < InheritedResources::Base
        def index
                @products = Product.paginate :page => params[:page], :per_page => 3, :conditions => ["product_name like ?","%#{params[:search]}%"]
                @product=Product.find(:all)
        end
        def create
                @product=Product.new()
                @product.kvr = params[:product][:kvr]
                if @product.save
                        redirect_to :action => "index"
                else
                        render :action=>"new"
                end
        end
        def add_product_to_session
                @product=Product.find(params[:id])
               #render :text => @product.id.inspect and return false
                if !session[:product_id]
                        session[:product_id] = []
                        session[:product_id] << @product.id
                else
                        session[:product_id] << @product.id
                end
                redirect_to "/products/product_session"
        end
        def product_session
                @productids=Product.where([" id in (?)", session[:product_id]])
                @session= session[:product_id]
                #‎render :text => @session[1].inspect and return false
                @total=session[:product_id].count()
                #  if session[:product_id].include? @product.id
        end
        def destroy_session
                #session[:product_id].delete_if{|i| i.to_s == params[:id]}
                session[:product_id].delete(params[:id].to_i)
                redirect_to "/products/product_session"
        end
        def session_update
                #@productids=Product.where([" id in (?)", session[:product_id]])
               # session[:product_id].update(params[:id].to_i)
                @req=params[:reqno]
                render :text => @req.inspect and return false
                redirect_to "/products/product_session"
        end
 end

