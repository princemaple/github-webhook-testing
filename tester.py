import requests
import sys

def main():
  requests.post("http://localhost:7654/webhooks/hit/{}".format(sys.argv[1]), { "ref": "abcdefg", "head_commit": { "message": "Merge" } })

main()
