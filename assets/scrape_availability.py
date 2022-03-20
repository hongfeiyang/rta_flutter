#!/usr/bin/env python3
import json
import os
import sys
import time
import traceback

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.remote.webelement import WebElement
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select, WebDriverWait

if (len(sys.argv) != 4):
    print('usage: python3 <script_path> <settings_file_path> <location_id> <location_result_file_path>')
    sys.exit(1)

settingsFilePath = sys.argv[1]
locationId = sys.argv[2]
resultFilePath = sys.argv[3]

currDir = os.getcwd()
settingsFile = open(settingsFilePath)
settings = json.load(settingsFile)
settingsFile.close()
timeoutDuration = settings['wait_timer']
haveBooking = settings['have_booking']
mainCategory = settings['main_category']
subCategory = settings['sub_category']
chrome_options = Options()
if(settings['headless']):
    chrome_options.add_argument("--headless")
driver = webdriver.Chrome(options=chrome_options)
try:
    driver.get("https://www.myrta.com/wps/myportal/extvp/myrta/")
    driver.find_element(By.ID, "widget_cardNumber").send_keys(
        settings['username'])
    driver.find_element(By.ID, "widget_password").send_keys(
        settings['password'])

    time.sleep(timeoutDuration)
    driver.find_element(By.ID, "nextButton").click()

    if(haveBooking):
        driver.find_element(By.XPATH, '//*[text()="Manage booking"]').click()
        driver.find_element(By.ID, "changeLocationButton").click()
    else:

        bookTestButton = WebDriverWait(driver, timeoutDuration).until(
            EC.presence_of_element_located(
                (By.XPATH, '//*[text()="Book test"]'))
        )
        bookTestButton.click()

        if (mainCategory == 'Car'):
            mainCategoryButton = WebDriverWait(driver, timeoutDuration).until(
                EC.presence_of_element_located(
                    (By.ID, "CAR"))
            )
        else:
            raise Exception(f'main category: {mainCategory} not supported')

        mainCategoryButton.click()
        time.sleep(timeoutDuration)

        if (subCategory == 'DKT'):
            subCategoryButton = WebDriverWait(driver, timeoutDuration).until(
                EC.presence_of_element_located(
                    (By.XPATH, "//fieldset[@id='KC']/span[contains(@class, 'rms_testItemResult')]"))
            )
        elif (subCategory == 'HPT'):
            subCategoryButton = WebDriverWait(driver, timeoutDuration).until(
                EC.presence_of_element_located(
                    (By.XPATH, "//fieldset[@id='HC']/span[contains(@class, 'rms_testItemResult')]"))
            )
        elif (subCategory == 'DT'):
            subCategoryButton = WebDriverWait(driver, timeoutDuration).until(
                EC.presence_of_element_located(
                    (By.XPATH, "//fieldset[@id='DC']/span[contains(@class, 'rms_testItemResult')]"))
            )
        else:
            raise Exception(f'main category: {subCategory} not supported')

        subCategoryButton.click()

        time.sleep(timeoutDuration)
        driver.find_element(By.ID, "nextButton").click()
        time.sleep(timeoutDuration)
        driver.find_element(By.ID, "checkTerms").click()
        time.sleep(timeoutDuration)
        driver.find_element(By.ID, "nextButton").click()
        time.sleep(timeoutDuration)
        driver.find_element(By.ID, "rms_batLocLocSel").click()
        time.sleep(timeoutDuration)

    driver.find_element(By.ID, "rms_batLocLocSel").click()
    time.sleep(timeoutDuration)
    select_box = driver.find_element(By.ID, "rms_batLocationSelect2")
    Select(select_box).select_by_value(locationId)
    time.sleep(timeoutDuration)
    driver.find_element(By.ID, "nextButton").click()
    if(driver.find_element(By.ID, "getEarliestTime").size != 0):
        if(driver.find_element(By.ID, "getEarliestTime").is_displayed()):
            if(driver.find_element(By.ID, "getEarliestTime").is_enabled()):
                driver.find_element(By.ID, "getEarliestTime").click()
    result = driver.execute_script('return timeslots')
    os.makedirs(os.path.dirname(resultFilePath), exist_ok=True)
    with open(resultFilePath, "w") as results_file:
        # results_file = open(resultFilePath, "w")
        results_file.write(
            '{"location":"'+locationId+'","result":'+json.dumps(result)+'}\n')
        # results_file.close()
    driver.quit()
except Exception:
    print(traceback.format_exc())
    driver.quit()
    exit(1)
