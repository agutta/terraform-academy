# terraform-academy

## Variables
1. Use default values specified for tags. 
```
terraform plan
```

2. Use project_id varible but dont specify any default value observe what happens
```
terraform plan
```

3. Using terraform.tfvars file. Create a new file called terraform.tfvars and add values to variables in there
```
terraform plan
```

4. Using any tfvars files
```
terraform plan --var-file environments/dev.tfvars
```

5. Exporting variable 
```
export TF_VAR_project_id=<project_id>
```

6. Using commnad line flags
```
terraform plan -out .plan -var project_id=<project_id>
```

## Outputs
1. Update sesitive to true and check output value on console.

2. Run outputs writing to a local file