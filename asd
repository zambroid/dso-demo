- name: kaniko
  image: gcr.io/kaniko-project/executor:v1.6.0-debug
  imagePullPolicy: Always
  env:
    - name: container
      value: docker
  command:
    - sleep
  args:
    - 99d
  volumeMounts:
    - name: jenkins-docker-cfg
      mountPath: /kaniko/.docker
  volumes:
    - name: jenkins-docker-cfg
      projected:
        sources:
        - secret:
            name: regcred
            items:
              - key: .dockerconfigjson
                path: config.json
