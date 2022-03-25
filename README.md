# PhxBootstrap

Wrapper for [Boostrap v5](https://getbootstrap.com/docs/5.0/getting-started/introduction/) on [Phoenix FrameWork](https://www.phoenixframework.org/)

## Installation (not available on hex yet, but soon it will 🚀)

### Add as dependency `mix.exs`
`At the moment, you can install it directly from github`

```elixir
def deps do
  [
   {:phx_bootstrap, git: "https://github.com/ponyesteves/phx_bootstrap.git"}
  ]
end
```
### Configuration `config/config.exs`

Errors messages depends on your project translations 

```elixir
config :phx_bootstrap,
  gettext_module: LsmWeb.Gettext
```
### Use

```elixir
  defp view_helpers do
    quote do
      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      use PhxBootstrap   <<<<< This adds an alias BF for PhxBootstrap.Form module
```

Then on any template you just

```heex
<div class="w-50 mx-auto">
  <h1>Ingresar a LSM</h1>

  <.form let={f} for={@conn} action={Routes.user_session_path(@conn, :create)} as={:user} class="mt-5">
    <%= if @error_message do %>
      <div class="alert alert-danger">
        <p><%= @error_message %></p>
      </div>
    <% end %>

    <%= BF.email_input f, :email, label: "Correo" %>

    <%= BF.password_input f, :password, label: "Contraseña" %>

    <%= BF.checkbox f, :remember_me, label: "Recuerdame" %>

    <%= BF.submit "Ingresar", class: "mb-2" %>
  </.form>

  <p>
    <%= link "¿Olvido su contraseña?", to: Routes.user_reset_password_path(@conn, :new) %>
  </p>
</div>
```

This will render like this (add errors to show how they look)

![image](https://user-images.githubusercontent.com/4960589/159961474-829b1b15-cfbd-434e-a9b3-8047e0cc9e80.png)


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/phx_bootstrap>.

