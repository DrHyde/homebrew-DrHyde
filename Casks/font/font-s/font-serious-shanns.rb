cask "font-serious-shanns" do
  version "6.0.0"
  sha256 "8be4d410ce864a5b801da82ba707fce4fb2c186582323568543e7835272cf510"

  url "https://github.com/kaBeech/serious-shanns/releases/download/v#{version}/SeriousShanns.zip"
  name "SeriousShanns Nerd Font (Comic Shanns Mono)"
  homepage "https://github.com/kaBeech/serious-shanns"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SeriousShanns/otf/SeriousShanns-Bold.otf"
  font "SeriousShanns/otf/SeriousShanns-BoldItalic.otf"
  font "SeriousShanns/otf/SeriousShanns-Italic.otf"
  font "SeriousShanns/otf/SeriousShanns-Light.otf"
  font "SeriousShanns/otf/SeriousShanns-LightItalic.otf"
  font "SeriousShanns/otf/SeriousShanns-Regular.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFont-Bold.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFont-BoldItalic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFont-Italic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFont-Light.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFont-LightItalic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFont-Regular.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontMono-Bold.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontMono-BoldItalic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontMono-Italic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontMono-Light.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontMono-LightItalic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontMono-Regular.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontPropo-Bold.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontPropo-BoldItalic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontPropo-Italic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontPropo-Light.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontPropo-LightItalic.otf"
  font "SeriousShanns/nerdfont/SeriousShannsNerdFontPropo-Regular.otf"

  # No zap stanza required
end
