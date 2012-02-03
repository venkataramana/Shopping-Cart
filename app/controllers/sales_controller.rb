class SalesController < ApplicationController
        def index
                 @product=Product.find(:all)
                session[:product_id][] = @product.id
                render :text => session.inspect and return false
                @productids=Product.find(session[:product_id])
        end
        def new
                @sale=Sale.new()
        end
        def create
                #@product=Product.find(:all)
                @sale=Sale.new(params[:sale])
                if @sale.save
                        redirect_to @sale
                else
                        render :action=> "new"
                end
        end
        def product_session
                @product=Product.find(:all)
                session[:product_id][] = @product.id
                render :text => session.inspect and return false
                @productids=Product.find(session[:product_id])
        end

        def show
                @sale = Sale.find(params[:id])

        end
end

