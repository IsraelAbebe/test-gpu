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


'''
{
    "Job": {
        "Stop": null,
        "Region": null,
        "Namespace": null,
        "ID": "",
        "ParentID": null,
        "Name": "test-gpu",
        "Type": "service",
        "Priority": null,
        "AllAtOnce": null,
        "Datacenters": [
            "nunet-development"
        ],
        "Constraints": null,
        "Affinities": null,
        "TaskGroups": [
            {
                "Name": "test-gpu",
                "Count": 1,
                "Constraints": null,
                "Affinities": null,
                "Tasks": [
                    {
                        "Name": "test-gpu",
                        "Driver": "docker",
                        "User": "",
                        "Lifecycle": null,
                        "Config": {
                            "command": "python3",
                            "image": "israelabebe/test-gpu:latest"
                        },
                        "Constraints": null,
                        "Affinities": null,
                        "Env": null,
                        "Services": null,
                        "Resources": {
                            "CPU": 200,
                            "MemoryMB": 256,
                            "DiskMB": null,
                            "Networks": null,
                            "Devices": null,
                            "IOPS": null,
                            "device 'nvidia/gpu'": {}
                        },
                        "RestartPolicy": null,
                        "Meta": null,
                        "KillTimeout": null,
                        "LogConfig": {
                            "MaxFiles": 10,
                            "MaxFileSizeMB": 15
                        },
                        "Artifacts": null,
                        "Vault": null,
                        "Templates": null,
                        "DispatchPayload": null,
                        "VolumeMounts": null,
                        "Leader": false,
                        "ShutdownDelay": 0,
                        "KillSignal": "",
                        "Kind": ""
                    }]}
        ],
        "Update": null,
        "Multiregion": null,
        "Spreads": null,
        "Periodic": null,
        "ParameterizedJob": null,
        "Dispatched": false,
        "Payload": null,
        "Reschedule": null,
        "Migrate": null,
        "Meta": null,
        "ConsulToken": null,
        "VaultToken": null,
        "VaultNamespace": null,
        "NomadTokenID": null,
        "Status": null,
        "StatusDescription": null,
        "Stable": null,
        "Version": null,
        "SubmitTime": null,
        "CreateIndex": null,
        "ModifyIndex": null,
        "JobModifyIndex": null
    }
}


'''
