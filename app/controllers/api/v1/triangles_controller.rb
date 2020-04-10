module Api
    module V1
    class TrianglesController < ApplicationController

        def create 
            triangle = triangle_params
           

            if (params[:a] == params[:b]) && (params[:a] == params[:c]) && (params[:b] == params[:c])
                render json: {status:'SUCCESS', message: 'Equilateral triangle', data:triangle},status: :ok

            elsif (params[:a] == params[:b]) && ((params[:a] || params[:b]) != params[:c])
                render json: {status:'SUCCESS', message: 'isosceles triangle', data:triangle},status: :ok
            elsif (params[:a] == params[:c]) && ((params[:a] || params[:c]) != params[:b])
                render json: {status:'SUCCESS', message: 'isosceles triangle', data:triangle},status: :ok
            elsif (params[:b] == params[:c]) && ((params[:b] || params[:c]) != params[:a])
                render json: {status:'SUCCESS', message: 'isosceles triangle', data:triangle},status: :ok
            else
                render json: {status:'SUCCESS', message: 'Scalene triangle', data:triangle},status: :ok
            end
        end    
       
        private 
        def triangle_params 
        params.require(:triangle).permit(:a, :b, :c)
        end
    end
    end
    
end