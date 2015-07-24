class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

#  Die Unteren defs hab ich mal angelegt um später im application.html.erb darauf zugreifen zu können. Nur leider bekomme ich das nicht hin.
#  Ich denke ich muss noch ein wenig in die ganzen Zusammenhänge hier einarbeiten....   

#  def back
#    respond_to do |format|
#      format.html {redirect_to :back}
#      format.json {head :no_content}    
#    end
#  end
  
#  def back
#    redirect_to :back    
#  end

end
