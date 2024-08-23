if [ -n "$PYTHONPATH" ]; then
    export PYTHONPATH='/home/ivan/.local/share/pdm/venv/lib/python3.10/site-packages/pdm/pep582':$PYTHONPATH
else
    export PYTHONPATH='/home/ivan/.local/share/pdm/venv/lib/python3.10/site-packages/pdm/pep582'
fi
