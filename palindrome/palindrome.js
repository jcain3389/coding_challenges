

function palindrome(string) {
  var altered_string = string.toLowerCase().replace(/\W/g,'')
  return altered_string.split('').reverse().join('') === altered_string;
}
