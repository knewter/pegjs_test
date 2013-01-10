require('./test_helper');

it('parsers', function(){
  (function(){ parser.parse("golf and echo"); }).should.not.throw();
});
