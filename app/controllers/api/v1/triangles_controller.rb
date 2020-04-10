module Api
    module V1
    class TrianglesController < ApplicationController

        def create 
            triangle = triangle_params
           

            if triangle_params.a == triangle_params.b == triangle_params.c
                render json: {status:'SUCCESS', message: 'Equilateral triangle', data:triangle},status: :ok
                print("Equilateral triangle")
            elsif triangle_params.a==triangle_params.b or triangle_params.b==triangle_params.c or triangle_params.c==triangle_params.a
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