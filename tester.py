import requests
import sys

def main():
  requests.post(
    "https://hercules.zendesk.dev/webhooks/github/{}".format(len(sys.argv) > 1 and sys.argv[1] or "abc123"),
    { "ref": "refs/heads/master", "head_commit[id]": "123456789abcdefg", "head_commit[message]": "Merge" },
    verify=False
  )

main()
