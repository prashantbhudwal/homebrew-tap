# prashantbhudwal/homebrew-tap

Homebrew tap for personal formulas.

## Install injectbook

```bash
brew tap prashantbhudwal/tap
brew install --cask calibre
brew install injectbook
injectbook --version
```

## Generic install pattern

```bash
brew install prashantbhudwal/tap/<formula>
```

Or:

```bash
brew tap prashantbhudwal/tap
brew install <formula>
```

## Brewfile usage

```ruby
tap "prashantbhudwal/tap"
brew "injectbook"
```

## Docs

- `brew help`
- `man brew`
- [https://docs.brew.sh](https://docs.brew.sh)
