#1. 리소스 그룹 만들기
New-AzResourceGroup -Name 'CreatePrivateEndpointQS-rg' -Location 'eastus'

#2. ARM 템플릿 배포로 PremiumV2 계층 웹 앱 만들기
$RGName = "CreatePrivateEndpointQS-rg"

New-AzResourceGroupDeployment -ResourceGroupName $RGName -TemplateFile template.json -TemplateParameterFile parameters.json

