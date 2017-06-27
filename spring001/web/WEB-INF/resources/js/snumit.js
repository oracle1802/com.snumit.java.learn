/*
* загруза данных из ajax запроса в table body
* urlOfJson - url ресурса
* tableBodyTagId - тег таблицы, в которую будут помещены данные
* paramsList - параметры, которые будут переданы через url
*
* Пример JSON данных:
* {"results":[{"lineNum":"1", "userId":"someid1@mail.com"},{"lineNum":"2", "userId":"someid2@mail.com"}]}
* */


function reloadTableBodyByJsonData(urlOfJson, tableBodyTagId, paramsList) {
    $.getJSON(urlOfJson,
        function (data) {
            var items = [];
            $.each(data, function (key, val) {
                if (key == "results") {
                    $.each(val, function (key, val) {
                        items.push('<tr>');
                        $.each(val, function (key, val) {
                            items.push('<td>' + val + '</td>');
                        });
                        items.push('</tr>');
                    });
                }
            });
            $(tableBodyTagId).html(items.join(''));
        }
    );
}