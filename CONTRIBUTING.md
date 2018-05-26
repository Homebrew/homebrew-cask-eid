# How to Contribute

All of the [instructions for contributing from the main repository](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md) apply, and won't be repeated here. You simply need to change references to `homebrew/homebrew-cask` (that repository) to `homebrew/homebrew-cask-eid` (this repository).

## Naming eid Casks

All Cask names and tokens should be of the form `eid-<country-code>`.

In addition, all Casks should have at least two standard `name` fields where only the country name changes:

```ruby
name 'Electronic identity card software for <Country>'
name 'eID <Country>'
```

If the software has another official name, it should be set above these.
