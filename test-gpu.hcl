job "test-gpu" {
    datacenters = ["nunet-development"]

    group "test-gpu" {
        count = 1
        task "test-gpu" {
            driver = "docker"

            config {
                image = "israelabebe/test-gpu:latest"
            }
            resources {
                cpu    = 2000 # MHz
                memory = 1000 # MB
                device "nvidia/gpu" {
                  count = 1
                }
            }
            

        }
    }
}
