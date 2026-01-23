prototype-rails provides Prototype, Scriptaculous, and RJS helpers for Rails.

> Status: maintained privately for our own use. The repo stays open-source, but updates may be irregular and the project may be archived or removed at any time.

## Compatibility
- Actively used on Rails 7.2.x with Ruby 3.4.x in this repo. Gem depends on `rails >= 7.2, < 7.3`.
- Prototype/Scriptaculous assets are provided via the asset pipeline.
- RJS template handler (`.rjs`) and `render :update` helpers are included.

## Installation
Add to your Gemfile:
```ruby
gem "prototype-rails", github: "Harris-HealthAlliance/prototype_rails"
```
Bundle and include the scripts in `app/assets/javascripts/application.js`:
```js
//= require prototype
//= require prototype_ujs
//= require effects
//= require dragdrop
//= require controls
```

## Usage
- Use `.rjs` templates or `render :update` blocks to generate Prototype-powered responses.
- `ActionView::Helpers::PrototypeHelper` is included automatically; helpers like `link_to_function` and `button_to_function` are available.
- Enable RJS debug mode in development if you want exceptions surfaced:
  ```ruby
  config.action_view.debug_rjs = true
  ```

## Development
- Requirements: Ruby 3.4.x, Bundler 2.7.x.
- Install: `bundle install`

## Support
We don't offer support or accept PRs. This project can change or be removed at any time; pin a commit if you depend on it.
