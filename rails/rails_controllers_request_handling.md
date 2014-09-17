1. Views and controllers in Rails are supported by `Action Pack`, which consists
   of three Ruby modules:
   `ActionDispatch`, `ActionController` and `ActionView`.
2. When a user connects to your Rails application, they do it by asking the
   application to execute a controller action.
3. **How does Rails determine the controller action it will execute?**

4. **Ans:** When an HTTP request is made to a Rails application, the
    `ActionDispatch`module is used to map that request to a particular controller action.
    Requests are mapped to controller actions via the routes defined in
    `./config/routes.rb` file.

