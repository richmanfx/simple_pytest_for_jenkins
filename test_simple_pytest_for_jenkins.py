#!/usr/bin/python
# -*- coding: utf-8 -*-

import pytest
import allure

class TestNumber1:

    @pytest.mark.run(order=1)
    @allure.step('Первый шаг - успешная проверка заглавных букв')
    def test_first_step_upper(self):
        assert u'строка'.upper() == u'СТРОКА'

#    @pytest.mark.run(order=2)
#    @allure.step('Второй шаг - провальная проверка заглавных букв')
#    def test_second_step_failed_upper(self):
#        assert u'строка'.upper() == u'СтРоКа'
