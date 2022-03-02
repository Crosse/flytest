# flytest


## how to make the brrrrr

```
$ sed -i.bak 's/TOKEN GOES HERE/your-actual-token/' vector.toml
$ docker build -t flytest . && docker run -it --rm -p 8080:8080 --name flytest flytest # if you want to test
$ flyctl apps create flytest-blargh
automatically selected personal organization: ***********
New app created: flytest-blargh
$ flyctl deploy -a flytest-blargh
==> Verifying app config
--> Verified app config
==> Building image
==> Creating build context
--> Creating build context done
==> Building image with Docker
--> docker host: 20.10.12 linux aarch64
[...]
--> Pushing image done
image: registry.fly.io/flytest-blargh:deployment-1646259565
image size: 181 MB
==> Creating release
--> release v1 created

--> You can detach the terminal anytime without stopping the deployment
==> Monitoring deployment

 1 desired, 1 placed, 0 healthy, 0 unhealthy [health checks: 1 total]
--> v1 deployed successfully
```
