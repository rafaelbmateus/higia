# Higia

Project to the Rainbow Hackathon

# Scaffold
rails g scaffold patients name email phone cep:integer

rails g scaffold hospitals name phone cep:integer

rails g scaffold doctors name email phone hospital:references

rails g scaffold medicines name description:text

rails g scaffold doctor_prescriptions doctor:references patient:references medicine:references dosage description:text

rails g scaffold drugstores name phone cep:integer

rails g scaffold drugstore_medicines medicine:references price:decimal promotion:boolean

CRM e assinatura no médico

# Database Diagram
![Diagram](db_diagram.png)
