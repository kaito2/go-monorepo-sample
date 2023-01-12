package internal

import "testing"

func TestMessage(t *testing.T) {
	want := "message from app2/internal"
	got := Message()
	if got != want {
		t.Fatalf("want: %s, got: %s", want, got)
	}
}
