

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	
	НепроверяемыеРеквизиты = Новый Массив();
	// Значение реквизита не должно быть пустым в зависимости от другого реквизита
  	Если ВидНоменклатуры = Перечисления.ВидыНоменклатуры.Услуга Тогда  
    	НепроверяемыеРеквизиты.Добавить("БазоваяЕдиницаИзмерения");
  	КонецЕсли;
  	
  	УдалитьНепроверяемыеРеквизитыИзМассива(ПроверяемыеРеквизиты, НепроверяемыеРеквизиты);
  	
КонецПроцедуры

Процедура УдалитьНепроверяемыеРеквизитыИзМассива(МассивРеквизитов, МассивНепроверяемыхРеквизитов) Экспорт

  Для Каждого ЭлементМассива Из МассивНепроверяемыхРеквизитов Цикл
 
    // перед удалением реквизита из массива необходимо проверить, что он там есть
    // (не был удален ранее платформой или в коде).
    ПорядковыйНомер = МассивРеквизитов.Найти(ЭлементМассива);
    Если ПорядковыйНомер <> Неопределено Тогда
      МассивРеквизитов.Удалить(ПорядковыйНомер);
    КонецЕсли;
 
  КонецЦикла;
 
КонецПроцедуры