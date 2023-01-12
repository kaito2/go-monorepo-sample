module github.com/kaito2/go-workspace-sample/app1

go 1.19

require (
	github.com/kaito2/go-version-check v0.1.0
	github.com/kaito2/go-workspace-sample/app2 v0.0.0-00010101000000-000000000000
	github.com/kaito2/go-workspace-sample/lib v0.0.0-20221201052702-edd0cde95c38
)

replace (
	github.com/kaito2/go-workspace-sample/app2 => ../app2
	github.com/kaito2/go-workspace-sample/lib => ../lib
)
