class UsersController < ApplicationController
 
# Obtener todos los usuarios por GET
def index   
  @Users = Users.all   
end   
 
# obtener un usuario basandose en el Id por GET
def show   
  @Users = Users.find(params[:id])   
end   
 
# para formilario nuevo Usuario
def new   
  @Users = Users.new   
end   
 
# Procesar data del formulario 
def create   
  @users = Users.new(users_params)   
  if @Users.save   
    flash[:notice] = 'Usuario Registrado!'   
    redirect_to root_path   
  else   
    flash[:error] = 'Error en Registro!'   
    render :new   
  end   
end   
 
 # para editar segun Id recibido
def edit   
  @Users = Users.find(params[:id])   
end   
 
# PUT method for updating in database a Users based on id   
def update   
  @Users = Users.find(params[:id])   
  if @Users.update_attributes(Users_params)   
    flash[:notice] = 'Datos Actualizados!'   
    redirect_to root_path   
  else   
    flash[:error] = 'Error en actualizacion!'   
    render :edit   
  end   
end   
 
# DELETE method for deleting a Users from database based on id   
def destroy   
  @Users = Users.find(params[:id])   
  if @Users.delete   
    flash[:notice] = 'Usuario Eliminado!'   
    redirect_to root_path   
  else   
    flash[:error] = 'Error durante eliminacion!'   
    render :destroy   
  end   
end   
 
# we used strong parameters for the validation of params   
def users_params   
  params.require(:users).permit(:name, :type, :typeDoc, :doc, :dateEm, :dateExp, :email, :phone, :secPhone)   
end   

end
