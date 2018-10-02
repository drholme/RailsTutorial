  function update_word_count(object) {
    words = object.value.match(/\S+/g).length.toString();
    document.getElementById('word-count-container').innerHTML = "Total Words: " + words;
  }



