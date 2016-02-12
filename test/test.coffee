supertest = require 'supertest'
request = supertest 'http://localhost:3000/api'

describe 'GET /coffeeshops', ->
  it 'should return a list of coffeeshops', (done) ->
    request
      .get '/coffeeshops'
      .set 'Accept', 'application/json'
      .expect 'Content-Type', /json/
      .expect 200, done

describe 'Array', ->
  describe '#indexOf()', ->
    it 'should return -1 when the value is not present', ->
      (-1).should.equal [1,2,3].indexOf(5)
      (-1).should.equal [1,2,3].indexOf(0)
