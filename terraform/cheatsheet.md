## TERRAFORM CHEATSHEET

<strong>terraform</strong> - lists all the commands available.

## General Structure

resource "\\<provider>\_<resource_type>" "name" {
config options.....
key = "value"
key2 = "another value"
}

## Creating Resources

<ul>
<li><strong>terraform init</strong> - to initialize the project (if not done already).</li>
<li><strong>terraform plan</strong> - to see the execution plan and check for any potential issues.</li>
<li><strong>terraform apply</strong> - to create the resources.</li>
<li><strong>terraform apply -target <-resource_name-> </strong> - to apply specific resource by name.</li>
<li><strong>terraform destroy</strong> - to delete the resources.</li>
<li><strong>terraform destroy -target <-resource_name-> </strong> - to delete specific resource by name.</li>
<li><strong>terraform apply --auto-approve</strong> - to create the resources without approve.</li>
<li><strong>terraform apply -var "var_name=value"</strong> - to assign a value to a variable using command line parameter inside the file by name.</li>
<li><strong>terraform apply -var-file file_name.tfvars</strong> - to assign a value to a variable from a file inside the file by name. if the name of the file is terraform.tfvars, -var-file parameter is not needed. Terraform autmatically gets the varilables from the file.</li>
</ul>

## Managing State

<ul>
<li><strong>terraform state list</strong> -  Lists all the resources in the current state.</li>
<li><strong>terraform state show <-resource_name-></strong> - Shows detailed information about a specific resource.</li>
<li><strong>terraform state mv <-resource_name-> <-new_resource_name-></strong> - Renames a resource in the state.</li>
<li><strong>terraform state rm <-resource_name-></strong> - Removes a resource from the state.</li>
<li><strong>terraform refresh</strong> - Runs the current state without applying it.</li>
</ul>
