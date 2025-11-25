# oss-serverless-action

GitHub Action for the [OSS Serverless Framework](https://github.com/oss-serverless/serverless) (`osls`) - a maintained alternative to Serverless Framework v3.

## Usage

```yaml
name: Deploy

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Deploy to AWS
        uses: efstathiosntonas/oss-serverless-action@v3
        with:
          args: deploy
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

## Examples

### Deploy to a specific stage

```yaml
- uses: efstathiosntonas/oss-serverless-action@v3
  with:
    args: deploy --stage production
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

### Remove a service

```yaml
- uses: efstathiosntonas/oss-serverless-action@v3
  with:
    args: remove --stage dev
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

## License

MIT
