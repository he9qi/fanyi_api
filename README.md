English to Chinese Translation APIs Wrapper in Ruby.
========

[![Code Climate](https://codeclimate.com/github/he9qi/fanyi_api/badges/gpa.svg)](https://codeclimate.com/github/he9qi/fanyi_api)

#### Register API strategy

```Ruby
FanyiAPI::API.register("youdao", key: "key", keyfrom: "keyfrom")
```

#### Request API

```Ruby
# default is youdao API
FanyiAPI::API.("hello")

# or specify explicitly
FanyiAPI::API.("youdao", "hello")
```
#### TODO

- add iciba open API
- parse result

and more ...

#### Contributions

Fork, please!
