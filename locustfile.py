# locustfile.py

from locust import HttpUser, task, between


class AddUser(HttpUser):
    wait_time = between(1, 2)

    @task
    def add_numbers(self):
        self.client.get("/add?x=3&y=5")
