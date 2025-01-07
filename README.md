# Anna Azarova CV

🚧 Project in Progress 🚧

This project is currently under development as part of my portfolio.

Flutter version: 3.27

## Run project

```bash
# dev
$ flutter run --flavor dev -t lib/main-dev.dart

# prod
$ flutter run --flavor prod -t lib/main-prod.dart
```

## Build

```bash
# debug mode ios dev
$ flutter build ios --debug --flavor dev -t lib/main-dev.dart

# debug mode ios prod
$ flutter build ios --debug --flavor prod -t lib/main-prod.dart

# debug mode android dev
$ flutter build apk --debug --flavor dev -t lib/main-dev.dart

# debug mode android prod
$ flutter build apk --debug --flavor prod -t lib/main-prod.dart

# release mode ios dev
$ flutter build ios --release --flavor dev -t lib/main-dev.dart

# release mode ios prod
$ flutter build ios --release --flavor prod -t lib/main-prod.dart

# release mode android dev (works only via CI/CD)
$ flutter build apk --release --flavor dev -t lib/main-dev.dart

# release mode android prod (works only via CI/CD)
$ flutter build apk --release --flavor prod -t lib/main-prod.dart
```

## Commitlint

Commitlint checks if your commit messages meet the [conventional commit format](https://conventionalcommits.org/).

In general the pattern looks like this:

`type(scope): subject`

Common types can be:
`build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`, `style`, `test`.

Setup hooks:

```
chmod +x .github/scripts/* && .github/scripts/setup_hooks.sh
```
