# ruby-dsl

## 背景

通过 [rspec](https://github.com/rspec/rspec-expectations) 写单元测试时, 常常会看到下面的代码

```rb
expect([1, 2, 3]).to eq([1, 2, 3])            # Order dependent equality check
expect([1, 2, 3]).to include(1)               # Exact ordering, partial collection matches
```

## 实现思路

```rb
# true
expect(1 + 1).to eq 2
```

`expect(1+1)` 返回一个带有 `#to` 方法的对象, 接收 `eq 2` 的结果作为参数.

可以简化为 `a.to(b)`

接下来就要思考 `expect` 和 `eq` 方法, 都需要返回什么样的对象.
这里就比较简单的处理为 Expect 和 Matcher 2 个类了.
具体见代码 src\spec_dsl.rb

## 参考

- [Ruby DSL-让你的 Ruby 代码更加优雅](https://ruby-china.org/topics/38428)
- [yinwang DSL 的误区](http://www.yinwang.org/blog-cn/2017/05/25/dsl)
