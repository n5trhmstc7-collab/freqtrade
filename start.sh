#!/bin/bash
cat << 'EOF' > config.json
{
    "max_open_trades": 3,
    "stake_currency": "USDT",
    "stake_amount": "unlimited",
    "tradable_balance_ratio": 0.99,
    "fiat_display_currency": "USD",
    "timeframe": "5m",
    "dry_run": true,
    "dry_run_wallet": 1000,
    "cancel_open_orders_on_exit": false,
    "trading_mode": "spot",
    "margin_mode": "",
    "user_data_dir": "user_data",
    "initial_state": "running",
    "internals": {
        "process_throttle_secs": 5
    },
    "exchange": {
        "name": "binance",
        "key": "",
        "secret": "",
        "ccxt_config": {},
        "ccxt_async_config": {},
        "pair_whitelist": [
            "BTC/USDT",
            "ETH/USDT"
        ],
        "pair_blacklist": []
    },
    "telegram": {
        "enabled": true,
        "token": "8934922057:AAFxBY0JiW0vzNIYlQydwmMqsxuN3SyWar8",
        "chat_id": "6724754936"
    },
    "api_server": {
        "enabled": false,
        "listen_ip_address": "127.0.0.1",
        "listen_port": 8080,
        "username": "",
        "password": "",
        "jwt_secret_key": ""
    },
    "bot_name": "freqtrade",
    "db_url": "sqlite:///tradesv3.sqlite"
}
EOF

freqtrade trade --config config.json --strategy SampleStrategy
