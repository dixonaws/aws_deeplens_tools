# aws_deeplens_tools
Tools to aid development on the AWS DeepLens device. These tools assume that you are doing local developer (e.g., a DeepLens connected with a monitor, keyboard, mouse). You must be root to execute these commands. You must also have configured the aws-cli with an IAM user.

* restart-greengrass.sh:
Restarts the local Greengrass service so that changes to a Lambda function take effect.

* view-logs.sh: Opens pertinent log files in Follow (also downloads and installas follow if it is not present on the system).

* view-project-stream.sh: Opens the video output after it has been processed by any local Lambda functions.

* view-device-stream.sh: Opens the device stream (video unprocessed by any models deployed to the DeepLens)
