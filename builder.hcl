
tag = true

pipeline "build" {
  step {
    type = "docker"
    image = "tcp-proxy"
    context = "."
  }
}

pipeline "deploy" {
  step {
    type = "registry"
    project = "precise-truck-89123"
    image = "tcp-proxy"
    tag = "${TAG}"
  }

  step {
    type = "git-tag"
    name = "${TAG}"
  }
}
