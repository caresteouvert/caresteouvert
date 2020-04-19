/**
 * OpeningHoursParser handles parsing of {@link https://wiki.openstreetmap.org/wiki/Key:opening_hours|opening_hours=*} tag.
 * It only supports basic version of the tag, as we don't need full implementation for public transport hours.
 * Based on ubahnverleih implementation, edited to use vanilla JS syntax
 * @see {@link https://github.com/ubahnverleih/simple-opening-hours|Original repository}
 */
export default class OpeningHoursParser {
  /**
   * Creates the OpeningHoursParser Object with OSM opening_hours string
   * @param {string} value The opening_hours=* value
   */
  constructor(value) {
    this.openingHours = [];
    this._parse(value);
    // Check if opening hours is empty (invalid parsing)
    if (this.openingHours.filter(oh => oh.days.length === 0).length > 0) {
      throw new Error("Can't parse opening_hours : "+value);
    }
  }

  /**
   * Get the parsed value as a table
   * @return {Object} The hours, as { day: [ hours ] }
   */
  getTable() {
    return this.openingHours;
  }

  /**
   * Parses the input and creates openingHours Object
   * @private
   */
  _parse(inp) {
    this._initOpeningHoursObj();
    inp = this._simplify(inp);
    let parts = this._splitHard(inp);
    parts.forEach((part) => {
      this._parseHardPart(part)
    });
  }

  /**
   * @private
   */
  _simplify(input) {
    if (input == "24/7") {
      input = "mo-su 00:00-24:00; ph 00:00-24:00";
    }
    input = input.toLocaleLowerCase();
    input = input.trim();
    input = input.replace(/ +(?= )/g, ''); //replace double spaces

    input = input.replace(' -', '-');
    input = input.replace('- ', '-');

    input = input.replace(' :', ':');
    input = input.replace(': ', ':');

    input = input.replace(' ,', ',');
    input = input.replace(', ', ',');

    input = input.replace(' ;', ';');
    input = input.replace('; ', ';');
    return input;
  }

  /**
   * Split on ;
   * @private
   */
  _splitHard(inp) {
    return inp.split(';');
  }

  /**
   * @private
   */
  _parseHardPart(part) {
    if (part == "24/7") {
      part = "mo-su 00:00-24:00";
    }
    let segments = part.split(/\ |\,/);

    let tempData = {}
    let days = []
    let times = []
    segments.forEach((segment,i) => {
      if (this._checkDay(segment)) {
        if (times.length === 0) {
          days = days.concat(this._parseDays(segment));
        }
        else {
          //append
          days.forEach((day) => {
            if (tempData[day]) {
              tempData[day] = tempData[day].concat(times)
            }
            else {
              tempData[day] = times
            }
          })
          days = this._parseDays(segment)
          times = [];
        }
      }
      if (this._checkTime(segment)) {
        if (i === 0 && days.length === 0) {
          days = this._parseDays("Mo-Su,PH");
        }
        if (segment == "off") {
          times = "off"
        }
        else {
          times.push(this._cleanTime(segment))
        }
      }
    })

    if (times === 'off') {
      this.openingHours.forEach((interval) => {
        days.forEach((day) => {
          if (interval.days.includes(day)) {
            interval.days.splice(interval.days.indexOf(day), 1);
          }
        });
      });
    } else {
      if (times.length === 0) {
        times = ["00:00-24:00"];
      }
      this.openingHours.push({ days: days, hours: times });
    }
  }

  /**
   * @private
   */
  _parseDays(part) {
    part = part.toLowerCase();
    let days = []
    let softparts = part.split(',');
    softparts.forEach((part) => {
      let rangecount = (part.match(/\-/g) || []).length;
      if (rangecount == 0) {
        days.push(part)
      }
      else {
        days = days.concat(this._calcDayRange(part))
      }
    })

    return days
  }

  /**
   * @private
   */
  _cleanTime(time) {
    if (time.match(/^[0-9]:[0-9]{2}/)) {
      time = "0"+time;
    }
    if (time.match(/^[0-9]{2}:[0-9]{2}\-[0-9]:[0-9]{2}/)) {
      time = time.substring(0,6)+"0"+time.substring(6);
    }
    return time;
  }

  /**
   * @private
   */
  _initOpeningHoursObj() {
    this.openingHours = [];
  }

  /**
   * Calculates the days in range "mo-we" -> ["mo", "tu", "we"]
   * @private
   */
  _calcDayRange(range) {
    let def = {
      su: 0,
      mo: 1,
      tu: 2,
      we: 3,
      th: 4,
      fr: 5,
      sa: 6
    }

    let rangeElements = range.split('-');

    let dayStart = def[rangeElements[0]]
    let dayEnd = def[rangeElements[1]]

    let numberRange = this._calcRange(dayStart, dayEnd, 6);
    let outRange = [];
    numberRange.forEach(n => {
      for (let key in def) {
        if (def[key] == n) {
          outRange.push(key)
        }
      }
    });
    return outRange;
  }

  /**
   * Creates a range between two number.
   * if the max value is 6 a range bewteen 6 and 2 is 6, 0, 1, 2
   * @private
   */
  _calcRange(min, max, maxval) {
    if (min == max) {
      return [min]
    }
    let range = [min];
    let rangepoint = min
    while (rangepoint < ((min < max) ? max : maxval)) {
      rangepoint++
      range.push(rangepoint)
    }
    if (min > max) {
      //add from first in list to max value
      range = range.concat(this._calcRange(0, max, maxval))
    }

    return range;
  }

  /**
   * Check if string is time range
   * @private
   */
  _checkTime(inp) {
    //e.g. 09:00+
    if (inp.match(/[0-9]{1,2}:[0-9]{2}\+/)) {
      return true;
    }
    //e.g. 08:00-12:00
    if (inp.match(/[0-9]{1,2}:[0-9]{2}\-[0-9]{1,2}:[0-9]{2}/)) {
      return true;
    }
    //off
    if (inp.match(/off/)) {
      return true;
    }
    return false;
  }

  /**
   * check if string is day or dayrange
   * @private
   */
  _checkDay(inp) {
    let days = ["mo", "tu", "we", "th", "fr", "sa", "su", "ph"]
    if (inp.match(/\-/g)) {
      let rangelements = inp.split('-');
      if (days.indexOf(rangelements[0]) !== -1
          && days.indexOf(rangelements[1]) !== -1) {
        return true
      }
    }
    else {
      if (days.indexOf(inp) !== -1) {
        return true
      }
    }
    return false
  }
}
