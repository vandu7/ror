class RegistrationController < Devise::RegistrationsController
  #private
  #def sign_up_params
    #params.require(:user1).permit(:Name, :Userid, :Password, :password_confirmation, :Batch, :Branch, :Email)
  #end
  #def create
    #@resource = Resource.new(registration_params)

    #respond_to do |format|
      #if @resource.save
        #format.html { redirect_to @resource, notice: 'Interpage1 was successfully created.' }
        #format.json { render :show, status: :created, location: @resource }
      #else
        #format.html { render :new }
        #format.json { render json: @resource.errors, status: :unprocessable_entity }
      #end
    #end
  #end
end
