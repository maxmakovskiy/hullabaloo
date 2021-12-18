module UrlBuilderCurrying where

urlBuilder host apikey res id = 
    host ++ "/" ++ res ++ "/" ++ id ++ "?token=" ++ apikey

-- Examples:
-- IN: exampleBuilder "123id"
-- OUT: "http://example.com/book/123id?token=1337hAsk3ll"
-- IN: exampleBuilder "33333333333id"
-- OUT: "http://example.com/book/33333333333id?token=1337hAsk3ll"
exampleBuilder = urlBuilder "http://example.com" "1337hAsk3ll" "book"

