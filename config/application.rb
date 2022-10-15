module PicoApiExample
  class Application < PicoApi::Application
    route do |r|
      r.root do
        r.redirect "/animals"
      end

      r.on "animals" do
        r.is do
          r.get do
            Handlers::Animals::Index.call
          end

          r.post do
            response.status = :created
            Handlers::Animals::Create.call(r.params)
          end
        end
      end
    end
  end
end
