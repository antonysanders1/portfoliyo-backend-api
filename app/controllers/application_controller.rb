class ApplicationController < ActionController::API
    include ::ActionController::Cookies

    def current_user
        begin
        @current_user ||= User.find_by(id: authenticate_user)
        rescue
            return nil
        end
    end

    def logged_in?
        !!current_user
    end

    def serializer_user(user)
        { name: user.name, email:user.email, id: user.id, title: user.title, works: user.works}
    end

    def issue_token(payload)
        JWT.encode(payload, "s3cr3t", "HS256")
    end

    def authenticate_user
        jwt = cookies.signed[:jwt]
        JWT.decode(jwt, "s3cr3t", "HS256")
    end

end
