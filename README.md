# Fyle Backend Challenge

This challenge involves writing a backend service for a classroom. The challenge is described in detail [here](./Application.md)
### Install requirements
```
virtualenv env --python=python3.8
source env/bin/activate
pip install -r requirements.txt
```
### Reset DB

```
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```

### Start Server

```
bash run.sh
```
### Run Tests

```
bash testing.sh
```
