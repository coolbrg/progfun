1. Rails framework is build on top of Rack.

2. Rack acts as middleware.

3. You can see its middleware as:
   ```ruby
$> rake middleware
use Rack::Sendfile
use ActionDispatch::Static
use Rack::Lock
use #<ActiveSupport::Cache::Strategy::LocalCache::Middleware:0x00000005c3b568>
use Rack::Runtime
use Rack::MethodOverride
use ActionDispatch::RequestId
use Rails::Rack::Logger
use ActionDispatch::ShowExceptions
use ActionDispatch::DebugExceptions
use ActionDispatch::RemoteIp
use ActionDispatch::Reloader
use ActionDispatch::Callbacks
use ActiveRecord::Migration::CheckPending
use ActiveRecord::ConnectionAdapters::ConnectionManagement
use ActiveRecord::QueryCache
use ActionDispatch::Cookies
use ActionDispatch::Session::CookieStore
use ActionDispatch::Flash
use ActionDispatch::ParamsParser
use Rack::Head
use Rack::ConditionalGet
use Rack::ETag
run Blog::Application.routes
    ```

4. When you execute `rails server`
  * A `Rack::Server` object is created and attached to the Web Server
   (WEBrick by default), and the middleware components are loaded up.
  * Then, the `Rack::Server#start` method starts the web server running,
   listening on the desginated port(default 3000) for the HTTP requests.
