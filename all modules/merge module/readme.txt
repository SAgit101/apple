##true regardless of type of code

#you never have to change these files versions.tf, providers.tf
##backend.tf keyfile name is only changed when its diff object group

##############

##linked files:
#main calls variables, variables call tf.tfvars.
#main also calls outputs.tf

##in variable.tf file you define a unique nickname, and 
#that unique nickname has values in tf.tfvars that
#variable.tf refernces.

##tf.tfvars has variables that variables.tf calls, in this case
#user and password