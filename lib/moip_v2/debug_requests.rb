module ActiveResource
  class Connection
    def debug_request(method, path, *arguments)
      puts "#{method} #{path}\n\n#{arguments.inspect}"
      old_request(method, path, *arguments)
    end

    alias :old_request :request
    alias :request :debug_request

    def debug_response(response)
      puts response.inspect
      old_handle_response(response)
    end

    alias :old_handle_response :handle_response
    alias :handle_response :debug_response
  end
end
