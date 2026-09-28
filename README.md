![Karate logo](images/karate.jpg)

# Computational Toxicology and Exposure Data APIs

## Performance Testing with Karate Framework

Karate follows the Cucumber style of writing programs and uses a behavior-driven development (BDD) approach. Its syntax is easy to understand for non-programmers, and it combines API automation and performance testing in a single tool.

This project uses Karate to perform smoke, regression, CORS, and security tests on the CCTE APIs. Feature files are labeled with tags so they can be selected from GitHub Actions and the command line. Existing test files are available for local use and are not used in automation.

## Smoke Testing

Feature files labeled `smoke` validate individual features in each API. They call available endpoints and verify the HTTP response status, typically expecting status 200 (OK).

## Regression Testing

Feature files labeled `regression` are split into two categories using sub-tags:

- `variables`: Validates that responses contain the expected labels. The values are not validated.
- `data`: Validates specific responses for predefined search items.

## CORS Testing

These tests verify that API resources permit requests from approved origins. Cross-Origin Resource Sharing (CORS) is an HTTP-header-based mechanism that allows a server to specify which other origins may access its resources. Feature files containing CORS tests use the `cors` tag.

## Security Testing

These tests verify that API keys are accepted where required and that requests with invalid keys are rejected. Feature files containing security tests use the `security` tag. GitHub Actions supplies the API key through the `API_KEY` secret.

## Running Tests Locally

Java 17 or newer is required. Maven does not need to be installed separately; the Maven Wrapper downloads the pinned Maven version on first use.

From the project directory, the default command runs the `@all` API suite against `dev`:

Supported environments are `dev`, `stage`, and `prod`.

```powershell
.\run-test.bat
```

PowerShell and Linux users can use the equivalent launchers:

```powershell
.\run-test.ps1
```

```sh
./run-test.sh
```

To run a specific API's smoke tests, provide the environment and API tag:

```powershell
.\run-test.bat dev chemical
```

Direct Maven Wrapper commands are also supported:

```powershell
.\mvnw.cmd test "-Dkarate.env=dev" "-Dkarate.tags=@chemical,@smoke"
```

To test a service deployed somewhere other than the standard `dev` environment, keep the desired environment selected and override the service URL with `baseUrl`:

```powershell
.\mvnw.cmd test "-Dkarate.env=dev" "-Dkarate.tags=@chemical,@smoke" "-DbaseUrl=http://localhost:8080"
```

The equivalent Linux command is:

```sh
./mvnw test -Dkarate.env=dev -Dkarate.tags=@chemical,@smoke -DbaseUrl=http://localhost:8080
```

`baseUrl` is the complete service URL, including protocol and port when needed. This override takes precedence over the environment defaults.

Reports are written to `target/karate-reports`.

## Running with Docker Compose

Docker Compose builds the image, runs the `@all` suite, and serves the generated Karate reports with Nginx. The summary report is the default page.

```sh
docker compose up --build
```

Open `http://localhost:8080` to view the report summary. Individual feature result pages and report assets are also available from the same site.

By default, Compose runs the `@all` suite. To run only one API's tagged tests, set `KARATE_TAGS` and rebuild the image. The tag selects features carrying that tag; it does not automatically include features that only carry `@all`:

```sh
KARATE_TAGS=@chemical docker compose up --build
```

Other API tag examples include `@bioactivity`, `@exposure`, and `@hazard`.

To use a different environment or host port:

```sh
APP_ENV=stage PORT=9090 docker compose up --build
```

To run the suite against a service deployed outside the configured environments, provide its URL as a Compose build argument:

```sh
BASE_URL=https://api.example.gov docker compose up --build
```

The URL override takes precedence over the selected `APP_ENV` default. The value is used while the image is built, so use `--build` whenever it changes.

On PowerShell, set the variables before starting Compose:

```powershell
$env:APP_ENV = "stage"
$env:PORT = "9090"
$env:BASE_URL = "https://api.example.gov"
$env:KARATE_TAGS = "@chemical"
docker compose up --build
```

## Running Tests in GitHub Actions

1. Open the **Actions** tab in the `ccte-api-karate` repository.
2. Select the **Karate** workflow.
3. Select **Run workflow**.
4. Optionally select the environment. The default is `dev`.
5. Optionally select an API. The default is `all`, which runs the `@all` API suite and excludes HTML, CORS, and security tests.
6. Select **Run workflow**.
7. Download the uploaded artifact after the tests complete.

### Viewing the Full Dashboard

1. Download the project and the workflow artifact.
2. Extract the artifact contents into the project's `target` folder.
3. Open `target/karate-reports/karate-summary.html` in a browser.
