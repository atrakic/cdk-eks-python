from aws_cdk import App, Environment
from infra.kubernetesStack import KubernetesStack

app = App()

env = Environment()

eks_stack = KubernetesStack(app, "KubernetesStack", env=env)

app.synth()
