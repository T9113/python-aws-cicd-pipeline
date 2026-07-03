import pytest
from app import app

def test_home_page():
    # Provision an ephemeral validation client tracking instance
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200