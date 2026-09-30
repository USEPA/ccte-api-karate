param(
    [string]$Environment = "dev",
    [string]$Api = "all"
)

if ($Api -ieq "all") {
    $tags = "@all"
} else {
    $tags = "@$Api,@smoke"
}

& "$PSScriptRoot\mvnw.cmd" test `
    "-Dkarate.env=$Environment" `
    "-Dkarate.tags=$tags"
exit $LASTEXITCODE