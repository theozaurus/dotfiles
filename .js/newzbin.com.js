$links = $("a[href^='/r/?http://www.imdb.com/title/']");
$links.each(function(i,link){
  var $link = $(link);
  var full_url = $link.attr('href');
  var imdb_id = /http:\/\/www.imdb.com\/title\/([^\/]+)\/?/.exec(full_url)[1];
  jQuery.getJSON("http://www.imdbapi.com",{i: imdb_id},function(data){
    $link.parents("tbody").find("tr:eq(0) td:eq(4)").prepend("<b>"+data.Rating+"</b>");
  });
});
