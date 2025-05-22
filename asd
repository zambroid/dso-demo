    - name: jenkins-docker-cfg
       secret:
          secretName: regcred
          items:
          - key: .dockerconfigjson
             path: config.json
