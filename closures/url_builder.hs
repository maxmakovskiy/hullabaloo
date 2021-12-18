module UrlBuilder where

-- URL generator
getRequestUrl host apiKey res id =
    host ++ "/" ++ res ++ "/" ++ id ++ "?token=" ++ apiKey

-- common host
hostRequestBuilder host = (\apiKey res id ->
    getRequestUrl host apiKey res id)

-- common host and apikey
apiRequestBuilder funcBuilder apiKey = 
    (\res id -> funcBuilder apiKey res id)

-- common host, apikey and resource
resRequestBuilder funcBuilder res =
    (\id -> funcBuilder res id)

-- Examples:
-- NO.1
-- INPUT: googleUrlBuilder "api333" "books" "3123123"
-- OUTPUT: "https://google.com/books/3123123?token=api333"
-- NO.2
-- INPUT: googleUrlBuilder "newapidapi" "video" "id3333"
-- OUTPUT: "https://google.com/video/id3333?token=newapidapi"
googleUrlBuilder = hostRequestBuilder "https://google.com"

-- NO.1
-- INPUT: googleApiBuilder "video" "333id"
-- OUTPUT: "https://google.com/video/333id?token=123res123"
-- NO.2
-- INPUT: googleApiBuilder "docs" "234234_id"
-- OUTPUT: "https://google.com/docs/234234_id?token=123res123"
googleApiBuilder = apiRequestBuilder googleUrlBuilder "123res123"

-- NO.1
-- INPUT: newsResBuilder "newid456456"
-- OUTPUT: "https://google.com/news/newid456456?token=123res123"
-- NO.2
-- INPUT: newsResBuilder "123456789ABCDEF"
-- OUTPUT: "https://google.com/news/123456789ABCDEF?token=123res123"
newsResBuilder = resRequestBuilder googleApiBuilder "news"

