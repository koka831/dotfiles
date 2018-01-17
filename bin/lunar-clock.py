import requests
from datetime import datetime
import os
import ephem


class LunarClock(object):

    def __init__(self, lat, lon, city_id, api_key):
        self.lat = lat
        self.lon = lon
        self.base_url = 'http://api.openweathermap.org/data/2.5/forecast'
        self.city_id = city_id
        self.api_key = api_key
        self.cache_expire = 30  # 30min
        self.cache_dir = os.path.expanduser('~/.lunar-clock.log')
        self.date = datetime.now().strftime('%Y/%m/%d')
        self.location = ephem.Observer()
        self.location.lat = lat
        self.location.lon = lon
        self.sunrise = self.location

    def fetch(self):
        query = {
            'id': self.city_id,
            'APPID': self.api_key
        }
        res = requests.get(self.base_url, params=query)
        current = res.json()['list'][0]
        self.temp = round(current['main']['temp'] - 273.15)
        self.rain = current['rain']['3h']
        self.cloud = current['clouds']['all']
        self.weather = current['weather'][0]['id']

    def now(self, verbose=False):
        if verbose:
            return datetime.now().strftime('%Y/%m/%d %H:%M:%S')
        else:
            return datetime.now().strftime('%H:%M')

    def __check_cache(self):
        pass

    def print_weather(self):
        if self.rain >= 1:
            print('☂')
        elif self.cloud >= 60:
            print('☁')
        else:
            print('☀')

    def lunar_month(self):
        phase = 0
        if phase <= 1.84:
            return '🌑'
        elif phase <= 5.53:
            return '🌒'
        elif phase <= 9.22:
            return '🌓'
        elif phase <= 12.91:
            return '🌔'
        elif phase <= 16.61:
            return '🌕'
        elif phase <= 20.30:
            return '🌖'
        elif phase <= 23.99:
            return '🌗'
        elif phase <= 27.68:
            return '🌘'


if __name__ == '__main__':
    # yokohama
    lc = LunarClock(35.877599, 138.333849, '1848354', '9697c8ee2246e64388d1fcb7a09d8fd6')
    lc.fetch()
    print(lc.lunar_month())
    print(lc.print_weather())
    print(lc.now())
