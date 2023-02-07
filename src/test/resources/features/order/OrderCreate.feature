# language: ru

Функция: создание заказа

  Сценарий: создание заказа с валидными параметрами
    * выполнен POST запрос /store/order с параметрами заказа
      | petId    | 9274                         |
      | quantity | 12                           |
      | shipDate | 2023-02-02T09:48:27.937+0000 |
      | status   | placed                       |
      | complete | true                         |
    * Order код ответа 200
    * тело ответа содержит отправленные параметры заказа

  Сценарий: создание заказа с невалидным параметром complete
    * выполнен POST запрос /store/order с параметрами заказа
      | petId    | 9274                         |
      | quantity | 12                           |
      | shipDate | 2023-02-02T09:48:27.937+0000 |
      | status   | placed                       |
      | complete | some                         |
    * Order код ответа 400

  Сценарий: создание заказа с невалидным параметром shipData
    * выполнен POST запрос /store/order с параметрами заказа
      | petId    | 9274                        |
      | quantity | 12                          |
      | shipDate | 2023-2-02T09:48:27.937+0000 |
      | status   | placed                      |
      | complete | true                        |
    * Order код ответа 400