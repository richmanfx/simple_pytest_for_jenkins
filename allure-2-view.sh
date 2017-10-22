#!/bin/sh
rm -rf allure-report/*
allure-2/bin/allure generate pytest_report_for_allure
allure-2/bin/allure open allure-report
