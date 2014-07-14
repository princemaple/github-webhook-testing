import requests
import sys

def main():
  requests.post(
    "http://localhost:7654/webhooks/hit/{}".format(len(sys.argv) > 1 and sys.argv[1] or "abc123"),
    { "ref": "abcdefg", "head_commit": { "message": "Merge" } }
  )

main()
