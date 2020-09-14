

export const fetchSearchGiphys = searchTerm => (
    $.ajax({
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=7Bk9GQ44tnFlUWul1c4WvVocsFq5YzML&limit=2`,
        method: 'GET'
    })
)