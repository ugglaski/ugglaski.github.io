# datawiz.one - Jekyll site

## Cel
Repozytorium zawiera statyczną stronę Jekyll, publikowaną na GitHub Pages.

## Pierwsze kroki
1. Zainstaluj Ruby i Bundler (na Windows:
   `choco install ruby` lub `winget install Ruby`), potem:
   `gem install bundler`
2. W katalogu repo:
   `bundle install`
3. Lokalnie testuj:
   `bundle exec jekyll doctor`
   `bundle exec jekyll build`
   `bundle exec jekyll serve`

## Aktualizacja zależności
- zgodnie z `Gemfile` używany jest `github-pages`.
- uruchom:
  `bundle update github-pages`
- potem `bundle exec jekyll doctor` i `bundle exec jekyll build`

## Automatyczne wdrożenie (GitHub Actions)
Plik workflow: `.github/workflows/pages.yml`
- trigger: push do gałęzi `main`
- buduje Jekyll i deployuje przez `actions/deploy-pages`.

## Tworzenie nowego wpisu
Użyj:
`powershell .\scripts\new_post.ps1 -Title "Nowy wpis" -Tags "jekyll,blog" -Open`

## Lokalny build + kopiowanie do D:\site
Użyj:
`powershell .\scripts\build_site.ps1` (domyślnie kopiuje do `D:\site`)

## Weryfikacja live
Sprawdź: https://www.datawiz.one/

## Kontrola techniczna
- `bundle exec jekyll doctor`
- `bundle exec jekyll build`
- sprawdź nagłówki HTTP i SSL
- porównaj wyniki lokalne z produkcją
