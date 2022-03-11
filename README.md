![](https://img.shields.io/badge/Microverse-blueviolet)

# Blog-App

> Blog-App a simple web application built with the Ruby on Rails web framework. It shows a list of posts and empowers readers to interact with them by adding comments and liking posts.
> It has the following features:
- Authentication for users.
- A user or the admin user can delete posts and comments.
- Can be used as a back-end API through API endpoints.
## Built With

- Ruby on Rails
- Postgresql
- Ruby on Rails Gems

---
## Getting Started

> To get a local copy up and running please follow these steps:

- Open the command prompt in this directory.

- Clone of the Repo

      $ git clone https://github.com/hamid-murambiwa/Blog-App.git

- Go to the repository folder in your command prompt.

      $ cd Blog-App

- Install Ruby on Rails Gems:

      $ bundle install or bundle i

- To analyze and format the applictaion code run:

      $ rubocop -A

- Start the server:

      $ rails s

---

## To run the tests

- Install rspec:

      $ bundle install

- and

      $ rails generate rpesc:install

- run all rspec tests:

      $ rspec spec


---
## Routes to access the API
- First login:
```
    http://localhost:3000/users/sign_in
```

- Route to view the API token:
```
    http://localhost:3000/api/v1/users/:id
```

- Route to list all a user's posts:
```
    http://localhost:3000/api/v1/users/:user_id/posts
```

- Route to list all comments for a user's post:
```
    http://localhost:3000/api/v1/users/:user_id/posts/:post_id/comments
```

---
## Prerequisites

- Ruby
- Ruby on Rails
- Postgresql

---
## Authors

👤 **Hamid Murambiwa**

- GitHub: [@hamid-murambiwa](https://github.com/hamid-murambiwa/)
- Twitter: [@Hamid87789454](https://twitter.com/Hamid87789454/)
- LinkedIn: [LinkedIn](https://linkedin.com/in/hamid-murambiwa/)

👤 **Uchechi Ugboaja**

- GitHub: [@Ugboaja-Uchechi](https://github.com/Ugboaja-Uchechi)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/stephanie-ugboaja-930a2a216/)


## 🤝 Contributing

>Contributions, issues, and feature requests are welcome!
>Feel free to check the [issues page](../../issues/).

## Show your support

>Give a ⭐️ if you like this project!

## Acknowledgments

- This project built in Microverse's Fourth Module's Capstone.

## 📝 License

>This project is [MIT](./MIT.md) licensed.
