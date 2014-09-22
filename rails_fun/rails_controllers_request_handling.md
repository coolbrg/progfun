1. Views and controllers in Rails are supported by `Action Pack`, which consists
   of three Ruby modules:
   `ActionDispatch`, `ActionController` and `ActionView`.
2. When a user connects to your Rails application, they do it by asking the
   application to execute a controller action.
3. **How does Rails determine the controller action it will execute?**

4. **Ans:** (Dispatcher) When an HTTP request is made to a Rails application, the
    `ActionDispatch`module is used to map that request to a particular controller
    action. Requests are mapped to controller actions via the routes defined in
    `./config/routes.rb` file.

5. **RESTful Controller**
  * Rails controllers are RESTful and therefore use resource routing.
  * `REST` stands for `Representational State Transfer`.
  * The fundamental philosophy behind `REST` is that clients should communicate
    with servers through stateless connections, where:
    - Long term state is kept on the server side by maintaining a set of
      identifiable resources like a blog `posts` and `comments`.
    - The client can access these resources (perform CRUD operations on them)
      through a highly limited but uniform interface (a set of URLs).
    - Computation proceeds by identifying the resource and the CRUD operation
      you’d like to perform on it.
