import  OpeningHoursParser from '../components/OpeningHoursParser';

describe("OpeningHoursParser", () => {
  describe("constructor", () => {
    it("handles hours", () => {
      const value = "10:00-12:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we', 'th', 'fr', 'sa', 'su', 'ph'], hours: ["10:00-12:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles PH off", () => {
      const value = "10:00-12:00; PH off";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we', 'th', 'fr', 'sa', 'su'], hours: ["10:00-12:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles full week + PH", () => {
      const value = "Mo-Su,PH 10:00-12:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we', 'th', 'fr', 'sa', 'su', 'ph'], hours: ["10:00-12:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles day + hours", () => {
      const value = "Mo 10:00-12:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo'], hours: ["10:00-12:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles day + hours with short hours notation", () => {
      const value = "Mo 1:00-5:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo'], hours: ["01:00-05:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles days range + hours", () => {
      const value = "Mo-We 10:00-12:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we'], hours: ["10:00-12:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles days list + hours", () => {
      const value = "Mo,We 10:00-12:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'we'], hours: ["10:00-12:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles days + different hours", () => {
      const value = "Mo-We 10:00-12:00; Th-Sa 09:00-15:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we'], hours: ["10:00-12:00"] },
        { days: ['th', 'fr', 'sa'], hours: ["09:00-15:00"] }
      ];
      expect(result).toEqual(expected);
    });

    it("handles several hours ranges for same day", () => {
      const value = "Mo-We 10:00-12:00, 17:00-19:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we'], hours: ["10:00-12:00", "17:00-19:00"] },
      ];
      expect(result).toEqual(expected);
    });

    it("handles days only", () => {
      const value = "Mo-We";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we'], hours: ["00:00-24:00"] },
      ];
      expect(result).toEqual(expected);
    });

    it("handles days only in a subpart", () => {
      const value = "Mo-We; Sa 01:00-15:00";
      const oh = new OpeningHoursParser(value);
      const result = oh.getTable();
      const expected = [
        { days: ['mo', 'tu', 'we'], hours: ["00:00-24:00"] },
        { days: ['sa'], hours: ["01:00-15:00"] },
      ];
      expect(result).toEqual(expected);
    });

    it("throws an error if value can't be handled", () => {
      const value = "This is not opening_hours !";
      const result = () => (new OpeningHoursParser(value));
      expect(result).toThrow(new Error("Can't parse opening_hours : "+value));
    });
  });
});
