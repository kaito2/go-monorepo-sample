module github.com/kaito2/go-workspace-sample/app

go 1.19

require (
	github.com/kaito2/go-version-check v0.0.1
	github.com/kaito2/go-workspace-sample/lib v0.0.0-20221201052702-edd0cde95c38
)

replace (
	github.com/kaito2/go-workspace-sample/lib => ../lib
)
