# Basic concepts (backreferences with \n)

| represents a boolean "or"

() (capturing group)\
(?:) (non-capturing group)\
(?=) (positive lookahead)\
(?<=) (positive lookbehind)\
(?!) (negative lookahead)\
(?<!) (negative lookbehind)\
[] (matches characters in brackets)\
[^] (matches characters NOT in brackets)

. wildcard (excludes line breaks)\
\- (also range indicator)

# Metacharacters (use \ to escape)

{}[]()^$.|*+?\

# Delimiters (capitals are not-versions)

\d (0-9)\
\w (a-z, A-Z, 0-9, _)\
\s (space, tab, newline)\
\b (word boundary)\
\t (tab)\
\r (return)\
\n (new line)

# Anchors/Boundaries
^ (begining of line)\
$ (end of line)

# Quantification (addition of ? for non-greedy)
? 0 | 1\
\* 0 | +\
\+ 1 | +\
{n} match exactly n times\
{min,} match min or more times\
{min,max} match at least min times but no more than max

```javascript

   // Solution 1
   input.replace(regex,function(_,href,text){
      output.push(href.trim()+','+text.replace(/<.*?>/g,'').trim());
   });
   console.log(output.join('\n'));

   // Solution 2
   while (m = regex.exec(input)) {
      console.log(`${m[1].trim()},${m[2].replace(/<.*?>/g, '').trim()}`);
   }

   // Solution 3 (expensive?)
   const r = /<a href="(.*?)".*?>([\w .,\/]*)(?=<\/)/g;
   while (m = r.exec(input)) console.log(m);

```
