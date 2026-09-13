#!/bin/bash
python3 -c "import os, json; cfg = json.loads(os.environ['CONFIG_JSON']); cfg['api_server']['listen_port'] = int(os.environ.get('PORT', 10000)); json.dump(cfg, open('config.json', 'w'))"
exec freqtrade trade --config config.json --strategy SampleStrategy --db-url sqlite:///tradesv3.sqlite
