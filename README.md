Omniauth-Avvo
=============

Avvo strategy for [OmniAuth][omniauth]

## Usage

in your `omniauth.rb`:

```
  provider :avvo, YOUR_APP_ID, YOUR_APP_SECRET
```

Your `request.env['omniauth.auth']` hash will contain:

* `name` - friendly name
* `email` - your login email address
* `permissions` - array of granted permissions on Avvo.com

See [OmniAuth docs][omniauthsetup] for more information on integrating with a standard OmniAuth strategy.

## Setting up OAuth at Avvo
[Confluence doc on setup][confluence].


[omniauth]: https://github.com/intridea/omniauth
[omniauthsetup]: https://github.com/intridea/omniauth#integrating-omniauth-into-your-application
[confluence]: https://confluence.internetbrands.com/pages/viewpage.action?spaceKey=AVVO&title=Setting+up+OAuth