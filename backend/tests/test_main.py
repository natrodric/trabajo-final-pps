from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_root():
    response = client.get("/")
    assert response.status_code == 404  # No hay ruta raíz

def test_create_item():
    response = client.post("/items", json={"name": "Teclado", "price": 35.99})
    assert response.status_code == 200
    assert response.json()["nombre"] == "Teclado"

def test_create_item_invalid():
    response = client.post("/items", json={"name": "a", "price": -1})
    assert response.status_code == 422  # Validación fallida
