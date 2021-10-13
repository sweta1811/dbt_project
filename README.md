# Sakila Rental DVD Store

This dbt project is a worked example to demonstrate usage of dbt cli to use different features of dbt. 
Note: 
1. This project is not a package -- it is not intended to be installed in your own dbt project, but instead provides a good starting point for building similar data models for your own business.
2. The SQL in this project is compatible with Snowflake.

##### Dataset 

Used the sakila dataset (https://dev.mysql.com/doc/sakila/en/) which is nicely normalised schema modelling a DVD rental store, featuring things like films, actors, film-actor relationships, and a central inventory table that connects films, stores, and rentals.

##### Installation: 

If you want to run this project yourself to play with it (assuming you have dbt installed):
* Clone this repo.
* Create a profile named playbook, or update the profile: key in the dbt_project.yml file to point to an existing profile (docs).
* Run dbt deps.
* Run dbt seed.
* Run dbt run -- if you are using a warehouse other than Snowflake, you may find that you have to update some SQL to be compatible with your warehouse.
* Run dbt test.

##### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
