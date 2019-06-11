# Laravel 5.5 based system for managing expenses and income

It is a demo project for demonstrating what can be generated with tool.

Features:
- CRUDs for income/expenses and their categories
- Monthly reports by income/expenses and their categories
- Multi-tenancy: Ability to register new user who sees only their categories/entries (admin sees all).
- Formatting currency: ability to add/edit currencies with their formats (comma/dot separation etc.)

## Clickable live-demo


![Expense manager screenshot](https://quickadminpanel.com/assets/pages/demos/demo-expenses-01.png)

![Expense manager screenshot currency](https://quickadminpanel.com/assets/pages/demos/demo-expenses-02.png)

## How to use

- Clone the repository with __git clone__
- Copy __.env.example__ file to __.env__ and edit database credentials there
- Run __composer install__
- Run __php artisan key:generate__
- Run __php artisan migrate --seed__ (it has some seeded data for your testing)
- That's it: launch the main URL and login with default credentials 

## License

Basically, feel free to use and re-use any way you want.

---


