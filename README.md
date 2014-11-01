English to Chinese Translation APIs Wrapper in Ruby.
========

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
