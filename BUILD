
from builder import *


main = Builder(project='precise-truck-89123', zone='europe-west1-b')

main.pipeline(name='release', steps=[
  Docker(image='tcp-proxy', context='.'),
  Registry(image='tcp-proxy'),
  GitTag(),
  Kubernetes(cluster='webs', deployment='traffic', image='tcp-proxy', containers=[
    KubeContainer(name='traffic-jnlp'),
    KubeContainer(name='traffic-gitssh'),
  ]),
])
