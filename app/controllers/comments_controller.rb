class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to product_path(getproductId) 
          else
            p @comment.errors.full_messages
            render 'new'
          end
    end

    def comment_params
        p params.require(:comment).permit(:content, :product_id, :actor)
    end

    def account_login
        @actor = 'actor'
        if account_signed_in?
            @account = Account.where(id:current_account.id)
            @email = @account[0].email
            @emailsplit = @email.split('@')
            @actor = @emailsplit[0]
        end
        p @actor
    end

    def getcheck
        @c = params.require(:comment).permit(:check).values.to_a
        p @c[0].to_i
    end
    def getproductId
        @c = params.require(:comment).permit(:product_id).values.to_a
        p @c[0].to_i
    end
end
