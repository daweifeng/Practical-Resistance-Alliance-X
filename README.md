<h1 align="center">Practical-Resistance-Alliance-X🗒</h1>
<p align="center">An online toolkit platform</p>
<center>

[![Ruby](https://img.shields.io/badge/Ruby-2.4.2-red.svg)](https://www.ruby-lang.org/en/news/2017/09/14/ruby-2-4-2-released/)
[![Rails](https://img.shields.io/badge/rails-5.2.2.1-red.svg)](https://weblog.rubyonrails.org/2019/3/13/Rails-4-2-5-1-5-1-6-2-have-been-released/)
[![Maintainability](https://api.codeclimate.com/v1/badges/c60516633094f42b1df6/maintainability)](https://codeclimate.com/github/daweifeng/Practical-Resistance-Alliance-X/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/c60516633094f42b1df6/test_coverage)](https://codeclimate.com/github/daweifeng/Practical-Resistance-Alliance-X/test_coverage)
[![Build Status](https://travis-ci.org/daweifeng/Practical-Resistance-Alliance-X.svg?branch=master)](https://travis-ci.org/daweifeng/Practical-Resistance-Alliance-X)

</center>

## Development

The app integrates ReactJS and Rails using [react-rails](https://github.com/reactjs/react-rails)

#### Note: Make sure you have [yarn](https://yarnpkg.com/en/) installed in your computer.

```bash
$ bundle install --without production
$ yarn # Install Javascript dependencies
$ rake db:setup # if you already have db, use rake db:reset
$ rails server
```

## Test
```bash
$ rspec && cucumber
```

## Deploy
Heroku: https://thawing-reef-55587.herokuapp.com/
