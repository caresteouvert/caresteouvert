
-- AUTOMATICALLY GENERATED SCRIPT
-- DO NOT EDIT DIRECTLY, EDIT INSTEAD "/categories.json"
-- THEN RUN "yarn run categories" TO UPDATE

BEGIN;
SELECT plan(2862);

SELECT is(
  get_category('amenity=>police'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>police for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'DE'),
  'police',
  'get_subcategory amenity=>police for DE should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>police for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'FR'),
  'police',
  'get_subcategory amenity=>police for FR should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>police for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'ES'),
  'police',
  'get_subcategory amenity=>police for ES should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>police for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'AD'),
  'police',
  'get_subcategory amenity=>police for AD should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>police for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'CH'),
  'police',
  'get_subcategory amenity=>police for CH should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>police for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'AT'),
  'police',
  'get_subcategory amenity=>police for AT should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>police for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'PH'),
  'police',
  'get_subcategory amenity=>police for PH should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>police for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'FI'),
  'police',
  'get_subcategory amenity=>police for FI should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>police for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'MC'),
  'police',
  'get_subcategory amenity=>police for MC should be police'
);

SELECT is(
  get_category('amenity=>police'::hstore, 'CD'),
  'amenity',
  'get_category amenity=>police for CD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>police'::hstore, 'CD'),
  'police',
  'get_subcategory amenity=>police for CD should be police'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>townhall for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'DE'),
  'townhall',
  'get_subcategory amenity=>townhall for DE should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>townhall for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'FR'),
  'townhall',
  'get_subcategory amenity=>townhall for FR should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>townhall for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'ES'),
  'townhall',
  'get_subcategory amenity=>townhall for ES should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>townhall for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'AD'),
  'townhall',
  'get_subcategory amenity=>townhall for AD should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>townhall for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'CH'),
  'townhall',
  'get_subcategory amenity=>townhall for CH should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>townhall for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'AT'),
  'townhall',
  'get_subcategory amenity=>townhall for AT should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>townhall for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'PH'),
  'townhall',
  'get_subcategory amenity=>townhall for PH should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>townhall for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'FI'),
  'townhall',
  'get_subcategory amenity=>townhall for FI should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>townhall for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'MC'),
  'townhall',
  'get_subcategory amenity=>townhall for MC should be townhall'
);

SELECT is(
  get_category('amenity=>townhall'::hstore, 'CD'),
  'amenity',
  'get_category amenity=>townhall for CD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>townhall'::hstore, 'CD'),
  'townhall',
  'get_subcategory amenity=>townhall for CD should be townhall'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>post_office for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'DE'),
  'post_office',
  'get_subcategory amenity=>post_office for DE should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>post_office for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'FR'),
  'post_office',
  'get_subcategory amenity=>post_office for FR should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>post_office for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'ES'),
  'post_office',
  'get_subcategory amenity=>post_office for ES should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>post_office for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'AD'),
  'post_office',
  'get_subcategory amenity=>post_office for AD should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>post_office for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'CH'),
  'post_office',
  'get_subcategory amenity=>post_office for CH should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>post_office for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'AT'),
  'post_office',
  'get_subcategory amenity=>post_office for AT should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>post_office for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'PH'),
  'post_office',
  'get_subcategory amenity=>post_office for PH should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>post_office for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'FI'),
  'post_office',
  'get_subcategory amenity=>post_office for FI should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>post_office for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'MC'),
  'post_office',
  'get_subcategory amenity=>post_office for MC should be post_office'
);

SELECT is(
  get_category('amenity=>post_office'::hstore, 'CD'),
  'amenity',
  'get_category amenity=>post_office for CD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>post_office'::hstore, 'CD'),
  'post_office',
  'get_subcategory amenity=>post_office for CD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'DE'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for DE should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'FR'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for FR should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'ES'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for ES should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'AD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for AD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'CH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for CH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'AT'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for AT should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'PH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for PH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'FI'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for FI should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'MC'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for MC should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>stamps'::hstore, 'CD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>stamps for CD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>stamps'::hstore, 'CD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>stamps for CD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'DE'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for DE should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'FR'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for FR should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'ES'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for ES should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'AD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for AD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'CH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for CH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'AT'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for AT should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'PH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for PH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'FI'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for FI should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'MC'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for MC should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'CD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_mail_in for CD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_mail_in'::hstore, 'CD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_mail_in for CD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'DE'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for DE should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'FR'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for FR should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'ES'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for ES should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'AD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for AD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'CH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for CH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'AT'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for AT should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'PH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for PH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'FI'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for FI should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'MC'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for MC should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'CD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup for CD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup'::hstore, 'CD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup for CD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'DE'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for DE should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'FR'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for FR should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'ES'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for ES should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'AD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for AD should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'CH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for CH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'AT'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for AT should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'PH'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for PH should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'FI'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for FI should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'MC'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for MC should be post_office'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'CD'),
  'amenity',
  'get_category amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for CD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in'::hstore, 'CD'),
  'post_office',
  'get_subcategory amenity=>vending_machine, vending=>parcel_pickup;parcel_mail_in for CD should be post_office'
);

SELECT is(
  get_category('amenity=>childcare'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>childcare for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>childcare'::hstore, 'FR'),
  'childcare',
  'get_subcategory amenity=>childcare for FR should be childcare'
);

SELECT is(
  get_category('amenity=>kindergarten, kindergarten:FR=>*'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>kindergarten, kindergarten:FR=>* for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>kindergarten, kindergarten:FR=>*'::hstore, 'FR'),
  'childcare',
  'get_subcategory amenity=>kindergarten, kindergarten:FR=>* for FR should be childcare'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'DE'),
  'amenity',
  'get_category office=>employment_agency for DE should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'DE'),
  'employment_agency',
  'get_subcategory office=>employment_agency for DE should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'FR'),
  'amenity',
  'get_category office=>employment_agency for FR should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'FR'),
  'employment_agency',
  'get_subcategory office=>employment_agency for FR should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'ES'),
  'amenity',
  'get_category office=>employment_agency for ES should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'ES'),
  'employment_agency',
  'get_subcategory office=>employment_agency for ES should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'AD'),
  'amenity',
  'get_category office=>employment_agency for AD should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'AD'),
  'employment_agency',
  'get_subcategory office=>employment_agency for AD should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'CH'),
  'amenity',
  'get_category office=>employment_agency for CH should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'CH'),
  'employment_agency',
  'get_subcategory office=>employment_agency for CH should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'AT'),
  'amenity',
  'get_category office=>employment_agency for AT should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'AT'),
  'employment_agency',
  'get_subcategory office=>employment_agency for AT should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'PH'),
  'amenity',
  'get_category office=>employment_agency for PH should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'PH'),
  'employment_agency',
  'get_subcategory office=>employment_agency for PH should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'FI'),
  'amenity',
  'get_category office=>employment_agency for FI should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'FI'),
  'employment_agency',
  'get_subcategory office=>employment_agency for FI should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'MC'),
  'amenity',
  'get_category office=>employment_agency for MC should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'MC'),
  'employment_agency',
  'get_subcategory office=>employment_agency for MC should be employment_agency'
);

SELECT is(
  get_category('office=>employment_agency'::hstore, 'CD'),
  'amenity',
  'get_category office=>employment_agency for CD should be amenity'
);

SELECT is(
  get_subcategory('office=>employment_agency'::hstore, 'CD'),
  'employment_agency',
  'get_subcategory office=>employment_agency for CD should be employment_agency'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'DE'),
  'amenity',
  'get_category shop=>funeral_directors for DE should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'DE'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for DE should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'FR'),
  'amenity',
  'get_category shop=>funeral_directors for FR should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'FR'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for FR should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'ES'),
  'amenity',
  'get_category shop=>funeral_directors for ES should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'ES'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for ES should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'AD'),
  'amenity',
  'get_category shop=>funeral_directors for AD should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'AD'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for AD should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'CH'),
  'amenity',
  'get_category shop=>funeral_directors for CH should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'CH'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for CH should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'AT'),
  'amenity',
  'get_category shop=>funeral_directors for AT should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'AT'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for AT should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'PH'),
  'amenity',
  'get_category shop=>funeral_directors for PH should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'PH'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for PH should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'FI'),
  'amenity',
  'get_category shop=>funeral_directors for FI should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'FI'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for FI should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'MC'),
  'amenity',
  'get_category shop=>funeral_directors for MC should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'MC'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for MC should be funeral_directors'
);

SELECT is(
  get_category('shop=>funeral_directors'::hstore, 'CD'),
  'amenity',
  'get_category shop=>funeral_directors for CD should be amenity'
);

SELECT is(
  get_subcategory('shop=>funeral_directors'::hstore, 'CD'),
  'funeral_directors',
  'get_subcategory shop=>funeral_directors for CD should be funeral_directors'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>bank for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'DE'),
  'money',
  'get_subcategory amenity=>bank for DE should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>bank for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'FR'),
  'money',
  'get_subcategory amenity=>bank for FR should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>bank for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'ES'),
  'money',
  'get_subcategory amenity=>bank for ES should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>bank for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'AD'),
  'money',
  'get_subcategory amenity=>bank for AD should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>bank for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'CH'),
  'money',
  'get_subcategory amenity=>bank for CH should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>bank for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'AT'),
  'money',
  'get_subcategory amenity=>bank for AT should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>bank for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'PH'),
  'money',
  'get_subcategory amenity=>bank for PH should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>bank for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'FI'),
  'money',
  'get_subcategory amenity=>bank for FI should be money'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>bank for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'MC'),
  'money',
  'get_subcategory amenity=>bank for MC should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>atm for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'DE'),
  'money',
  'get_subcategory amenity=>atm for DE should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>atm for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'FR'),
  'money',
  'get_subcategory amenity=>atm for FR should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>atm for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'ES'),
  'money',
  'get_subcategory amenity=>atm for ES should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>atm for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'AD'),
  'money',
  'get_subcategory amenity=>atm for AD should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>atm for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'CH'),
  'money',
  'get_subcategory amenity=>atm for CH should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>atm for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'AT'),
  'money',
  'get_subcategory amenity=>atm for AT should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>atm for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'PH'),
  'money',
  'get_subcategory amenity=>atm for PH should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>atm for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'FI'),
  'money',
  'get_subcategory amenity=>atm for FI should be money'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>atm for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'MC'),
  'money',
  'get_subcategory amenity=>atm for MC should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>money_transfer for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'DE'),
  'money',
  'get_subcategory amenity=>money_transfer for DE should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>money_transfer for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'FR'),
  'money',
  'get_subcategory amenity=>money_transfer for FR should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>money_transfer for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'ES'),
  'money',
  'get_subcategory amenity=>money_transfer for ES should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>money_transfer for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'AD'),
  'money',
  'get_subcategory amenity=>money_transfer for AD should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>money_transfer for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'CH'),
  'money',
  'get_subcategory amenity=>money_transfer for CH should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>money_transfer for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'AT'),
  'money',
  'get_subcategory amenity=>money_transfer for AT should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>money_transfer for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'PH'),
  'money',
  'get_subcategory amenity=>money_transfer for PH should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>money_transfer for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'FI'),
  'money',
  'get_subcategory amenity=>money_transfer for FI should be money'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>money_transfer for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'MC'),
  'money',
  'get_subcategory amenity=>money_transfer for MC should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'DE'),
  'amenity',
  'get_category amenity=>mobile_money_agent for DE should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'DE'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for DE should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>mobile_money_agent for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'FR'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for FR should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'ES'),
  'amenity',
  'get_category amenity=>mobile_money_agent for ES should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'ES'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for ES should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'AD'),
  'amenity',
  'get_category amenity=>mobile_money_agent for AD should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'AD'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for AD should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'CH'),
  'amenity',
  'get_category amenity=>mobile_money_agent for CH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'CH'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for CH should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'AT'),
  'amenity',
  'get_category amenity=>mobile_money_agent for AT should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'AT'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for AT should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'PH'),
  'amenity',
  'get_category amenity=>mobile_money_agent for PH should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'PH'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for PH should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>mobile_money_agent for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'FI'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for FI should be money'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'MC'),
  'amenity',
  'get_category amenity=>mobile_money_agent for MC should be amenity'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'MC'),
  'money',
  'get_subcategory amenity=>mobile_money_agent for MC should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'DE'),
  'amenity',
  'get_category shop=>money_lender for DE should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'DE'),
  'money',
  'get_subcategory shop=>money_lender for DE should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'FR'),
  'amenity',
  'get_category shop=>money_lender for FR should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'FR'),
  'money',
  'get_subcategory shop=>money_lender for FR should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'ES'),
  'amenity',
  'get_category shop=>money_lender for ES should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'ES'),
  'money',
  'get_subcategory shop=>money_lender for ES should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'AD'),
  'amenity',
  'get_category shop=>money_lender for AD should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'AD'),
  'money',
  'get_subcategory shop=>money_lender for AD should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'CH'),
  'amenity',
  'get_category shop=>money_lender for CH should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'CH'),
  'money',
  'get_subcategory shop=>money_lender for CH should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'AT'),
  'amenity',
  'get_category shop=>money_lender for AT should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'AT'),
  'money',
  'get_subcategory shop=>money_lender for AT should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'PH'),
  'amenity',
  'get_category shop=>money_lender for PH should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'PH'),
  'money',
  'get_subcategory shop=>money_lender for PH should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'FI'),
  'amenity',
  'get_category shop=>money_lender for FI should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'FI'),
  'money',
  'get_subcategory shop=>money_lender for FI should be money'
);

SELECT is(
  get_category('shop=>money_lender'::hstore, 'MC'),
  'amenity',
  'get_category shop=>money_lender for MC should be amenity'
);

SELECT is(
  get_subcategory('shop=>money_lender'::hstore, 'MC'),
  'money',
  'get_subcategory shop=>money_lender for MC should be money'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'DE'),
  'amenity',
  'get_category office=>insurance for DE should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'DE'),
  'insurance',
  'get_subcategory office=>insurance for DE should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'FR'),
  'amenity',
  'get_category office=>insurance for FR should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'FR'),
  'insurance',
  'get_subcategory office=>insurance for FR should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'ES'),
  'amenity',
  'get_category office=>insurance for ES should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'ES'),
  'insurance',
  'get_subcategory office=>insurance for ES should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'AD'),
  'amenity',
  'get_category office=>insurance for AD should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'AD'),
  'insurance',
  'get_subcategory office=>insurance for AD should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'CH'),
  'amenity',
  'get_category office=>insurance for CH should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'CH'),
  'insurance',
  'get_subcategory office=>insurance for CH should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'AT'),
  'amenity',
  'get_category office=>insurance for AT should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'AT'),
  'insurance',
  'get_subcategory office=>insurance for AT should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'PH'),
  'amenity',
  'get_category office=>insurance for PH should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'PH'),
  'insurance',
  'get_subcategory office=>insurance for PH should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'FI'),
  'amenity',
  'get_category office=>insurance for FI should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'FI'),
  'insurance',
  'get_subcategory office=>insurance for FI should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'MC'),
  'amenity',
  'get_category office=>insurance for MC should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'MC'),
  'insurance',
  'get_subcategory office=>insurance for MC should be insurance'
);

SELECT is(
  get_category('office=>insurance'::hstore, 'CD'),
  'amenity',
  'get_category office=>insurance for CD should be amenity'
);

SELECT is(
  get_subcategory('office=>insurance'::hstore, 'CD'),
  'insurance',
  'get_subcategory office=>insurance for CD should be insurance'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'DE'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for DE should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'DE'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for DE should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'FR'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for FR should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'FR'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for FR should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'ES'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for ES should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'ES'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for ES should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'AD'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for AD should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'AD'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for AD should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'CH'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for CH should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'CH'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for CH should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'AT'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for AT should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'AT'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for AT should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'PH'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for PH should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'PH'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for PH should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'FI'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for FI should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'FI'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for FI should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'MC'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for MC should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'MC'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for MC should be tourism_info'
);

SELECT is(
  get_category('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'CD'),
  'amenity',
  'get_category opening_hours:covid19=>*, tourism=>information, information=>office for CD should be amenity'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, tourism=>information, information=>office'::hstore, 'CD'),
  'tourism_info',
  'get_subcategory opening_hours:covid19=>*, tourism=>information, information=>office for CD should be tourism_info'
);

SELECT is(
  get_category('tourism=>hotel'::hstore, 'FR'),
  'amenity',
  'get_category tourism=>hotel for FR should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hotel'::hstore, 'FR'),
  'hotel',
  'get_subcategory tourism=>hotel for FR should be hotel'
);

SELECT is(
  get_category('tourism=>hotel'::hstore, 'AT'),
  'amenity',
  'get_category tourism=>hotel for AT should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hotel'::hstore, 'AT'),
  'hotel',
  'get_subcategory tourism=>hotel for AT should be hotel'
);

SELECT is(
  get_category('tourism=>hotel'::hstore, 'DE'),
  'amenity',
  'get_category tourism=>hotel for DE should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hotel'::hstore, 'DE'),
  'hotel',
  'get_subcategory tourism=>hotel for DE should be hotel'
);

SELECT is(
  get_category('tourism=>hotel'::hstore, 'CH'),
  'amenity',
  'get_category tourism=>hotel for CH should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hotel'::hstore, 'CH'),
  'hotel',
  'get_subcategory tourism=>hotel for CH should be hotel'
);

SELECT is(
  get_category('tourism=>motel'::hstore, 'FR'),
  'amenity',
  'get_category tourism=>motel for FR should be amenity'
);

SELECT is(
  get_subcategory('tourism=>motel'::hstore, 'FR'),
  'hotel',
  'get_subcategory tourism=>motel for FR should be hotel'
);

SELECT is(
  get_category('tourism=>motel'::hstore, 'AT'),
  'amenity',
  'get_category tourism=>motel for AT should be amenity'
);

SELECT is(
  get_subcategory('tourism=>motel'::hstore, 'AT'),
  'hotel',
  'get_subcategory tourism=>motel for AT should be hotel'
);

SELECT is(
  get_category('tourism=>motel'::hstore, 'DE'),
  'amenity',
  'get_category tourism=>motel for DE should be amenity'
);

SELECT is(
  get_subcategory('tourism=>motel'::hstore, 'DE'),
  'hotel',
  'get_subcategory tourism=>motel for DE should be hotel'
);

SELECT is(
  get_category('tourism=>motel'::hstore, 'CH'),
  'amenity',
  'get_category tourism=>motel for CH should be amenity'
);

SELECT is(
  get_subcategory('tourism=>motel'::hstore, 'CH'),
  'hotel',
  'get_subcategory tourism=>motel for CH should be hotel'
);

SELECT is(
  get_category('tourism=>hostel'::hstore, 'FR'),
  'amenity',
  'get_category tourism=>hostel for FR should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hostel'::hstore, 'FR'),
  'hotel',
  'get_subcategory tourism=>hostel for FR should be hotel'
);

SELECT is(
  get_category('tourism=>hostel'::hstore, 'AT'),
  'amenity',
  'get_category tourism=>hostel for AT should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hostel'::hstore, 'AT'),
  'hotel',
  'get_subcategory tourism=>hostel for AT should be hotel'
);

SELECT is(
  get_category('tourism=>hostel'::hstore, 'DE'),
  'amenity',
  'get_category tourism=>hostel for DE should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hostel'::hstore, 'DE'),
  'hotel',
  'get_subcategory tourism=>hostel for DE should be hotel'
);

SELECT is(
  get_category('tourism=>hostel'::hstore, 'CH'),
  'amenity',
  'get_category tourism=>hostel for CH should be amenity'
);

SELECT is(
  get_subcategory('tourism=>hostel'::hstore, 'CH'),
  'hotel',
  'get_subcategory tourism=>hostel for CH should be hotel'
);

SELECT is(
  get_category('amenity=>recycling, recycling_type=>centre'::hstore, 'FR'),
  'amenity',
  'get_category amenity=>recycling, recycling_type=>centre for FR should be amenity'
);

SELECT is(
  get_subcategory('amenity=>recycling, recycling_type=>centre'::hstore, 'FR'),
  'recycling_centre',
  'get_subcategory amenity=>recycling, recycling_type=>centre for FR should be recycling_centre'
);

SELECT is(
  get_category('amenity=>library'::hstore, 'FI'),
  'amenity',
  'get_category amenity=>library for FI should be amenity'
);

SELECT is(
  get_subcategory('amenity=>library'::hstore, 'FI'),
  'library',
  'get_subcategory amenity=>library for FI should be library'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'DE'),
  'health',
  'get_category amenity=>pharmacy for DE should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'DE'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for DE should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'FR'),
  'health',
  'get_category amenity=>pharmacy for FR should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'FR'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for FR should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'ES'),
  'health',
  'get_category amenity=>pharmacy for ES should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'ES'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for ES should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'AD'),
  'health',
  'get_category amenity=>pharmacy for AD should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'AD'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for AD should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'CH'),
  'health',
  'get_category amenity=>pharmacy for CH should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'CH'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for CH should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'AT'),
  'health',
  'get_category amenity=>pharmacy for AT should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'AT'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for AT should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'PH'),
  'health',
  'get_category amenity=>pharmacy for PH should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'PH'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for PH should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'FI'),
  'health',
  'get_category amenity=>pharmacy for FI should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'FI'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for FI should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'MC'),
  'health',
  'get_category amenity=>pharmacy for MC should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'MC'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for MC should be pharmacy'
);

SELECT is(
  get_category('amenity=>pharmacy'::hstore, 'CD'),
  'health',
  'get_category amenity=>pharmacy for CD should be health'
);

SELECT is(
  get_subcategory('amenity=>pharmacy'::hstore, 'CD'),
  'pharmacy',
  'get_subcategory amenity=>pharmacy for CD should be pharmacy'
);

SELECT is(
  get_category('healthcare=>centre, healthcare:speciality=>covid19'::hstore, 'FR'),
  'health',
  'get_category healthcare=>centre, healthcare:speciality=>covid19 for FR should be health'
);

SELECT is(
  get_subcategory('healthcare=>centre, healthcare:speciality=>covid19'::hstore, 'FR'),
  'covid19_centre',
  'get_subcategory healthcare=>centre, healthcare:speciality=>covid19 for FR should be covid19_centre'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'DE'),
  'health',
  'get_category shop=>optician for DE should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'DE'),
  'optician',
  'get_subcategory shop=>optician for DE should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'FR'),
  'health',
  'get_category shop=>optician for FR should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'FR'),
  'optician',
  'get_subcategory shop=>optician for FR should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'ES'),
  'health',
  'get_category shop=>optician for ES should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'ES'),
  'optician',
  'get_subcategory shop=>optician for ES should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'AD'),
  'health',
  'get_category shop=>optician for AD should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'AD'),
  'optician',
  'get_subcategory shop=>optician for AD should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'CH'),
  'health',
  'get_category shop=>optician for CH should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'CH'),
  'optician',
  'get_subcategory shop=>optician for CH should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'AT'),
  'health',
  'get_category shop=>optician for AT should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'AT'),
  'optician',
  'get_subcategory shop=>optician for AT should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'PH'),
  'health',
  'get_category shop=>optician for PH should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'PH'),
  'optician',
  'get_subcategory shop=>optician for PH should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'FI'),
  'health',
  'get_category shop=>optician for FI should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'FI'),
  'optician',
  'get_subcategory shop=>optician for FI should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'MC'),
  'health',
  'get_category shop=>optician for MC should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'MC'),
  'optician',
  'get_subcategory shop=>optician for MC should be optician'
);

SELECT is(
  get_category('shop=>optician'::hstore, 'CD'),
  'health',
  'get_category shop=>optician for CD should be health'
);

SELECT is(
  get_subcategory('shop=>optician'::hstore, 'CD'),
  'optician',
  'get_subcategory shop=>optician for CD should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'DE'),
  'health',
  'get_category craft=>optician for DE should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'DE'),
  'optician',
  'get_subcategory craft=>optician for DE should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'FR'),
  'health',
  'get_category craft=>optician for FR should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'FR'),
  'optician',
  'get_subcategory craft=>optician for FR should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'ES'),
  'health',
  'get_category craft=>optician for ES should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'ES'),
  'optician',
  'get_subcategory craft=>optician for ES should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'AD'),
  'health',
  'get_category craft=>optician for AD should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'AD'),
  'optician',
  'get_subcategory craft=>optician for AD should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'CH'),
  'health',
  'get_category craft=>optician for CH should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'CH'),
  'optician',
  'get_subcategory craft=>optician for CH should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'AT'),
  'health',
  'get_category craft=>optician for AT should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'AT'),
  'optician',
  'get_subcategory craft=>optician for AT should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'PH'),
  'health',
  'get_category craft=>optician for PH should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'PH'),
  'optician',
  'get_subcategory craft=>optician for PH should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'FI'),
  'health',
  'get_category craft=>optician for FI should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'FI'),
  'optician',
  'get_subcategory craft=>optician for FI should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'MC'),
  'health',
  'get_category craft=>optician for MC should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'MC'),
  'optician',
  'get_subcategory craft=>optician for MC should be optician'
);

SELECT is(
  get_category('craft=>optician'::hstore, 'CD'),
  'health',
  'get_category craft=>optician for CD should be health'
);

SELECT is(
  get_subcategory('craft=>optician'::hstore, 'CD'),
  'optician',
  'get_subcategory craft=>optician for CD should be optician'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'DE'),
  'health',
  'get_category shop=>hearing_aids for DE should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'DE'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for DE should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'FR'),
  'health',
  'get_category shop=>hearing_aids for FR should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'FR'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for FR should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'ES'),
  'health',
  'get_category shop=>hearing_aids for ES should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'ES'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for ES should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'AD'),
  'health',
  'get_category shop=>hearing_aids for AD should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'AD'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for AD should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'CH'),
  'health',
  'get_category shop=>hearing_aids for CH should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'CH'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for CH should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'AT'),
  'health',
  'get_category shop=>hearing_aids for AT should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'AT'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for AT should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'PH'),
  'health',
  'get_category shop=>hearing_aids for PH should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'PH'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for PH should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'FI'),
  'health',
  'get_category shop=>hearing_aids for FI should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'FI'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for FI should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'MC'),
  'health',
  'get_category shop=>hearing_aids for MC should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'MC'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for MC should be hearing_aids'
);

SELECT is(
  get_category('shop=>hearing_aids'::hstore, 'CD'),
  'health',
  'get_category shop=>hearing_aids for CD should be health'
);

SELECT is(
  get_subcategory('shop=>hearing_aids'::hstore, 'CD'),
  'hearing_aids',
  'get_subcategory shop=>hearing_aids for CD should be hearing_aids'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'DE'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for DE should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'DE'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for DE should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'FR'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for FR should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'FR'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for FR should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'ES'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for ES should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'ES'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for ES should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'AD'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for AD should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'AD'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for AD should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'CH'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for CH should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'CH'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for CH should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'AT'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for AT should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'AT'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for AT should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'PH'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for PH should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'PH'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for PH should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'FI'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for FI should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'FI'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for FI should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'MC'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for MC should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'MC'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for MC should be condoms'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>condoms'::hstore, 'CD'),
  'health',
  'get_category amenity=>vending_machine, vending=>condoms for CD should be health'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>condoms'::hstore, 'CD'),
  'condoms',
  'get_subcategory amenity=>vending_machine, vending=>condoms for CD should be condoms'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'DE'),
  'health',
  'get_category shop=>medical_supply for DE should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'DE'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for DE should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'FR'),
  'health',
  'get_category shop=>medical_supply for FR should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'FR'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for FR should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'ES'),
  'health',
  'get_category shop=>medical_supply for ES should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'ES'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for ES should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'AD'),
  'health',
  'get_category shop=>medical_supply for AD should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'AD'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for AD should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'CH'),
  'health',
  'get_category shop=>medical_supply for CH should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'CH'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for CH should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'AT'),
  'health',
  'get_category shop=>medical_supply for AT should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'AT'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for AT should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'PH'),
  'health',
  'get_category shop=>medical_supply for PH should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'PH'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for PH should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'FI'),
  'health',
  'get_category shop=>medical_supply for FI should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'FI'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for FI should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'MC'),
  'health',
  'get_category shop=>medical_supply for MC should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'MC'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for MC should be medical_supply'
);

SELECT is(
  get_category('shop=>medical_supply'::hstore, 'CD'),
  'health',
  'get_category shop=>medical_supply for CD should be health'
);

SELECT is(
  get_subcategory('shop=>medical_supply'::hstore, 'CD'),
  'medical_supply',
  'get_subcategory shop=>medical_supply for CD should be medical_supply'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>centre for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>centre'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>centre for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>clinic for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>clinic'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>clinic for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>doctor for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>doctor'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>doctor for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>hospital for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>hospital'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>hospital for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>rehabilitation for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>rehabilitation'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>rehabilitation for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, healthcare=>laboratory for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, healthcare=>laboratory'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, healthcare=>laboratory for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>hospital for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>hospital'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>hospital for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>clinic for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>clinic'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>clinic for CD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'DE'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for DE should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'DE'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for DE should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'FR'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for FR should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'FR'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for FR should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'ES'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for ES should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'ES'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for ES should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'AD'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for AD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'AD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for AD should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'CH'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for CH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'CH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for CH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'AT'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for AT should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'AT'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for AT should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'PH'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for PH should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'PH'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for PH should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'FI'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for FI should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'FI'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for FI should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'MC'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for MC should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'MC'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for MC should be health_center'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'CD'),
  'health',
  'get_category opening_hours:covid19=>*, amenity=>doctors for CD should be health'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>doctors'::hstore, 'CD'),
  'health_center',
  'get_subcategory opening_hours:covid19=>*, amenity=>doctors for CD should be health_center'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'DE'),
  'food',
  'get_category shop=>frozen_food for DE should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'DE'),
  'supermarket',
  'get_subcategory shop=>frozen_food for DE should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'FR'),
  'food',
  'get_category shop=>frozen_food for FR should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'FR'),
  'supermarket',
  'get_subcategory shop=>frozen_food for FR should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'ES'),
  'food',
  'get_category shop=>frozen_food for ES should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'ES'),
  'supermarket',
  'get_subcategory shop=>frozen_food for ES should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'AD'),
  'food',
  'get_category shop=>frozen_food for AD should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'AD'),
  'supermarket',
  'get_subcategory shop=>frozen_food for AD should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'CH'),
  'food',
  'get_category shop=>frozen_food for CH should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'CH'),
  'supermarket',
  'get_subcategory shop=>frozen_food for CH should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'AT'),
  'food',
  'get_category shop=>frozen_food for AT should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'AT'),
  'supermarket',
  'get_subcategory shop=>frozen_food for AT should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'PH'),
  'food',
  'get_category shop=>frozen_food for PH should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'PH'),
  'supermarket',
  'get_subcategory shop=>frozen_food for PH should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'FI'),
  'food',
  'get_category shop=>frozen_food for FI should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'FI'),
  'supermarket',
  'get_subcategory shop=>frozen_food for FI should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'MC'),
  'food',
  'get_category shop=>frozen_food for MC should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'MC'),
  'supermarket',
  'get_subcategory shop=>frozen_food for MC should be supermarket'
);

SELECT is(
  get_category('shop=>frozen_food'::hstore, 'CD'),
  'food',
  'get_category shop=>frozen_food for CD should be food'
);

SELECT is(
  get_subcategory('shop=>frozen_food'::hstore, 'CD'),
  'supermarket',
  'get_subcategory shop=>frozen_food for CD should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'DE'),
  'food',
  'get_category shop=>supermarket for DE should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'DE'),
  'supermarket',
  'get_subcategory shop=>supermarket for DE should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'FR'),
  'food',
  'get_category shop=>supermarket for FR should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'FR'),
  'supermarket',
  'get_subcategory shop=>supermarket for FR should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'ES'),
  'food',
  'get_category shop=>supermarket for ES should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'ES'),
  'supermarket',
  'get_subcategory shop=>supermarket for ES should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'AD'),
  'food',
  'get_category shop=>supermarket for AD should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'AD'),
  'supermarket',
  'get_subcategory shop=>supermarket for AD should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'CH'),
  'food',
  'get_category shop=>supermarket for CH should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'CH'),
  'supermarket',
  'get_subcategory shop=>supermarket for CH should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'AT'),
  'food',
  'get_category shop=>supermarket for AT should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'AT'),
  'supermarket',
  'get_subcategory shop=>supermarket for AT should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'PH'),
  'food',
  'get_category shop=>supermarket for PH should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'PH'),
  'supermarket',
  'get_subcategory shop=>supermarket for PH should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'FI'),
  'food',
  'get_category shop=>supermarket for FI should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'FI'),
  'supermarket',
  'get_subcategory shop=>supermarket for FI should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'MC'),
  'food',
  'get_category shop=>supermarket for MC should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'MC'),
  'supermarket',
  'get_subcategory shop=>supermarket for MC should be supermarket'
);

SELECT is(
  get_category('shop=>supermarket'::hstore, 'CD'),
  'food',
  'get_category shop=>supermarket for CD should be food'
);

SELECT is(
  get_subcategory('shop=>supermarket'::hstore, 'CD'),
  'supermarket',
  'get_subcategory shop=>supermarket for CD should be supermarket'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'DE'),
  'food',
  'get_category shop=>butcher for DE should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'DE'),
  'butcher',
  'get_subcategory shop=>butcher for DE should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'FR'),
  'food',
  'get_category shop=>butcher for FR should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'FR'),
  'butcher',
  'get_subcategory shop=>butcher for FR should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'ES'),
  'food',
  'get_category shop=>butcher for ES should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'ES'),
  'butcher',
  'get_subcategory shop=>butcher for ES should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'AD'),
  'food',
  'get_category shop=>butcher for AD should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'AD'),
  'butcher',
  'get_subcategory shop=>butcher for AD should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'CH'),
  'food',
  'get_category shop=>butcher for CH should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'CH'),
  'butcher',
  'get_subcategory shop=>butcher for CH should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'AT'),
  'food',
  'get_category shop=>butcher for AT should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'AT'),
  'butcher',
  'get_subcategory shop=>butcher for AT should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'PH'),
  'food',
  'get_category shop=>butcher for PH should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'PH'),
  'butcher',
  'get_subcategory shop=>butcher for PH should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'FI'),
  'food',
  'get_category shop=>butcher for FI should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'FI'),
  'butcher',
  'get_subcategory shop=>butcher for FI should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'MC'),
  'food',
  'get_category shop=>butcher for MC should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'MC'),
  'butcher',
  'get_subcategory shop=>butcher for MC should be butcher'
);

SELECT is(
  get_category('shop=>butcher'::hstore, 'CD'),
  'food',
  'get_category shop=>butcher for CD should be food'
);

SELECT is(
  get_subcategory('shop=>butcher'::hstore, 'CD'),
  'butcher',
  'get_subcategory shop=>butcher for CD should be butcher'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'DE'),
  'food',
  'get_category shop=>cheese for DE should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'DE'),
  'cheese',
  'get_subcategory shop=>cheese for DE should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'FR'),
  'food',
  'get_category shop=>cheese for FR should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'FR'),
  'cheese',
  'get_subcategory shop=>cheese for FR should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'ES'),
  'food',
  'get_category shop=>cheese for ES should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'ES'),
  'cheese',
  'get_subcategory shop=>cheese for ES should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'AD'),
  'food',
  'get_category shop=>cheese for AD should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'AD'),
  'cheese',
  'get_subcategory shop=>cheese for AD should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'CH'),
  'food',
  'get_category shop=>cheese for CH should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'CH'),
  'cheese',
  'get_subcategory shop=>cheese for CH should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'AT'),
  'food',
  'get_category shop=>cheese for AT should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'AT'),
  'cheese',
  'get_subcategory shop=>cheese for AT should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'PH'),
  'food',
  'get_category shop=>cheese for PH should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'PH'),
  'cheese',
  'get_subcategory shop=>cheese for PH should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'FI'),
  'food',
  'get_category shop=>cheese for FI should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'FI'),
  'cheese',
  'get_subcategory shop=>cheese for FI should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'MC'),
  'food',
  'get_category shop=>cheese for MC should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'MC'),
  'cheese',
  'get_subcategory shop=>cheese for MC should be cheese'
);

SELECT is(
  get_category('shop=>cheese'::hstore, 'CD'),
  'food',
  'get_category shop=>cheese for CD should be food'
);

SELECT is(
  get_subcategory('shop=>cheese'::hstore, 'CD'),
  'cheese',
  'get_subcategory shop=>cheese for CD should be cheese'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'DE'),
  'food',
  'get_category shop=>convenience for DE should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'DE'),
  'convenience',
  'get_subcategory shop=>convenience for DE should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'FR'),
  'food',
  'get_category shop=>convenience for FR should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'FR'),
  'convenience',
  'get_subcategory shop=>convenience for FR should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'ES'),
  'food',
  'get_category shop=>convenience for ES should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'ES'),
  'convenience',
  'get_subcategory shop=>convenience for ES should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'AD'),
  'food',
  'get_category shop=>convenience for AD should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'AD'),
  'convenience',
  'get_subcategory shop=>convenience for AD should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'CH'),
  'food',
  'get_category shop=>convenience for CH should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'CH'),
  'convenience',
  'get_subcategory shop=>convenience for CH should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'AT'),
  'food',
  'get_category shop=>convenience for AT should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'AT'),
  'convenience',
  'get_subcategory shop=>convenience for AT should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'PH'),
  'food',
  'get_category shop=>convenience for PH should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'PH'),
  'convenience',
  'get_subcategory shop=>convenience for PH should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'FI'),
  'food',
  'get_category shop=>convenience for FI should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'FI'),
  'convenience',
  'get_subcategory shop=>convenience for FI should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'MC'),
  'food',
  'get_category shop=>convenience for MC should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'MC'),
  'convenience',
  'get_subcategory shop=>convenience for MC should be convenience'
);

SELECT is(
  get_category('shop=>convenience'::hstore, 'CD'),
  'food',
  'get_category shop=>convenience for CD should be food'
);

SELECT is(
  get_subcategory('shop=>convenience'::hstore, 'CD'),
  'convenience',
  'get_subcategory shop=>convenience for CD should be convenience'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'DE'),
  'food',
  'get_category shop=>seafood for DE should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'DE'),
  'seafood',
  'get_subcategory shop=>seafood for DE should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'FR'),
  'food',
  'get_category shop=>seafood for FR should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'FR'),
  'seafood',
  'get_subcategory shop=>seafood for FR should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'ES'),
  'food',
  'get_category shop=>seafood for ES should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'ES'),
  'seafood',
  'get_subcategory shop=>seafood for ES should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'AD'),
  'food',
  'get_category shop=>seafood for AD should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'AD'),
  'seafood',
  'get_subcategory shop=>seafood for AD should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'CH'),
  'food',
  'get_category shop=>seafood for CH should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'CH'),
  'seafood',
  'get_subcategory shop=>seafood for CH should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'AT'),
  'food',
  'get_category shop=>seafood for AT should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'AT'),
  'seafood',
  'get_subcategory shop=>seafood for AT should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'PH'),
  'food',
  'get_category shop=>seafood for PH should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'PH'),
  'seafood',
  'get_subcategory shop=>seafood for PH should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'FI'),
  'food',
  'get_category shop=>seafood for FI should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'FI'),
  'seafood',
  'get_subcategory shop=>seafood for FI should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'MC'),
  'food',
  'get_category shop=>seafood for MC should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'MC'),
  'seafood',
  'get_subcategory shop=>seafood for MC should be seafood'
);

SELECT is(
  get_category('shop=>seafood'::hstore, 'CD'),
  'food',
  'get_category shop=>seafood for CD should be food'
);

SELECT is(
  get_subcategory('shop=>seafood'::hstore, 'CD'),
  'seafood',
  'get_subcategory shop=>seafood for CD should be seafood'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'DE'),
  'food',
  'get_category shop=>greengrocer for DE should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'DE'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for DE should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'FR'),
  'food',
  'get_category shop=>greengrocer for FR should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'FR'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for FR should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'ES'),
  'food',
  'get_category shop=>greengrocer for ES should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'ES'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for ES should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'AD'),
  'food',
  'get_category shop=>greengrocer for AD should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'AD'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for AD should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'CH'),
  'food',
  'get_category shop=>greengrocer for CH should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'CH'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for CH should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'AT'),
  'food',
  'get_category shop=>greengrocer for AT should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'AT'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for AT should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'PH'),
  'food',
  'get_category shop=>greengrocer for PH should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'PH'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for PH should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'FI'),
  'food',
  'get_category shop=>greengrocer for FI should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'FI'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for FI should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'MC'),
  'food',
  'get_category shop=>greengrocer for MC should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'MC'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for MC should be greengrocer'
);

SELECT is(
  get_category('shop=>greengrocer'::hstore, 'CD'),
  'food',
  'get_category shop=>greengrocer for CD should be food'
);

SELECT is(
  get_subcategory('shop=>greengrocer'::hstore, 'CD'),
  'greengrocer',
  'get_subcategory shop=>greengrocer for CD should be greengrocer'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'DE'),
  'food',
  'get_category shop=>deli for DE should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'DE'),
  'grocery',
  'get_subcategory shop=>deli for DE should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'FR'),
  'food',
  'get_category shop=>deli for FR should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'FR'),
  'grocery',
  'get_subcategory shop=>deli for FR should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'ES'),
  'food',
  'get_category shop=>deli for ES should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'ES'),
  'grocery',
  'get_subcategory shop=>deli for ES should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'AD'),
  'food',
  'get_category shop=>deli for AD should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'AD'),
  'grocery',
  'get_subcategory shop=>deli for AD should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'CH'),
  'food',
  'get_category shop=>deli for CH should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'CH'),
  'grocery',
  'get_subcategory shop=>deli for CH should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'AT'),
  'food',
  'get_category shop=>deli for AT should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'AT'),
  'grocery',
  'get_subcategory shop=>deli for AT should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'PH'),
  'food',
  'get_category shop=>deli for PH should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'PH'),
  'grocery',
  'get_subcategory shop=>deli for PH should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'FI'),
  'food',
  'get_category shop=>deli for FI should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'FI'),
  'grocery',
  'get_subcategory shop=>deli for FI should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'MC'),
  'food',
  'get_category shop=>deli for MC should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'MC'),
  'grocery',
  'get_subcategory shop=>deli for MC should be grocery'
);

SELECT is(
  get_category('shop=>deli'::hstore, 'CD'),
  'food',
  'get_category shop=>deli for CD should be food'
);

SELECT is(
  get_subcategory('shop=>deli'::hstore, 'CD'),
  'grocery',
  'get_subcategory shop=>deli for CD should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'DE'),
  'food',
  'get_category shop=>spices for DE should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'DE'),
  'grocery',
  'get_subcategory shop=>spices for DE should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'FR'),
  'food',
  'get_category shop=>spices for FR should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'FR'),
  'grocery',
  'get_subcategory shop=>spices for FR should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'ES'),
  'food',
  'get_category shop=>spices for ES should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'ES'),
  'grocery',
  'get_subcategory shop=>spices for ES should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'AD'),
  'food',
  'get_category shop=>spices for AD should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'AD'),
  'grocery',
  'get_subcategory shop=>spices for AD should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'CH'),
  'food',
  'get_category shop=>spices for CH should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'CH'),
  'grocery',
  'get_subcategory shop=>spices for CH should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'AT'),
  'food',
  'get_category shop=>spices for AT should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'AT'),
  'grocery',
  'get_subcategory shop=>spices for AT should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'PH'),
  'food',
  'get_category shop=>spices for PH should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'PH'),
  'grocery',
  'get_subcategory shop=>spices for PH should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'FI'),
  'food',
  'get_category shop=>spices for FI should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'FI'),
  'grocery',
  'get_subcategory shop=>spices for FI should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'MC'),
  'food',
  'get_category shop=>spices for MC should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'MC'),
  'grocery',
  'get_subcategory shop=>spices for MC should be grocery'
);

SELECT is(
  get_category('shop=>spices'::hstore, 'CD'),
  'food',
  'get_category shop=>spices for CD should be food'
);

SELECT is(
  get_subcategory('shop=>spices'::hstore, 'CD'),
  'grocery',
  'get_subcategory shop=>spices for CD should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'DE'),
  'food',
  'get_category shop=>honey for DE should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'DE'),
  'grocery',
  'get_subcategory shop=>honey for DE should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'FR'),
  'food',
  'get_category shop=>honey for FR should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'FR'),
  'grocery',
  'get_subcategory shop=>honey for FR should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'ES'),
  'food',
  'get_category shop=>honey for ES should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'ES'),
  'grocery',
  'get_subcategory shop=>honey for ES should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'AD'),
  'food',
  'get_category shop=>honey for AD should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'AD'),
  'grocery',
  'get_subcategory shop=>honey for AD should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'CH'),
  'food',
  'get_category shop=>honey for CH should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'CH'),
  'grocery',
  'get_subcategory shop=>honey for CH should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'AT'),
  'food',
  'get_category shop=>honey for AT should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'AT'),
  'grocery',
  'get_subcategory shop=>honey for AT should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'PH'),
  'food',
  'get_category shop=>honey for PH should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'PH'),
  'grocery',
  'get_subcategory shop=>honey for PH should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'FI'),
  'food',
  'get_category shop=>honey for FI should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'FI'),
  'grocery',
  'get_subcategory shop=>honey for FI should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'MC'),
  'food',
  'get_category shop=>honey for MC should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'MC'),
  'grocery',
  'get_subcategory shop=>honey for MC should be grocery'
);

SELECT is(
  get_category('shop=>honey'::hstore, 'CD'),
  'food',
  'get_category shop=>honey for CD should be food'
);

SELECT is(
  get_subcategory('shop=>honey'::hstore, 'CD'),
  'grocery',
  'get_subcategory shop=>honey for CD should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'DE'),
  'food',
  'get_category shop=>health_food for DE should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'DE'),
  'grocery',
  'get_subcategory shop=>health_food for DE should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'FR'),
  'food',
  'get_category shop=>health_food for FR should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'FR'),
  'grocery',
  'get_subcategory shop=>health_food for FR should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'ES'),
  'food',
  'get_category shop=>health_food for ES should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'ES'),
  'grocery',
  'get_subcategory shop=>health_food for ES should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'AD'),
  'food',
  'get_category shop=>health_food for AD should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'AD'),
  'grocery',
  'get_subcategory shop=>health_food for AD should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'CH'),
  'food',
  'get_category shop=>health_food for CH should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'CH'),
  'grocery',
  'get_subcategory shop=>health_food for CH should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'AT'),
  'food',
  'get_category shop=>health_food for AT should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'AT'),
  'grocery',
  'get_subcategory shop=>health_food for AT should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'PH'),
  'food',
  'get_category shop=>health_food for PH should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'PH'),
  'grocery',
  'get_subcategory shop=>health_food for PH should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'FI'),
  'food',
  'get_category shop=>health_food for FI should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'FI'),
  'grocery',
  'get_subcategory shop=>health_food for FI should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'MC'),
  'food',
  'get_category shop=>health_food for MC should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'MC'),
  'grocery',
  'get_subcategory shop=>health_food for MC should be grocery'
);

SELECT is(
  get_category('shop=>health_food'::hstore, 'CD'),
  'food',
  'get_category shop=>health_food for CD should be food'
);

SELECT is(
  get_subcategory('shop=>health_food'::hstore, 'CD'),
  'grocery',
  'get_subcategory shop=>health_food for CD should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'DE'),
  'food',
  'get_category shop=>pasta for DE should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'DE'),
  'grocery',
  'get_subcategory shop=>pasta for DE should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'FR'),
  'food',
  'get_category shop=>pasta for FR should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'FR'),
  'grocery',
  'get_subcategory shop=>pasta for FR should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'ES'),
  'food',
  'get_category shop=>pasta for ES should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'ES'),
  'grocery',
  'get_subcategory shop=>pasta for ES should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'AD'),
  'food',
  'get_category shop=>pasta for AD should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'AD'),
  'grocery',
  'get_subcategory shop=>pasta for AD should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'CH'),
  'food',
  'get_category shop=>pasta for CH should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'CH'),
  'grocery',
  'get_subcategory shop=>pasta for CH should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'AT'),
  'food',
  'get_category shop=>pasta for AT should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'AT'),
  'grocery',
  'get_subcategory shop=>pasta for AT should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'PH'),
  'food',
  'get_category shop=>pasta for PH should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'PH'),
  'grocery',
  'get_subcategory shop=>pasta for PH should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'FI'),
  'food',
  'get_category shop=>pasta for FI should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'FI'),
  'grocery',
  'get_subcategory shop=>pasta for FI should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'MC'),
  'food',
  'get_category shop=>pasta for MC should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'MC'),
  'grocery',
  'get_subcategory shop=>pasta for MC should be grocery'
);

SELECT is(
  get_category('shop=>pasta'::hstore, 'CD'),
  'food',
  'get_category shop=>pasta for CD should be food'
);

SELECT is(
  get_subcategory('shop=>pasta'::hstore, 'CD'),
  'grocery',
  'get_subcategory shop=>pasta for CD should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'DE'),
  'food',
  'get_category shop=>cannery for DE should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'DE'),
  'grocery',
  'get_subcategory shop=>cannery for DE should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'FR'),
  'food',
  'get_category shop=>cannery for FR should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'FR'),
  'grocery',
  'get_subcategory shop=>cannery for FR should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'ES'),
  'food',
  'get_category shop=>cannery for ES should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'ES'),
  'grocery',
  'get_subcategory shop=>cannery for ES should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'AD'),
  'food',
  'get_category shop=>cannery for AD should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'AD'),
  'grocery',
  'get_subcategory shop=>cannery for AD should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'CH'),
  'food',
  'get_category shop=>cannery for CH should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'CH'),
  'grocery',
  'get_subcategory shop=>cannery for CH should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'AT'),
  'food',
  'get_category shop=>cannery for AT should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'AT'),
  'grocery',
  'get_subcategory shop=>cannery for AT should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'PH'),
  'food',
  'get_category shop=>cannery for PH should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'PH'),
  'grocery',
  'get_subcategory shop=>cannery for PH should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'FI'),
  'food',
  'get_category shop=>cannery for FI should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'FI'),
  'grocery',
  'get_subcategory shop=>cannery for FI should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'MC'),
  'food',
  'get_category shop=>cannery for MC should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'MC'),
  'grocery',
  'get_subcategory shop=>cannery for MC should be grocery'
);

SELECT is(
  get_category('shop=>cannery'::hstore, 'CD'),
  'food',
  'get_category shop=>cannery for CD should be food'
);

SELECT is(
  get_subcategory('shop=>cannery'::hstore, 'CD'),
  'grocery',
  'get_subcategory shop=>cannery for CD should be grocery'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'DE'),
  'food',
  'get_category shop=>chocolate for DE should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'DE'),
  'chocolate',
  'get_subcategory shop=>chocolate for DE should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'FR'),
  'food',
  'get_category shop=>chocolate for FR should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'FR'),
  'chocolate',
  'get_subcategory shop=>chocolate for FR should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'ES'),
  'food',
  'get_category shop=>chocolate for ES should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'ES'),
  'chocolate',
  'get_subcategory shop=>chocolate for ES should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'AD'),
  'food',
  'get_category shop=>chocolate for AD should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'AD'),
  'chocolate',
  'get_subcategory shop=>chocolate for AD should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'CH'),
  'food',
  'get_category shop=>chocolate for CH should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'CH'),
  'chocolate',
  'get_subcategory shop=>chocolate for CH should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'AT'),
  'food',
  'get_category shop=>chocolate for AT should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'AT'),
  'chocolate',
  'get_subcategory shop=>chocolate for AT should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'PH'),
  'food',
  'get_category shop=>chocolate for PH should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'PH'),
  'chocolate',
  'get_subcategory shop=>chocolate for PH should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'FI'),
  'food',
  'get_category shop=>chocolate for FI should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'FI'),
  'chocolate',
  'get_subcategory shop=>chocolate for FI should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'MC'),
  'food',
  'get_category shop=>chocolate for MC should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'MC'),
  'chocolate',
  'get_subcategory shop=>chocolate for MC should be chocolate'
);

SELECT is(
  get_category('shop=>chocolate'::hstore, 'CD'),
  'food',
  'get_category shop=>chocolate for CD should be food'
);

SELECT is(
  get_subcategory('shop=>chocolate'::hstore, 'CD'),
  'chocolate',
  'get_subcategory shop=>chocolate for CD should be chocolate'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'DE'),
  'food',
  'get_category shop=>tea for DE should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'DE'),
  'tea',
  'get_subcategory shop=>tea for DE should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'FR'),
  'food',
  'get_category shop=>tea for FR should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'FR'),
  'tea',
  'get_subcategory shop=>tea for FR should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'ES'),
  'food',
  'get_category shop=>tea for ES should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'ES'),
  'tea',
  'get_subcategory shop=>tea for ES should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'AD'),
  'food',
  'get_category shop=>tea for AD should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'AD'),
  'tea',
  'get_subcategory shop=>tea for AD should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'CH'),
  'food',
  'get_category shop=>tea for CH should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'CH'),
  'tea',
  'get_subcategory shop=>tea for CH should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'AT'),
  'food',
  'get_category shop=>tea for AT should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'AT'),
  'tea',
  'get_subcategory shop=>tea for AT should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'PH'),
  'food',
  'get_category shop=>tea for PH should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'PH'),
  'tea',
  'get_subcategory shop=>tea for PH should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'FI'),
  'food',
  'get_category shop=>tea for FI should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'FI'),
  'tea',
  'get_subcategory shop=>tea for FI should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'MC'),
  'food',
  'get_category shop=>tea for MC should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'MC'),
  'tea',
  'get_subcategory shop=>tea for MC should be tea'
);

SELECT is(
  get_category('shop=>tea'::hstore, 'CD'),
  'food',
  'get_category shop=>tea for CD should be food'
);

SELECT is(
  get_subcategory('shop=>tea'::hstore, 'CD'),
  'tea',
  'get_subcategory shop=>tea for CD should be tea'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'DE'),
  'food',
  'get_category shop=>coffee for DE should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'DE'),
  'coffee',
  'get_subcategory shop=>coffee for DE should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'FR'),
  'food',
  'get_category shop=>coffee for FR should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'FR'),
  'coffee',
  'get_subcategory shop=>coffee for FR should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'ES'),
  'food',
  'get_category shop=>coffee for ES should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'ES'),
  'coffee',
  'get_subcategory shop=>coffee for ES should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'AD'),
  'food',
  'get_category shop=>coffee for AD should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'AD'),
  'coffee',
  'get_subcategory shop=>coffee for AD should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'CH'),
  'food',
  'get_category shop=>coffee for CH should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'CH'),
  'coffee',
  'get_subcategory shop=>coffee for CH should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'AT'),
  'food',
  'get_category shop=>coffee for AT should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'AT'),
  'coffee',
  'get_subcategory shop=>coffee for AT should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'PH'),
  'food',
  'get_category shop=>coffee for PH should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'PH'),
  'coffee',
  'get_subcategory shop=>coffee for PH should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'FI'),
  'food',
  'get_category shop=>coffee for FI should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'FI'),
  'coffee',
  'get_subcategory shop=>coffee for FI should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'MC'),
  'food',
  'get_category shop=>coffee for MC should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'MC'),
  'coffee',
  'get_subcategory shop=>coffee for MC should be coffee'
);

SELECT is(
  get_category('shop=>coffee'::hstore, 'CD'),
  'food',
  'get_category shop=>coffee for CD should be food'
);

SELECT is(
  get_subcategory('shop=>coffee'::hstore, 'CD'),
  'coffee',
  'get_subcategory shop=>coffee for CD should be coffee'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'DE'),
  'food',
  'get_category shop=>dairy for DE should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'DE'),
  'dairy',
  'get_subcategory shop=>dairy for DE should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'FR'),
  'food',
  'get_category shop=>dairy for FR should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'FR'),
  'dairy',
  'get_subcategory shop=>dairy for FR should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'ES'),
  'food',
  'get_category shop=>dairy for ES should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'ES'),
  'dairy',
  'get_subcategory shop=>dairy for ES should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'AD'),
  'food',
  'get_category shop=>dairy for AD should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'AD'),
  'dairy',
  'get_subcategory shop=>dairy for AD should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'CH'),
  'food',
  'get_category shop=>dairy for CH should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'CH'),
  'dairy',
  'get_subcategory shop=>dairy for CH should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'AT'),
  'food',
  'get_category shop=>dairy for AT should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'AT'),
  'dairy',
  'get_subcategory shop=>dairy for AT should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'PH'),
  'food',
  'get_category shop=>dairy for PH should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'PH'),
  'dairy',
  'get_subcategory shop=>dairy for PH should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'FI'),
  'food',
  'get_category shop=>dairy for FI should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'FI'),
  'dairy',
  'get_subcategory shop=>dairy for FI should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'MC'),
  'food',
  'get_category shop=>dairy for MC should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'MC'),
  'dairy',
  'get_subcategory shop=>dairy for MC should be dairy'
);

SELECT is(
  get_category('shop=>dairy'::hstore, 'CD'),
  'food',
  'get_category shop=>dairy for CD should be food'
);

SELECT is(
  get_subcategory('shop=>dairy'::hstore, 'CD'),
  'dairy',
  'get_subcategory shop=>dairy for CD should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'DE'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for DE should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'DE'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for DE should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'FR'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for FR should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'FR'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for FR should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'ES'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for ES should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'ES'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for ES should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'AD'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for AD should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'AD'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for AD should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'CH'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for CH should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'CH'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for CH should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'AT'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for AT should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'AT'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for AT should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'PH'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for PH should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'PH'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for PH should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'FI'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for FI should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'FI'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for FI should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'MC'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for MC should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'MC'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for MC should be dairy'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>milk'::hstore, 'CD'),
  'food',
  'get_category amenity=>vending_machine, vending=>milk for CD should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>milk'::hstore, 'CD'),
  'dairy',
  'get_subcategory amenity=>vending_machine, vending=>milk for CD should be dairy'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'DE'),
  'food',
  'get_category shop=>confectionery for DE should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'DE'),
  'confectionery',
  'get_subcategory shop=>confectionery for DE should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'FR'),
  'food',
  'get_category shop=>confectionery for FR should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'FR'),
  'confectionery',
  'get_subcategory shop=>confectionery for FR should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'ES'),
  'food',
  'get_category shop=>confectionery for ES should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'ES'),
  'confectionery',
  'get_subcategory shop=>confectionery for ES should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'AD'),
  'food',
  'get_category shop=>confectionery for AD should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'AD'),
  'confectionery',
  'get_subcategory shop=>confectionery for AD should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'CH'),
  'food',
  'get_category shop=>confectionery for CH should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'CH'),
  'confectionery',
  'get_subcategory shop=>confectionery for CH should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'AT'),
  'food',
  'get_category shop=>confectionery for AT should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'AT'),
  'confectionery',
  'get_subcategory shop=>confectionery for AT should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'PH'),
  'food',
  'get_category shop=>confectionery for PH should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'PH'),
  'confectionery',
  'get_subcategory shop=>confectionery for PH should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'FI'),
  'food',
  'get_category shop=>confectionery for FI should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'FI'),
  'confectionery',
  'get_subcategory shop=>confectionery for FI should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'MC'),
  'food',
  'get_category shop=>confectionery for MC should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'MC'),
  'confectionery',
  'get_subcategory shop=>confectionery for MC should be confectionery'
);

SELECT is(
  get_category('shop=>confectionery'::hstore, 'CD'),
  'food',
  'get_category shop=>confectionery for CD should be food'
);

SELECT is(
  get_subcategory('shop=>confectionery'::hstore, 'CD'),
  'confectionery',
  'get_subcategory shop=>confectionery for CD should be confectionery'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'DE'),
  'food',
  'get_category shop=>farm for DE should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'DE'),
  'farm',
  'get_subcategory shop=>farm for DE should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'FR'),
  'food',
  'get_category shop=>farm for FR should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'FR'),
  'farm',
  'get_subcategory shop=>farm for FR should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'ES'),
  'food',
  'get_category shop=>farm for ES should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'ES'),
  'farm',
  'get_subcategory shop=>farm for ES should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'AD'),
  'food',
  'get_category shop=>farm for AD should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'AD'),
  'farm',
  'get_subcategory shop=>farm for AD should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'CH'),
  'food',
  'get_category shop=>farm for CH should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'CH'),
  'farm',
  'get_subcategory shop=>farm for CH should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'AT'),
  'food',
  'get_category shop=>farm for AT should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'AT'),
  'farm',
  'get_subcategory shop=>farm for AT should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'PH'),
  'food',
  'get_category shop=>farm for PH should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'PH'),
  'farm',
  'get_subcategory shop=>farm for PH should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'FI'),
  'food',
  'get_category shop=>farm for FI should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'FI'),
  'farm',
  'get_subcategory shop=>farm for FI should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'MC'),
  'food',
  'get_category shop=>farm for MC should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'MC'),
  'farm',
  'get_subcategory shop=>farm for MC should be farm'
);

SELECT is(
  get_category('shop=>farm'::hstore, 'CD'),
  'food',
  'get_category shop=>farm for CD should be food'
);

SELECT is(
  get_subcategory('shop=>farm'::hstore, 'CD'),
  'farm',
  'get_subcategory shop=>farm for CD should be farm'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'DE'),
  'food',
  'get_category amenity=>marketplace for DE should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'DE'),
  'marketplace',
  'get_subcategory amenity=>marketplace for DE should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'FR'),
  'food',
  'get_category amenity=>marketplace for FR should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'FR'),
  'marketplace',
  'get_subcategory amenity=>marketplace for FR should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'ES'),
  'food',
  'get_category amenity=>marketplace for ES should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'ES'),
  'marketplace',
  'get_subcategory amenity=>marketplace for ES should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'AD'),
  'food',
  'get_category amenity=>marketplace for AD should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'AD'),
  'marketplace',
  'get_subcategory amenity=>marketplace for AD should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'CH'),
  'food',
  'get_category amenity=>marketplace for CH should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'CH'),
  'marketplace',
  'get_subcategory amenity=>marketplace for CH should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'AT'),
  'food',
  'get_category amenity=>marketplace for AT should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'AT'),
  'marketplace',
  'get_subcategory amenity=>marketplace for AT should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'PH'),
  'food',
  'get_category amenity=>marketplace for PH should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'PH'),
  'marketplace',
  'get_subcategory amenity=>marketplace for PH should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'FI'),
  'food',
  'get_category amenity=>marketplace for FI should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'FI'),
  'marketplace',
  'get_subcategory amenity=>marketplace for FI should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'MC'),
  'food',
  'get_category amenity=>marketplace for MC should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'MC'),
  'marketplace',
  'get_subcategory amenity=>marketplace for MC should be marketplace'
);

SELECT is(
  get_category('amenity=>marketplace'::hstore, 'CD'),
  'food',
  'get_category amenity=>marketplace for CD should be food'
);

SELECT is(
  get_subcategory('amenity=>marketplace'::hstore, 'CD'),
  'marketplace',
  'get_subcategory amenity=>marketplace for CD should be marketplace'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'DE'),
  'food',
  'get_category shop=>bakery for DE should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'DE'),
  'bakery',
  'get_subcategory shop=>bakery for DE should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'FR'),
  'food',
  'get_category shop=>bakery for FR should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'FR'),
  'bakery',
  'get_subcategory shop=>bakery for FR should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'ES'),
  'food',
  'get_category shop=>bakery for ES should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'ES'),
  'bakery',
  'get_subcategory shop=>bakery for ES should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'AD'),
  'food',
  'get_category shop=>bakery for AD should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'AD'),
  'bakery',
  'get_subcategory shop=>bakery for AD should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'CH'),
  'food',
  'get_category shop=>bakery for CH should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'CH'),
  'bakery',
  'get_subcategory shop=>bakery for CH should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'AT'),
  'food',
  'get_category shop=>bakery for AT should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'AT'),
  'bakery',
  'get_subcategory shop=>bakery for AT should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'PH'),
  'food',
  'get_category shop=>bakery for PH should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'PH'),
  'bakery',
  'get_subcategory shop=>bakery for PH should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'FI'),
  'food',
  'get_category shop=>bakery for FI should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'FI'),
  'bakery',
  'get_subcategory shop=>bakery for FI should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'MC'),
  'food',
  'get_category shop=>bakery for MC should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'MC'),
  'bakery',
  'get_subcategory shop=>bakery for MC should be bakery'
);

SELECT is(
  get_category('shop=>bakery'::hstore, 'CD'),
  'food',
  'get_category shop=>bakery for CD should be food'
);

SELECT is(
  get_subcategory('shop=>bakery'::hstore, 'CD'),
  'bakery',
  'get_subcategory shop=>bakery for CD should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'DE'),
  'food',
  'get_category shop=>pastry for DE should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'DE'),
  'bakery',
  'get_subcategory shop=>pastry for DE should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'FR'),
  'food',
  'get_category shop=>pastry for FR should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'FR'),
  'bakery',
  'get_subcategory shop=>pastry for FR should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'ES'),
  'food',
  'get_category shop=>pastry for ES should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'ES'),
  'bakery',
  'get_subcategory shop=>pastry for ES should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'AD'),
  'food',
  'get_category shop=>pastry for AD should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'AD'),
  'bakery',
  'get_subcategory shop=>pastry for AD should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'CH'),
  'food',
  'get_category shop=>pastry for CH should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'CH'),
  'bakery',
  'get_subcategory shop=>pastry for CH should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'AT'),
  'food',
  'get_category shop=>pastry for AT should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'AT'),
  'bakery',
  'get_subcategory shop=>pastry for AT should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'PH'),
  'food',
  'get_category shop=>pastry for PH should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'PH'),
  'bakery',
  'get_subcategory shop=>pastry for PH should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'FI'),
  'food',
  'get_category shop=>pastry for FI should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'FI'),
  'bakery',
  'get_subcategory shop=>pastry for FI should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'MC'),
  'food',
  'get_category shop=>pastry for MC should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'MC'),
  'bakery',
  'get_subcategory shop=>pastry for MC should be bakery'
);

SELECT is(
  get_category('shop=>pastry'::hstore, 'CD'),
  'food',
  'get_category shop=>pastry for CD should be food'
);

SELECT is(
  get_subcategory('shop=>pastry'::hstore, 'CD'),
  'bakery',
  'get_subcategory shop=>pastry for CD should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'DE'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for DE should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'DE'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for DE should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'FR'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for FR should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'FR'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for FR should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'ES'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for ES should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'ES'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for ES should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'AD'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for AD should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'AD'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for AD should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'CH'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for CH should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'CH'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for CH should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'AT'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for AT should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'AT'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for AT should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'PH'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for PH should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'PH'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for PH should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'FI'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for FI should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'FI'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for FI should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'MC'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for MC should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'MC'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for MC should be bakery'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bread'::hstore, 'CD'),
  'food',
  'get_category amenity=>vending_machine, vending=>bread for CD should be food'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bread'::hstore, 'CD'),
  'bakery',
  'get_subcategory amenity=>vending_machine, vending=>bread for CD should be bakery'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'CD'),
  'food',
  'get_category shop=>alcohol for CD should be food'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'CD'),
  'alcohol',
  'get_subcategory shop=>alcohol for CD should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'CD'),
  'food',
  'get_category shop=>beverages for CD should be food'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'CD'),
  'alcohol',
  'get_subcategory shop=>beverages for CD should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'CD'),
  'food',
  'get_category shop=>wine for CD should be food'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'CD'),
  'alcohol',
  'get_subcategory shop=>wine for CD should be alcohol'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'DE'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'DE'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for DE should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'FR'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for FR should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'FR'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for FR should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'ES'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for ES should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'ES'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for ES should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'AD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for AD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'AD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for AD should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'CH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'CH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for CH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'AT'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'AT'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for AT should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'PH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for PH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'PH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for PH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'FI'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for FI should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'FI'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for FI should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'MC'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for MC should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'MC'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for MC should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>pizza'::hstore, 'CD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>pizza for CD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>pizza'::hstore, 'CD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>pizza for CD should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'DE'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'DE'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for DE should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'FR'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for FR should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'FR'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for FR should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'ES'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for ES should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'ES'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for ES should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'AD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for AD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'AD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for AD should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'CH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'CH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for CH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'AT'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'AT'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for AT should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'PH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for PH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'PH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for PH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'FI'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for FI should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'FI'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for FI should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'MC'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for MC should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'MC'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for MC should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>drinks'::hstore, 'CD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>drinks for CD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>drinks'::hstore, 'CD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>drinks for CD should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'DE'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'DE'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for DE should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'FR'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for FR should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'FR'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for FR should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'ES'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for ES should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'ES'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for ES should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'AD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for AD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'AD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for AD should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'CH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'CH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for CH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'AT'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'AT'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for AT should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'PH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for PH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'PH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for PH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'FI'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for FI should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'FI'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for FI should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'MC'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for MC should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'MC'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for MC should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>water'::hstore, 'CD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>water for CD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>water'::hstore, 'CD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>water for CD should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'DE'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'DE'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for DE should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'FR'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for FR should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'FR'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for FR should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'ES'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for ES should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'ES'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for ES should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'AD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for AD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'AD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for AD should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'CH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'CH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for CH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'AT'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'AT'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for AT should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'PH'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for PH should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'PH'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for PH should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'FI'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for FI should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'FI'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for FI should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'MC'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for MC should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'MC'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for MC should be vending_machine'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>sweets'::hstore, 'CD'),
  'eat',
  'get_category amenity=>vending_machine, vending=>sweets for CD should be eat'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>sweets'::hstore, 'CD'),
  'vending_machine',
  'get_subcategory amenity=>vending_machine, vending=>sweets for CD should be vending_machine'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'DE'),
  'eat',
  'get_category amenity=>restaurant for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'DE'),
  'restaurant',
  'get_subcategory amenity=>restaurant for DE should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'FR'),
  'eat',
  'get_category amenity=>restaurant for FR should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'FR'),
  'restaurant',
  'get_subcategory amenity=>restaurant for FR should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'ES'),
  'eat',
  'get_category amenity=>restaurant for ES should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'ES'),
  'restaurant',
  'get_subcategory amenity=>restaurant for ES should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'AD'),
  'eat',
  'get_category amenity=>restaurant for AD should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'AD'),
  'restaurant',
  'get_subcategory amenity=>restaurant for AD should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'CH'),
  'eat',
  'get_category amenity=>restaurant for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'CH'),
  'restaurant',
  'get_subcategory amenity=>restaurant for CH should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'AT'),
  'eat',
  'get_category amenity=>restaurant for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'AT'),
  'restaurant',
  'get_subcategory amenity=>restaurant for AT should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'PH'),
  'eat',
  'get_category amenity=>restaurant for PH should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'PH'),
  'restaurant',
  'get_subcategory amenity=>restaurant for PH should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'FI'),
  'eat',
  'get_category amenity=>restaurant for FI should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'FI'),
  'restaurant',
  'get_subcategory amenity=>restaurant for FI should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'MC'),
  'eat',
  'get_category amenity=>restaurant for MC should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'MC'),
  'restaurant',
  'get_subcategory amenity=>restaurant for MC should be restaurant'
);

SELECT is(
  get_category('amenity=>restaurant'::hstore, 'CD'),
  'eat',
  'get_category amenity=>restaurant for CD should be eat'
);

SELECT is(
  get_subcategory('amenity=>restaurant'::hstore, 'CD'),
  'restaurant',
  'get_subcategory amenity=>restaurant for CD should be restaurant'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'DE'),
  'eat',
  'get_category amenity=>fast_food for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'DE'),
  'fast_food',
  'get_subcategory amenity=>fast_food for DE should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'FR'),
  'eat',
  'get_category amenity=>fast_food for FR should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'FR'),
  'fast_food',
  'get_subcategory amenity=>fast_food for FR should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'ES'),
  'eat',
  'get_category amenity=>fast_food for ES should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'ES'),
  'fast_food',
  'get_subcategory amenity=>fast_food for ES should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'AD'),
  'eat',
  'get_category amenity=>fast_food for AD should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'AD'),
  'fast_food',
  'get_subcategory amenity=>fast_food for AD should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'CH'),
  'eat',
  'get_category amenity=>fast_food for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'CH'),
  'fast_food',
  'get_subcategory amenity=>fast_food for CH should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'AT'),
  'eat',
  'get_category amenity=>fast_food for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'AT'),
  'fast_food',
  'get_subcategory amenity=>fast_food for AT should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'PH'),
  'eat',
  'get_category amenity=>fast_food for PH should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'PH'),
  'fast_food',
  'get_subcategory amenity=>fast_food for PH should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'FI'),
  'eat',
  'get_category amenity=>fast_food for FI should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'FI'),
  'fast_food',
  'get_subcategory amenity=>fast_food for FI should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'MC'),
  'eat',
  'get_category amenity=>fast_food for MC should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'MC'),
  'fast_food',
  'get_subcategory amenity=>fast_food for MC should be fast_food'
);

SELECT is(
  get_category('amenity=>fast_food'::hstore, 'CD'),
  'eat',
  'get_category amenity=>fast_food for CD should be eat'
);

SELECT is(
  get_subcategory('amenity=>fast_food'::hstore, 'CD'),
  'fast_food',
  'get_subcategory amenity=>fast_food for CD should be fast_food'
);

SELECT is(
  get_category('amenity=>ice_cream'::hstore, 'DE'),
  'eat',
  'get_category amenity=>ice_cream for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>ice_cream'::hstore, 'DE'),
  'ice_cream',
  'get_subcategory amenity=>ice_cream for DE should be ice_cream'
);

SELECT is(
  get_category('amenity=>ice_cream'::hstore, 'AT'),
  'eat',
  'get_category amenity=>ice_cream for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>ice_cream'::hstore, 'AT'),
  'ice_cream',
  'get_subcategory amenity=>ice_cream for AT should be ice_cream'
);

SELECT is(
  get_category('amenity=>ice_cream'::hstore, 'CH'),
  'eat',
  'get_category amenity=>ice_cream for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>ice_cream'::hstore, 'CH'),
  'ice_cream',
  'get_subcategory amenity=>ice_cream for CH should be ice_cream'
);

SELECT is(
  get_category('amenity=>cafe, cuisine=>ice_cream'::hstore, 'DE'),
  'eat',
  'get_category amenity=>cafe, cuisine=>ice_cream for DE should be eat'
);

SELECT is(
  get_subcategory('amenity=>cafe, cuisine=>ice_cream'::hstore, 'DE'),
  'ice_cream',
  'get_subcategory amenity=>cafe, cuisine=>ice_cream for DE should be ice_cream'
);

SELECT is(
  get_category('amenity=>cafe, cuisine=>ice_cream'::hstore, 'AT'),
  'eat',
  'get_category amenity=>cafe, cuisine=>ice_cream for AT should be eat'
);

SELECT is(
  get_subcategory('amenity=>cafe, cuisine=>ice_cream'::hstore, 'AT'),
  'ice_cream',
  'get_subcategory amenity=>cafe, cuisine=>ice_cream for AT should be ice_cream'
);

SELECT is(
  get_category('amenity=>cafe, cuisine=>ice_cream'::hstore, 'CH'),
  'eat',
  'get_category amenity=>cafe, cuisine=>ice_cream for CH should be eat'
);

SELECT is(
  get_subcategory('amenity=>cafe, cuisine=>ice_cream'::hstore, 'CH'),
  'ice_cream',
  'get_subcategory amenity=>cafe, cuisine=>ice_cream for CH should be ice_cream'
);

SELECT is(
  get_category('shop=>ice_cream'::hstore, 'DE'),
  'eat',
  'get_category shop=>ice_cream for DE should be eat'
);

SELECT is(
  get_subcategory('shop=>ice_cream'::hstore, 'DE'),
  'ice_cream',
  'get_subcategory shop=>ice_cream for DE should be ice_cream'
);

SELECT is(
  get_category('shop=>ice_cream'::hstore, 'AT'),
  'eat',
  'get_category shop=>ice_cream for AT should be eat'
);

SELECT is(
  get_subcategory('shop=>ice_cream'::hstore, 'AT'),
  'ice_cream',
  'get_subcategory shop=>ice_cream for AT should be ice_cream'
);

SELECT is(
  get_category('shop=>ice_cream'::hstore, 'CH'),
  'eat',
  'get_category shop=>ice_cream for CH should be eat'
);

SELECT is(
  get_subcategory('shop=>ice_cream'::hstore, 'CH'),
  'ice_cream',
  'get_subcategory shop=>ice_cream for CH should be ice_cream'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory opening_hours:covid19=>*, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category delivery=>yes, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category delivery=>only, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category delivery=>yes, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery=>yes, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category delivery=>only, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery=>only, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>yes, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>only, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>yes, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway=>yes, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>only, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway=>only, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery:covid19=>yes, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory delivery:covid19=>only, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for DE should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for FR should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for ES should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for AD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for CH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for AT should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for PH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for FI should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for MC should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>cafe'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>cafe for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>cafe'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>cafe for CD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway:covid19=>yes, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'DE'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for DE should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FR'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for FR should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'ES'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for ES should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AD'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for AD should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CH'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for CH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'AT'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for AT should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'PH'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for PH should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'FI'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for FI should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'MC'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for MC should be cafe'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee'::hstore, 'CD'),
  'cafe',
  'get_subcategory takeaway:covid19=>only, amenity=>vending_machine, vending=>coffee for CD should be cafe'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('opening_hours:covid19=>*, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category opening_hours:covid19=>*, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory opening_hours:covid19=>*, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category delivery=>yes, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category delivery=>only, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category delivery=>only, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category delivery=>only, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category delivery=>only, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category delivery=>only, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category delivery=>only, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category delivery=>only, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category delivery=>only, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category delivery=>only, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category delivery=>only, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery=>only, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('delivery=>yes, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category delivery=>yes, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>yes, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery=>yes, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category delivery=>only, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category delivery=>only, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category delivery=>only, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category delivery=>only, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category delivery=>only, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category delivery=>only, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category delivery=>only, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category delivery=>only, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category delivery=>only, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('delivery=>only, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category delivery=>only, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('delivery=>only, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery=>only, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>yes, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>only, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('takeaway=>yes, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>yes, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>yes, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway=>yes, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('takeaway=>only, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category takeaway=>only, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway=>only, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway=>only, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('delivery:covid19=>yes, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>yes, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>yes, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery:covid19=>yes, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('delivery:covid19=>only, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category delivery:covid19=>only, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('delivery:covid19=>only, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory delivery:covid19=>only, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for DE should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for FR should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for ES should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for AD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for CH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for AT should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for PH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for FI should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for MC should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>bar'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>bar for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>bar'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>bar for CD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>yes, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>yes, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>yes, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway:covid19=>yes, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'DE'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for DE should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'DE'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for DE should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'FR'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for FR should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'FR'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for FR should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'ES'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for ES should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'ES'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for ES should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'AD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for AD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'AD'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for AD should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'CH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for CH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'CH'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for CH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'AT'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for AT should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'AT'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for AT should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'PH'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for PH should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'PH'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for PH should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'FI'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for FI should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'FI'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for FI should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'MC'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for MC should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'MC'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for MC should be bar'
);

SELECT is(
  get_category('takeaway:covid19=>only, amenity=>pub'::hstore, 'CD'),
  'eat',
  'get_category takeaway:covid19=>only, amenity=>pub for CD should be eat'
);

SELECT is(
  get_subcategory('takeaway:covid19=>only, amenity=>pub'::hstore, 'CD'),
  'bar',
  'get_subcategory takeaway:covid19=>only, amenity=>pub for CD should be bar'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'DE'),
  'drugs',
  'get_category shop=>tobacco for DE should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'DE'),
  'tobacco',
  'get_subcategory shop=>tobacco for DE should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'FR'),
  'drugs',
  'get_category shop=>tobacco for FR should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'FR'),
  'tobacco',
  'get_subcategory shop=>tobacco for FR should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'ES'),
  'drugs',
  'get_category shop=>tobacco for ES should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'ES'),
  'tobacco',
  'get_subcategory shop=>tobacco for ES should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'AD'),
  'drugs',
  'get_category shop=>tobacco for AD should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'AD'),
  'tobacco',
  'get_subcategory shop=>tobacco for AD should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'CH'),
  'drugs',
  'get_category shop=>tobacco for CH should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'CH'),
  'tobacco',
  'get_subcategory shop=>tobacco for CH should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'AT'),
  'drugs',
  'get_category shop=>tobacco for AT should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'AT'),
  'tobacco',
  'get_subcategory shop=>tobacco for AT should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'PH'),
  'drugs',
  'get_category shop=>tobacco for PH should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'PH'),
  'tobacco',
  'get_subcategory shop=>tobacco for PH should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'FI'),
  'drugs',
  'get_category shop=>tobacco for FI should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'FI'),
  'tobacco',
  'get_subcategory shop=>tobacco for FI should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'MC'),
  'drugs',
  'get_category shop=>tobacco for MC should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'MC'),
  'tobacco',
  'get_subcategory shop=>tobacco for MC should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco'::hstore, 'CD'),
  'drugs',
  'get_category shop=>tobacco for CD should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco'::hstore, 'CD'),
  'tobacco',
  'get_subcategory shop=>tobacco for CD should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'DE'),
  'drugs',
  'get_category shop=>newsagent;tobacco for DE should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'DE'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for DE should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'FR'),
  'drugs',
  'get_category shop=>newsagent;tobacco for FR should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'FR'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for FR should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'ES'),
  'drugs',
  'get_category shop=>newsagent;tobacco for ES should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'ES'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for ES should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'AD'),
  'drugs',
  'get_category shop=>newsagent;tobacco for AD should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'AD'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for AD should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'CH'),
  'drugs',
  'get_category shop=>newsagent;tobacco for CH should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'CH'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for CH should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'AT'),
  'drugs',
  'get_category shop=>newsagent;tobacco for AT should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'AT'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for AT should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'PH'),
  'drugs',
  'get_category shop=>newsagent;tobacco for PH should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'PH'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for PH should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'FI'),
  'drugs',
  'get_category shop=>newsagent;tobacco for FI should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'FI'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for FI should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'MC'),
  'drugs',
  'get_category shop=>newsagent;tobacco for MC should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'MC'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for MC should be tobacco'
);

SELECT is(
  get_category('shop=>newsagent;tobacco'::hstore, 'CD'),
  'drugs',
  'get_category shop=>newsagent;tobacco for CD should be drugs'
);

SELECT is(
  get_subcategory('shop=>newsagent;tobacco'::hstore, 'CD'),
  'tobacco',
  'get_subcategory shop=>newsagent;tobacco for CD should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'DE'),
  'drugs',
  'get_category shop=>tobacco;newsagent for DE should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'DE'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for DE should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'FR'),
  'drugs',
  'get_category shop=>tobacco;newsagent for FR should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'FR'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for FR should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'ES'),
  'drugs',
  'get_category shop=>tobacco;newsagent for ES should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'ES'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for ES should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'AD'),
  'drugs',
  'get_category shop=>tobacco;newsagent for AD should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'AD'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for AD should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'CH'),
  'drugs',
  'get_category shop=>tobacco;newsagent for CH should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'CH'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for CH should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'AT'),
  'drugs',
  'get_category shop=>tobacco;newsagent for AT should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'AT'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for AT should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'PH'),
  'drugs',
  'get_category shop=>tobacco;newsagent for PH should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'PH'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for PH should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'FI'),
  'drugs',
  'get_category shop=>tobacco;newsagent for FI should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'FI'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for FI should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'MC'),
  'drugs',
  'get_category shop=>tobacco;newsagent for MC should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'MC'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for MC should be tobacco'
);

SELECT is(
  get_category('shop=>tobacco;newsagent'::hstore, 'CD'),
  'drugs',
  'get_category shop=>tobacco;newsagent for CD should be drugs'
);

SELECT is(
  get_subcategory('shop=>tobacco;newsagent'::hstore, 'CD'),
  'tobacco',
  'get_subcategory shop=>tobacco;newsagent for CD should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'DE'),
  'drugs',
  'get_category tobacco=>yes for DE should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'DE'),
  'tobacco',
  'get_subcategory tobacco=>yes for DE should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'FR'),
  'drugs',
  'get_category tobacco=>yes for FR should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'FR'),
  'tobacco',
  'get_subcategory tobacco=>yes for FR should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'ES'),
  'drugs',
  'get_category tobacco=>yes for ES should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'ES'),
  'tobacco',
  'get_subcategory tobacco=>yes for ES should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'AD'),
  'drugs',
  'get_category tobacco=>yes for AD should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'AD'),
  'tobacco',
  'get_subcategory tobacco=>yes for AD should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'CH'),
  'drugs',
  'get_category tobacco=>yes for CH should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'CH'),
  'tobacco',
  'get_subcategory tobacco=>yes for CH should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'AT'),
  'drugs',
  'get_category tobacco=>yes for AT should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'AT'),
  'tobacco',
  'get_subcategory tobacco=>yes for AT should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'PH'),
  'drugs',
  'get_category tobacco=>yes for PH should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'PH'),
  'tobacco',
  'get_subcategory tobacco=>yes for PH should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'FI'),
  'drugs',
  'get_category tobacco=>yes for FI should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'FI'),
  'tobacco',
  'get_subcategory tobacco=>yes for FI should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'MC'),
  'drugs',
  'get_category tobacco=>yes for MC should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'MC'),
  'tobacco',
  'get_subcategory tobacco=>yes for MC should be tobacco'
);

SELECT is(
  get_category('tobacco=>yes'::hstore, 'CD'),
  'drugs',
  'get_category tobacco=>yes for CD should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>yes'::hstore, 'CD'),
  'tobacco',
  'get_subcategory tobacco=>yes for CD should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'DE'),
  'drugs',
  'get_category tobacco=>only for DE should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'DE'),
  'tobacco',
  'get_subcategory tobacco=>only for DE should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'FR'),
  'drugs',
  'get_category tobacco=>only for FR should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'FR'),
  'tobacco',
  'get_subcategory tobacco=>only for FR should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'ES'),
  'drugs',
  'get_category tobacco=>only for ES should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'ES'),
  'tobacco',
  'get_subcategory tobacco=>only for ES should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'AD'),
  'drugs',
  'get_category tobacco=>only for AD should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'AD'),
  'tobacco',
  'get_subcategory tobacco=>only for AD should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'CH'),
  'drugs',
  'get_category tobacco=>only for CH should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'CH'),
  'tobacco',
  'get_subcategory tobacco=>only for CH should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'AT'),
  'drugs',
  'get_category tobacco=>only for AT should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'AT'),
  'tobacco',
  'get_subcategory tobacco=>only for AT should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'PH'),
  'drugs',
  'get_category tobacco=>only for PH should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'PH'),
  'tobacco',
  'get_subcategory tobacco=>only for PH should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'FI'),
  'drugs',
  'get_category tobacco=>only for FI should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'FI'),
  'tobacco',
  'get_subcategory tobacco=>only for FI should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'MC'),
  'drugs',
  'get_category tobacco=>only for MC should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'MC'),
  'tobacco',
  'get_subcategory tobacco=>only for MC should be tobacco'
);

SELECT is(
  get_category('tobacco=>only'::hstore, 'CD'),
  'drugs',
  'get_category tobacco=>only for CD should be drugs'
);

SELECT is(
  get_subcategory('tobacco=>only'::hstore, 'CD'),
  'tobacco',
  'get_subcategory tobacco=>only for CD should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'DE'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for DE should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'DE'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for DE should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'FR'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for FR should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'FR'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for FR should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'ES'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for ES should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'ES'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for ES should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'AD'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for AD should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'AD'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for AD should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'CH'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for CH should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'CH'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for CH should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'AT'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for AT should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'AT'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for AT should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'PH'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for PH should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'PH'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for PH should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'FI'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for FI should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'FI'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for FI should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'MC'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for MC should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'MC'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for MC should be tobacco'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>cigarettes'::hstore, 'CD'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>cigarettes for CD should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>cigarettes'::hstore, 'CD'),
  'tobacco',
  'get_subcategory amenity=>vending_machine, vending=>cigarettes for CD should be tobacco'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'DE'),
  'drugs',
  'get_category shop=>e-cigarette for DE should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'DE'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for DE should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'FR'),
  'drugs',
  'get_category shop=>e-cigarette for FR should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'FR'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for FR should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'ES'),
  'drugs',
  'get_category shop=>e-cigarette for ES should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'ES'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for ES should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'AD'),
  'drugs',
  'get_category shop=>e-cigarette for AD should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'AD'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for AD should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'CH'),
  'drugs',
  'get_category shop=>e-cigarette for CH should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'CH'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for CH should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'AT'),
  'drugs',
  'get_category shop=>e-cigarette for AT should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'AT'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for AT should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'PH'),
  'drugs',
  'get_category shop=>e-cigarette for PH should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'PH'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for PH should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'FI'),
  'drugs',
  'get_category shop=>e-cigarette for FI should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'FI'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for FI should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'MC'),
  'drugs',
  'get_category shop=>e-cigarette for MC should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'MC'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for MC should be e_cigarette'
);

SELECT is(
  get_category('shop=>e-cigarette'::hstore, 'CD'),
  'drugs',
  'get_category shop=>e-cigarette for CD should be drugs'
);

SELECT is(
  get_subcategory('shop=>e-cigarette'::hstore, 'CD'),
  'e_cigarette',
  'get_subcategory shop=>e-cigarette for CD should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'DE'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for DE should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'DE'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for DE should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'FR'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for FR should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'FR'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for FR should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'ES'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for ES should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'ES'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for ES should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'AD'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for AD should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'AD'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for AD should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'CH'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for CH should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'CH'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for CH should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'AT'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for AT should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'AT'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for AT should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'PH'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for PH should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'PH'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for PH should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'FI'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for FI should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'FI'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for FI should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'MC'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for MC should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'MC'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for MC should be e_cigarette'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'CD'),
  'drugs',
  'get_category amenity=>vending_machine, vending=>e-cigarettes for CD should be drugs'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>e-cigarettes'::hstore, 'CD'),
  'e_cigarette',
  'get_subcategory amenity=>vending_machine, vending=>e-cigarettes for CD should be e_cigarette'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'DE'),
  'drugs',
  'get_category shop=>alcohol for DE should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'DE'),
  'alcohol',
  'get_subcategory shop=>alcohol for DE should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'FR'),
  'drugs',
  'get_category shop=>alcohol for FR should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'FR'),
  'alcohol',
  'get_subcategory shop=>alcohol for FR should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'ES'),
  'drugs',
  'get_category shop=>alcohol for ES should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'ES'),
  'alcohol',
  'get_subcategory shop=>alcohol for ES should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'AD'),
  'drugs',
  'get_category shop=>alcohol for AD should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'AD'),
  'alcohol',
  'get_subcategory shop=>alcohol for AD should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'CH'),
  'drugs',
  'get_category shop=>alcohol for CH should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'CH'),
  'alcohol',
  'get_subcategory shop=>alcohol for CH should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'AT'),
  'drugs',
  'get_category shop=>alcohol for AT should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'AT'),
  'alcohol',
  'get_subcategory shop=>alcohol for AT should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'PH'),
  'drugs',
  'get_category shop=>alcohol for PH should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'PH'),
  'alcohol',
  'get_subcategory shop=>alcohol for PH should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'FI'),
  'drugs',
  'get_category shop=>alcohol for FI should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'FI'),
  'alcohol',
  'get_subcategory shop=>alcohol for FI should be alcohol'
);

SELECT is(
  get_category('shop=>alcohol'::hstore, 'MC'),
  'drugs',
  'get_category shop=>alcohol for MC should be drugs'
);

SELECT is(
  get_subcategory('shop=>alcohol'::hstore, 'MC'),
  'alcohol',
  'get_subcategory shop=>alcohol for MC should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'DE'),
  'drugs',
  'get_category shop=>beverages for DE should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'DE'),
  'alcohol',
  'get_subcategory shop=>beverages for DE should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'FR'),
  'drugs',
  'get_category shop=>beverages for FR should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'FR'),
  'alcohol',
  'get_subcategory shop=>beverages for FR should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'ES'),
  'drugs',
  'get_category shop=>beverages for ES should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'ES'),
  'alcohol',
  'get_subcategory shop=>beverages for ES should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'AD'),
  'drugs',
  'get_category shop=>beverages for AD should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'AD'),
  'alcohol',
  'get_subcategory shop=>beverages for AD should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'CH'),
  'drugs',
  'get_category shop=>beverages for CH should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'CH'),
  'alcohol',
  'get_subcategory shop=>beverages for CH should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'AT'),
  'drugs',
  'get_category shop=>beverages for AT should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'AT'),
  'alcohol',
  'get_subcategory shop=>beverages for AT should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'PH'),
  'drugs',
  'get_category shop=>beverages for PH should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'PH'),
  'alcohol',
  'get_subcategory shop=>beverages for PH should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'FI'),
  'drugs',
  'get_category shop=>beverages for FI should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'FI'),
  'alcohol',
  'get_subcategory shop=>beverages for FI should be alcohol'
);

SELECT is(
  get_category('shop=>beverages'::hstore, 'MC'),
  'drugs',
  'get_category shop=>beverages for MC should be drugs'
);

SELECT is(
  get_subcategory('shop=>beverages'::hstore, 'MC'),
  'alcohol',
  'get_subcategory shop=>beverages for MC should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'DE'),
  'drugs',
  'get_category shop=>wine for DE should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'DE'),
  'alcohol',
  'get_subcategory shop=>wine for DE should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'FR'),
  'drugs',
  'get_category shop=>wine for FR should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'FR'),
  'alcohol',
  'get_subcategory shop=>wine for FR should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'ES'),
  'drugs',
  'get_category shop=>wine for ES should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'ES'),
  'alcohol',
  'get_subcategory shop=>wine for ES should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'AD'),
  'drugs',
  'get_category shop=>wine for AD should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'AD'),
  'alcohol',
  'get_subcategory shop=>wine for AD should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'CH'),
  'drugs',
  'get_category shop=>wine for CH should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'CH'),
  'alcohol',
  'get_subcategory shop=>wine for CH should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'AT'),
  'drugs',
  'get_category shop=>wine for AT should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'AT'),
  'alcohol',
  'get_subcategory shop=>wine for AT should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'PH'),
  'drugs',
  'get_category shop=>wine for PH should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'PH'),
  'alcohol',
  'get_subcategory shop=>wine for PH should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'FI'),
  'drugs',
  'get_category shop=>wine for FI should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'FI'),
  'alcohol',
  'get_subcategory shop=>wine for FI should be alcohol'
);

SELECT is(
  get_category('shop=>wine'::hstore, 'MC'),
  'drugs',
  'get_category shop=>wine for MC should be drugs'
);

SELECT is(
  get_subcategory('shop=>wine'::hstore, 'MC'),
  'alcohol',
  'get_subcategory shop=>wine for MC should be alcohol'
);

SELECT is(
  get_category('amenity=>bank'::hstore, 'CD'),
  'money',
  'get_category amenity=>bank for CD should be money'
);

SELECT is(
  get_subcategory('amenity=>bank'::hstore, 'CD'),
  'bank',
  'get_subcategory amenity=>bank for CD should be bank'
);

SELECT is(
  get_category('amenity=>atm'::hstore, 'CD'),
  'money',
  'get_category amenity=>atm for CD should be money'
);

SELECT is(
  get_subcategory('amenity=>atm'::hstore, 'CD'),
  'atm',
  'get_subcategory amenity=>atm for CD should be atm'
);

SELECT is(
  get_category('amenity=>money_transfer'::hstore, 'CD'),
  'money',
  'get_category amenity=>money_transfer for CD should be money'
);

SELECT is(
  get_subcategory('amenity=>money_transfer'::hstore, 'CD'),
  'money_transfer',
  'get_subcategory amenity=>money_transfer for CD should be money_transfer'
);

SELECT is(
  get_category('amenity=>mobile_money_agent'::hstore, 'CD'),
  'money',
  'get_category amenity=>mobile_money_agent for CD should be money'
);

SELECT is(
  get_subcategory('amenity=>mobile_money_agent'::hstore, 'CD'),
  'mobile_money_agent',
  'get_subcategory amenity=>mobile_money_agent for CD should be mobile_money_agent'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'DE'),
  'shop',
  'get_category shop=>doityourself for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'DE'),
  'hardware',
  'get_subcategory shop=>doityourself for DE should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'FR'),
  'shop',
  'get_category shop=>doityourself for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'FR'),
  'hardware',
  'get_subcategory shop=>doityourself for FR should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'ES'),
  'shop',
  'get_category shop=>doityourself for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'ES'),
  'hardware',
  'get_subcategory shop=>doityourself for ES should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'AD'),
  'shop',
  'get_category shop=>doityourself for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'AD'),
  'hardware',
  'get_subcategory shop=>doityourself for AD should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'CH'),
  'shop',
  'get_category shop=>doityourself for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'CH'),
  'hardware',
  'get_subcategory shop=>doityourself for CH should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'AT'),
  'shop',
  'get_category shop=>doityourself for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'AT'),
  'hardware',
  'get_subcategory shop=>doityourself for AT should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'PH'),
  'shop',
  'get_category shop=>doityourself for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'PH'),
  'hardware',
  'get_subcategory shop=>doityourself for PH should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'FI'),
  'shop',
  'get_category shop=>doityourself for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'FI'),
  'hardware',
  'get_subcategory shop=>doityourself for FI should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'MC'),
  'shop',
  'get_category shop=>doityourself for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'MC'),
  'hardware',
  'get_subcategory shop=>doityourself for MC should be hardware'
);

SELECT is(
  get_category('shop=>doityourself'::hstore, 'CD'),
  'shop',
  'get_category shop=>doityourself for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>doityourself'::hstore, 'CD'),
  'hardware',
  'get_subcategory shop=>doityourself for CD should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'DE'),
  'shop',
  'get_category shop=>hardware for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'DE'),
  'hardware',
  'get_subcategory shop=>hardware for DE should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'FR'),
  'shop',
  'get_category shop=>hardware for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'FR'),
  'hardware',
  'get_subcategory shop=>hardware for FR should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'ES'),
  'shop',
  'get_category shop=>hardware for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'ES'),
  'hardware',
  'get_subcategory shop=>hardware for ES should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'AD'),
  'shop',
  'get_category shop=>hardware for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'AD'),
  'hardware',
  'get_subcategory shop=>hardware for AD should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'CH'),
  'shop',
  'get_category shop=>hardware for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'CH'),
  'hardware',
  'get_subcategory shop=>hardware for CH should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'AT'),
  'shop',
  'get_category shop=>hardware for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'AT'),
  'hardware',
  'get_subcategory shop=>hardware for AT should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'PH'),
  'shop',
  'get_category shop=>hardware for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'PH'),
  'hardware',
  'get_subcategory shop=>hardware for PH should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'FI'),
  'shop',
  'get_category shop=>hardware for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'FI'),
  'hardware',
  'get_subcategory shop=>hardware for FI should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'MC'),
  'shop',
  'get_category shop=>hardware for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'MC'),
  'hardware',
  'get_subcategory shop=>hardware for MC should be hardware'
);

SELECT is(
  get_category('shop=>hardware'::hstore, 'CD'),
  'shop',
  'get_category shop=>hardware for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>hardware'::hstore, 'CD'),
  'hardware',
  'get_subcategory shop=>hardware for CD should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'DE'),
  'shop',
  'get_category shop=>paint for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'DE'),
  'hardware',
  'get_subcategory shop=>paint for DE should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'FR'),
  'shop',
  'get_category shop=>paint for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'FR'),
  'hardware',
  'get_subcategory shop=>paint for FR should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'ES'),
  'shop',
  'get_category shop=>paint for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'ES'),
  'hardware',
  'get_subcategory shop=>paint for ES should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'AD'),
  'shop',
  'get_category shop=>paint for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'AD'),
  'hardware',
  'get_subcategory shop=>paint for AD should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'CH'),
  'shop',
  'get_category shop=>paint for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'CH'),
  'hardware',
  'get_subcategory shop=>paint for CH should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'AT'),
  'shop',
  'get_category shop=>paint for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'AT'),
  'hardware',
  'get_subcategory shop=>paint for AT should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'PH'),
  'shop',
  'get_category shop=>paint for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'PH'),
  'hardware',
  'get_subcategory shop=>paint for PH should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'FI'),
  'shop',
  'get_category shop=>paint for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'FI'),
  'hardware',
  'get_subcategory shop=>paint for FI should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'MC'),
  'shop',
  'get_category shop=>paint for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'MC'),
  'hardware',
  'get_subcategory shop=>paint for MC should be hardware'
);

SELECT is(
  get_category('shop=>paint'::hstore, 'CD'),
  'shop',
  'get_category shop=>paint for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>paint'::hstore, 'CD'),
  'hardware',
  'get_subcategory shop=>paint for CD should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'DE'),
  'shop',
  'get_category shop=>glaziery for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'DE'),
  'hardware',
  'get_subcategory shop=>glaziery for DE should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'FR'),
  'shop',
  'get_category shop=>glaziery for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'FR'),
  'hardware',
  'get_subcategory shop=>glaziery for FR should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'ES'),
  'shop',
  'get_category shop=>glaziery for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'ES'),
  'hardware',
  'get_subcategory shop=>glaziery for ES should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'AD'),
  'shop',
  'get_category shop=>glaziery for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'AD'),
  'hardware',
  'get_subcategory shop=>glaziery for AD should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'CH'),
  'shop',
  'get_category shop=>glaziery for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'CH'),
  'hardware',
  'get_subcategory shop=>glaziery for CH should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'AT'),
  'shop',
  'get_category shop=>glaziery for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'AT'),
  'hardware',
  'get_subcategory shop=>glaziery for AT should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'PH'),
  'shop',
  'get_category shop=>glaziery for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'PH'),
  'hardware',
  'get_subcategory shop=>glaziery for PH should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'FI'),
  'shop',
  'get_category shop=>glaziery for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'FI'),
  'hardware',
  'get_subcategory shop=>glaziery for FI should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'MC'),
  'shop',
  'get_category shop=>glaziery for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'MC'),
  'hardware',
  'get_subcategory shop=>glaziery for MC should be hardware'
);

SELECT is(
  get_category('shop=>glaziery'::hstore, 'CD'),
  'shop',
  'get_category shop=>glaziery for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>glaziery'::hstore, 'CD'),
  'hardware',
  'get_subcategory shop=>glaziery for CD should be hardware'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'DE'),
  'shop',
  'get_category shop=>mobile_phone for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'DE'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for DE should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'FR'),
  'shop',
  'get_category shop=>mobile_phone for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'FR'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for FR should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'ES'),
  'shop',
  'get_category shop=>mobile_phone for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'ES'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for ES should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'AD'),
  'shop',
  'get_category shop=>mobile_phone for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'AD'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for AD should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'CH'),
  'shop',
  'get_category shop=>mobile_phone for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'CH'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for CH should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'AT'),
  'shop',
  'get_category shop=>mobile_phone for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'AT'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for AT should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'PH'),
  'shop',
  'get_category shop=>mobile_phone for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'PH'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for PH should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'FI'),
  'shop',
  'get_category shop=>mobile_phone for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'FI'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for FI should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'MC'),
  'shop',
  'get_category shop=>mobile_phone for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'MC'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for MC should be mobile_phone'
);

SELECT is(
  get_category('shop=>mobile_phone'::hstore, 'CD'),
  'shop',
  'get_category shop=>mobile_phone for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>mobile_phone'::hstore, 'CD'),
  'mobile_phone',
  'get_subcategory shop=>mobile_phone for CD should be mobile_phone'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'DE'),
  'shop',
  'get_category shop=>computer for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'DE'),
  'computer',
  'get_subcategory shop=>computer for DE should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'FR'),
  'shop',
  'get_category shop=>computer for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'FR'),
  'computer',
  'get_subcategory shop=>computer for FR should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'ES'),
  'shop',
  'get_category shop=>computer for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'ES'),
  'computer',
  'get_subcategory shop=>computer for ES should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'AD'),
  'shop',
  'get_category shop=>computer for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'AD'),
  'computer',
  'get_subcategory shop=>computer for AD should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'CH'),
  'shop',
  'get_category shop=>computer for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'CH'),
  'computer',
  'get_subcategory shop=>computer for CH should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'AT'),
  'shop',
  'get_category shop=>computer for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'AT'),
  'computer',
  'get_subcategory shop=>computer for AT should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'PH'),
  'shop',
  'get_category shop=>computer for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'PH'),
  'computer',
  'get_subcategory shop=>computer for PH should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'FI'),
  'shop',
  'get_category shop=>computer for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'FI'),
  'computer',
  'get_subcategory shop=>computer for FI should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'MC'),
  'shop',
  'get_category shop=>computer for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'MC'),
  'computer',
  'get_subcategory shop=>computer for MC should be computer'
);

SELECT is(
  get_category('shop=>computer'::hstore, 'CD'),
  'shop',
  'get_category shop=>computer for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>computer'::hstore, 'CD'),
  'computer',
  'get_subcategory shop=>computer for CD should be computer'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'DE'),
  'shop',
  'get_category shop=>electronics for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'DE'),
  'electronics',
  'get_subcategory shop=>electronics for DE should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'FR'),
  'shop',
  'get_category shop=>electronics for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'FR'),
  'electronics',
  'get_subcategory shop=>electronics for FR should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'ES'),
  'shop',
  'get_category shop=>electronics for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'ES'),
  'electronics',
  'get_subcategory shop=>electronics for ES should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'AD'),
  'shop',
  'get_category shop=>electronics for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'AD'),
  'electronics',
  'get_subcategory shop=>electronics for AD should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'CH'),
  'shop',
  'get_category shop=>electronics for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'CH'),
  'electronics',
  'get_subcategory shop=>electronics for CH should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'AT'),
  'shop',
  'get_category shop=>electronics for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'AT'),
  'electronics',
  'get_subcategory shop=>electronics for AT should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'PH'),
  'shop',
  'get_category shop=>electronics for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'PH'),
  'electronics',
  'get_subcategory shop=>electronics for PH should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'FI'),
  'shop',
  'get_category shop=>electronics for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'FI'),
  'electronics',
  'get_subcategory shop=>electronics for FI should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'MC'),
  'shop',
  'get_category shop=>electronics for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'MC'),
  'electronics',
  'get_subcategory shop=>electronics for MC should be electronics'
);

SELECT is(
  get_category('shop=>electronics'::hstore, 'CD'),
  'shop',
  'get_category shop=>electronics for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>electronics'::hstore, 'CD'),
  'electronics',
  'get_subcategory shop=>electronics for CD should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'DE'),
  'shop',
  'get_category craft=>electronics_repair for DE should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'DE'),
  'electronics',
  'get_subcategory craft=>electronics_repair for DE should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'FR'),
  'shop',
  'get_category craft=>electronics_repair for FR should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'FR'),
  'electronics',
  'get_subcategory craft=>electronics_repair for FR should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'ES'),
  'shop',
  'get_category craft=>electronics_repair for ES should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'ES'),
  'electronics',
  'get_subcategory craft=>electronics_repair for ES should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'AD'),
  'shop',
  'get_category craft=>electronics_repair for AD should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'AD'),
  'electronics',
  'get_subcategory craft=>electronics_repair for AD should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'CH'),
  'shop',
  'get_category craft=>electronics_repair for CH should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'CH'),
  'electronics',
  'get_subcategory craft=>electronics_repair for CH should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'AT'),
  'shop',
  'get_category craft=>electronics_repair for AT should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'AT'),
  'electronics',
  'get_subcategory craft=>electronics_repair for AT should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'PH'),
  'shop',
  'get_category craft=>electronics_repair for PH should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'PH'),
  'electronics',
  'get_subcategory craft=>electronics_repair for PH should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'FI'),
  'shop',
  'get_category craft=>electronics_repair for FI should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'FI'),
  'electronics',
  'get_subcategory craft=>electronics_repair for FI should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'MC'),
  'shop',
  'get_category craft=>electronics_repair for MC should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'MC'),
  'electronics',
  'get_subcategory craft=>electronics_repair for MC should be electronics'
);

SELECT is(
  get_category('craft=>electronics_repair'::hstore, 'CD'),
  'shop',
  'get_category craft=>electronics_repair for CD should be shop'
);

SELECT is(
  get_subcategory('craft=>electronics_repair'::hstore, 'CD'),
  'electronics',
  'get_subcategory craft=>electronics_repair for CD should be electronics'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'DE'),
  'shop',
  'get_category shop=>dry_cleaning for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'DE'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for DE should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'FR'),
  'shop',
  'get_category shop=>dry_cleaning for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'FR'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for FR should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'ES'),
  'shop',
  'get_category shop=>dry_cleaning for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'ES'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for ES should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'AD'),
  'shop',
  'get_category shop=>dry_cleaning for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'AD'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for AD should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'CH'),
  'shop',
  'get_category shop=>dry_cleaning for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'CH'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for CH should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'AT'),
  'shop',
  'get_category shop=>dry_cleaning for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'AT'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for AT should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'PH'),
  'shop',
  'get_category shop=>dry_cleaning for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'PH'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for PH should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'FI'),
  'shop',
  'get_category shop=>dry_cleaning for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'FI'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for FI should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'MC'),
  'shop',
  'get_category shop=>dry_cleaning for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'MC'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for MC should be laundry'
);

SELECT is(
  get_category('shop=>dry_cleaning'::hstore, 'CD'),
  'shop',
  'get_category shop=>dry_cleaning for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>dry_cleaning'::hstore, 'CD'),
  'laundry',
  'get_subcategory shop=>dry_cleaning for CD should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'DE'),
  'shop',
  'get_category shop=>laundry for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'DE'),
  'laundry',
  'get_subcategory shop=>laundry for DE should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'FR'),
  'shop',
  'get_category shop=>laundry for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'FR'),
  'laundry',
  'get_subcategory shop=>laundry for FR should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'ES'),
  'shop',
  'get_category shop=>laundry for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'ES'),
  'laundry',
  'get_subcategory shop=>laundry for ES should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'AD'),
  'shop',
  'get_category shop=>laundry for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'AD'),
  'laundry',
  'get_subcategory shop=>laundry for AD should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'CH'),
  'shop',
  'get_category shop=>laundry for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'CH'),
  'laundry',
  'get_subcategory shop=>laundry for CH should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'AT'),
  'shop',
  'get_category shop=>laundry for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'AT'),
  'laundry',
  'get_subcategory shop=>laundry for AT should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'PH'),
  'shop',
  'get_category shop=>laundry for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'PH'),
  'laundry',
  'get_subcategory shop=>laundry for PH should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'FI'),
  'shop',
  'get_category shop=>laundry for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'FI'),
  'laundry',
  'get_subcategory shop=>laundry for FI should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'MC'),
  'shop',
  'get_category shop=>laundry for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'MC'),
  'laundry',
  'get_subcategory shop=>laundry for MC should be laundry'
);

SELECT is(
  get_category('shop=>laundry'::hstore, 'CD'),
  'shop',
  'get_category shop=>laundry for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>laundry'::hstore, 'CD'),
  'laundry',
  'get_subcategory shop=>laundry for CD should be laundry'
);

SELECT is(
  get_category('shop=>stationery'::hstore, 'FR'),
  'shop',
  'get_category shop=>stationery for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>stationery'::hstore, 'FR'),
  'stationery',
  'get_subcategory shop=>stationery for FR should be stationery'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'DE'),
  'shop',
  'get_category shop=>kiosk for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'DE'),
  'newsagent',
  'get_subcategory shop=>kiosk for DE should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'FR'),
  'shop',
  'get_category shop=>kiosk for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'FR'),
  'newsagent',
  'get_subcategory shop=>kiosk for FR should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'ES'),
  'shop',
  'get_category shop=>kiosk for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'ES'),
  'newsagent',
  'get_subcategory shop=>kiosk for ES should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'AD'),
  'shop',
  'get_category shop=>kiosk for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'AD'),
  'newsagent',
  'get_subcategory shop=>kiosk for AD should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'CH'),
  'shop',
  'get_category shop=>kiosk for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'CH'),
  'newsagent',
  'get_subcategory shop=>kiosk for CH should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'AT'),
  'shop',
  'get_category shop=>kiosk for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'AT'),
  'newsagent',
  'get_subcategory shop=>kiosk for AT should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'PH'),
  'shop',
  'get_category shop=>kiosk for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'PH'),
  'newsagent',
  'get_subcategory shop=>kiosk for PH should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'FI'),
  'shop',
  'get_category shop=>kiosk for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'FI'),
  'newsagent',
  'get_subcategory shop=>kiosk for FI should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'MC'),
  'shop',
  'get_category shop=>kiosk for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'MC'),
  'newsagent',
  'get_subcategory shop=>kiosk for MC should be newsagent'
);

SELECT is(
  get_category('shop=>kiosk'::hstore, 'CD'),
  'shop',
  'get_category shop=>kiosk for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>kiosk'::hstore, 'CD'),
  'newsagent',
  'get_subcategory shop=>kiosk for CD should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'DE'),
  'shop',
  'get_category shop=>newsagent for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'DE'),
  'newsagent',
  'get_subcategory shop=>newsagent for DE should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'FR'),
  'shop',
  'get_category shop=>newsagent for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'FR'),
  'newsagent',
  'get_subcategory shop=>newsagent for FR should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'ES'),
  'shop',
  'get_category shop=>newsagent for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'ES'),
  'newsagent',
  'get_subcategory shop=>newsagent for ES should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'AD'),
  'shop',
  'get_category shop=>newsagent for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'AD'),
  'newsagent',
  'get_subcategory shop=>newsagent for AD should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'CH'),
  'shop',
  'get_category shop=>newsagent for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'CH'),
  'newsagent',
  'get_subcategory shop=>newsagent for CH should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'AT'),
  'shop',
  'get_category shop=>newsagent for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'AT'),
  'newsagent',
  'get_subcategory shop=>newsagent for AT should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'PH'),
  'shop',
  'get_category shop=>newsagent for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'PH'),
  'newsagent',
  'get_subcategory shop=>newsagent for PH should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'FI'),
  'shop',
  'get_category shop=>newsagent for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'FI'),
  'newsagent',
  'get_subcategory shop=>newsagent for FI should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'MC'),
  'shop',
  'get_category shop=>newsagent for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'MC'),
  'newsagent',
  'get_subcategory shop=>newsagent for MC should be newsagent'
);

SELECT is(
  get_category('shop=>newsagent'::hstore, 'CD'),
  'shop',
  'get_category shop=>newsagent for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>newsagent'::hstore, 'CD'),
  'newsagent',
  'get_subcategory shop=>newsagent for CD should be newsagent'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'DE'),
  'shop',
  'get_category shop=>pet for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'DE'),
  'pet',
  'get_subcategory shop=>pet for DE should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'FR'),
  'shop',
  'get_category shop=>pet for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'FR'),
  'pet',
  'get_subcategory shop=>pet for FR should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'ES'),
  'shop',
  'get_category shop=>pet for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'ES'),
  'pet',
  'get_subcategory shop=>pet for ES should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'AD'),
  'shop',
  'get_category shop=>pet for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'AD'),
  'pet',
  'get_subcategory shop=>pet for AD should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'CH'),
  'shop',
  'get_category shop=>pet for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'CH'),
  'pet',
  'get_subcategory shop=>pet for CH should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'AT'),
  'shop',
  'get_category shop=>pet for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'AT'),
  'pet',
  'get_subcategory shop=>pet for AT should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'PH'),
  'shop',
  'get_category shop=>pet for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'PH'),
  'pet',
  'get_subcategory shop=>pet for PH should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'FI'),
  'shop',
  'get_category shop=>pet for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'FI'),
  'pet',
  'get_subcategory shop=>pet for FI should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'MC'),
  'shop',
  'get_category shop=>pet for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'MC'),
  'pet',
  'get_subcategory shop=>pet for MC should be pet'
);

SELECT is(
  get_category('shop=>pet'::hstore, 'CD'),
  'shop',
  'get_category shop=>pet for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>pet'::hstore, 'CD'),
  'pet',
  'get_subcategory shop=>pet for CD should be pet'
);

SELECT is(
  get_category('shop=>agrarian'::hstore, 'FR'),
  'shop',
  'get_category shop=>agrarian for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>agrarian'::hstore, 'FR'),
  'agrarian',
  'get_subcategory shop=>agrarian for FR should be agrarian'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'DE'),
  'shop',
  'get_category shop=>garden_centre for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'DE'),
  'flower',
  'get_subcategory shop=>garden_centre for DE should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'FR'),
  'shop',
  'get_category shop=>garden_centre for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'FR'),
  'flower',
  'get_subcategory shop=>garden_centre for FR should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'ES'),
  'shop',
  'get_category shop=>garden_centre for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'ES'),
  'flower',
  'get_subcategory shop=>garden_centre for ES should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'AD'),
  'shop',
  'get_category shop=>garden_centre for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'AD'),
  'flower',
  'get_subcategory shop=>garden_centre for AD should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'CH'),
  'shop',
  'get_category shop=>garden_centre for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'CH'),
  'flower',
  'get_subcategory shop=>garden_centre for CH should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'AT'),
  'shop',
  'get_category shop=>garden_centre for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'AT'),
  'flower',
  'get_subcategory shop=>garden_centre for AT should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'PH'),
  'shop',
  'get_category shop=>garden_centre for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'PH'),
  'flower',
  'get_subcategory shop=>garden_centre for PH should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'FI'),
  'shop',
  'get_category shop=>garden_centre for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'FI'),
  'flower',
  'get_subcategory shop=>garden_centre for FI should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'MC'),
  'shop',
  'get_category shop=>garden_centre for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'MC'),
  'flower',
  'get_subcategory shop=>garden_centre for MC should be flower'
);

SELECT is(
  get_category('shop=>garden_centre'::hstore, 'CD'),
  'shop',
  'get_category shop=>garden_centre for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>garden_centre'::hstore, 'CD'),
  'flower',
  'get_subcategory shop=>garden_centre for CD should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'DE'),
  'shop',
  'get_category shop=>florist for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'DE'),
  'flower',
  'get_subcategory shop=>florist for DE should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'FR'),
  'shop',
  'get_category shop=>florist for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'FR'),
  'flower',
  'get_subcategory shop=>florist for FR should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'ES'),
  'shop',
  'get_category shop=>florist for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'ES'),
  'flower',
  'get_subcategory shop=>florist for ES should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'AD'),
  'shop',
  'get_category shop=>florist for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'AD'),
  'flower',
  'get_subcategory shop=>florist for AD should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'CH'),
  'shop',
  'get_category shop=>florist for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'CH'),
  'flower',
  'get_subcategory shop=>florist for CH should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'AT'),
  'shop',
  'get_category shop=>florist for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'AT'),
  'flower',
  'get_subcategory shop=>florist for AT should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'PH'),
  'shop',
  'get_category shop=>florist for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'PH'),
  'flower',
  'get_subcategory shop=>florist for PH should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'FI'),
  'shop',
  'get_category shop=>florist for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'FI'),
  'flower',
  'get_subcategory shop=>florist for FI should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'MC'),
  'shop',
  'get_category shop=>florist for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'MC'),
  'flower',
  'get_subcategory shop=>florist for MC should be flower'
);

SELECT is(
  get_category('shop=>florist'::hstore, 'CD'),
  'shop',
  'get_category shop=>florist for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>florist'::hstore, 'CD'),
  'flower',
  'get_subcategory shop=>florist for CD should be flower'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'DE'),
  'shop',
  'get_category shop=>chemist for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'DE'),
  'chemist',
  'get_subcategory shop=>chemist for DE should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'FR'),
  'shop',
  'get_category shop=>chemist for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'FR'),
  'chemist',
  'get_subcategory shop=>chemist for FR should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'ES'),
  'shop',
  'get_category shop=>chemist for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'ES'),
  'chemist',
  'get_subcategory shop=>chemist for ES should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'AD'),
  'shop',
  'get_category shop=>chemist for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'AD'),
  'chemist',
  'get_subcategory shop=>chemist for AD should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'CH'),
  'shop',
  'get_category shop=>chemist for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'CH'),
  'chemist',
  'get_subcategory shop=>chemist for CH should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'AT'),
  'shop',
  'get_category shop=>chemist for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'AT'),
  'chemist',
  'get_subcategory shop=>chemist for AT should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'PH'),
  'shop',
  'get_category shop=>chemist for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'PH'),
  'chemist',
  'get_subcategory shop=>chemist for PH should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'FI'),
  'shop',
  'get_category shop=>chemist for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'FI'),
  'chemist',
  'get_subcategory shop=>chemist for FI should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'MC'),
  'shop',
  'get_category shop=>chemist for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'MC'),
  'chemist',
  'get_subcategory shop=>chemist for MC should be chemist'
);

SELECT is(
  get_category('shop=>chemist'::hstore, 'CD'),
  'shop',
  'get_category shop=>chemist for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>chemist'::hstore, 'CD'),
  'chemist',
  'get_subcategory shop=>chemist for CD should be chemist'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'DE'),
  'shop',
  'get_category shop=>fabric for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'DE'),
  'sewing',
  'get_subcategory shop=>fabric for DE should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'FR'),
  'shop',
  'get_category shop=>fabric for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'FR'),
  'sewing',
  'get_subcategory shop=>fabric for FR should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'ES'),
  'shop',
  'get_category shop=>fabric for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'ES'),
  'sewing',
  'get_subcategory shop=>fabric for ES should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'AD'),
  'shop',
  'get_category shop=>fabric for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'AD'),
  'sewing',
  'get_subcategory shop=>fabric for AD should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'CH'),
  'shop',
  'get_category shop=>fabric for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'CH'),
  'sewing',
  'get_subcategory shop=>fabric for CH should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'AT'),
  'shop',
  'get_category shop=>fabric for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'AT'),
  'sewing',
  'get_subcategory shop=>fabric for AT should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'PH'),
  'shop',
  'get_category shop=>fabric for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'PH'),
  'sewing',
  'get_subcategory shop=>fabric for PH should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'FI'),
  'shop',
  'get_category shop=>fabric for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'FI'),
  'sewing',
  'get_subcategory shop=>fabric for FI should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'MC'),
  'shop',
  'get_category shop=>fabric for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'MC'),
  'sewing',
  'get_subcategory shop=>fabric for MC should be sewing'
);

SELECT is(
  get_category('shop=>fabric'::hstore, 'CD'),
  'shop',
  'get_category shop=>fabric for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>fabric'::hstore, 'CD'),
  'sewing',
  'get_subcategory shop=>fabric for CD should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'DE'),
  'shop',
  'get_category shop=>sewing for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'DE'),
  'sewing',
  'get_subcategory shop=>sewing for DE should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'FR'),
  'shop',
  'get_category shop=>sewing for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'FR'),
  'sewing',
  'get_subcategory shop=>sewing for FR should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'ES'),
  'shop',
  'get_category shop=>sewing for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'ES'),
  'sewing',
  'get_subcategory shop=>sewing for ES should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'AD'),
  'shop',
  'get_category shop=>sewing for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'AD'),
  'sewing',
  'get_subcategory shop=>sewing for AD should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'CH'),
  'shop',
  'get_category shop=>sewing for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'CH'),
  'sewing',
  'get_subcategory shop=>sewing for CH should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'AT'),
  'shop',
  'get_category shop=>sewing for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'AT'),
  'sewing',
  'get_subcategory shop=>sewing for AT should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'PH'),
  'shop',
  'get_category shop=>sewing for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'PH'),
  'sewing',
  'get_subcategory shop=>sewing for PH should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'FI'),
  'shop',
  'get_category shop=>sewing for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'FI'),
  'sewing',
  'get_subcategory shop=>sewing for FI should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'MC'),
  'shop',
  'get_category shop=>sewing for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'MC'),
  'sewing',
  'get_subcategory shop=>sewing for MC should be sewing'
);

SELECT is(
  get_category('shop=>sewing'::hstore, 'CD'),
  'shop',
  'get_category shop=>sewing for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>sewing'::hstore, 'CD'),
  'sewing',
  'get_subcategory shop=>sewing for CD should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'DE'),
  'shop',
  'get_category shop=>haberdashery for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'DE'),
  'sewing',
  'get_subcategory shop=>haberdashery for DE should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'FR'),
  'shop',
  'get_category shop=>haberdashery for FR should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'FR'),
  'sewing',
  'get_subcategory shop=>haberdashery for FR should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'ES'),
  'shop',
  'get_category shop=>haberdashery for ES should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'ES'),
  'sewing',
  'get_subcategory shop=>haberdashery for ES should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'AD'),
  'shop',
  'get_category shop=>haberdashery for AD should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'AD'),
  'sewing',
  'get_subcategory shop=>haberdashery for AD should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'CH'),
  'shop',
  'get_category shop=>haberdashery for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'CH'),
  'sewing',
  'get_subcategory shop=>haberdashery for CH should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'AT'),
  'shop',
  'get_category shop=>haberdashery for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'AT'),
  'sewing',
  'get_subcategory shop=>haberdashery for AT should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'PH'),
  'shop',
  'get_category shop=>haberdashery for PH should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'PH'),
  'sewing',
  'get_subcategory shop=>haberdashery for PH should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'FI'),
  'shop',
  'get_category shop=>haberdashery for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'FI'),
  'sewing',
  'get_subcategory shop=>haberdashery for FI should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'MC'),
  'shop',
  'get_category shop=>haberdashery for MC should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'MC'),
  'sewing',
  'get_subcategory shop=>haberdashery for MC should be sewing'
);

SELECT is(
  get_category('shop=>haberdashery'::hstore, 'CD'),
  'shop',
  'get_category shop=>haberdashery for CD should be shop'
);

SELECT is(
  get_subcategory('shop=>haberdashery'::hstore, 'CD'),
  'sewing',
  'get_subcategory shop=>haberdashery for CD should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'DE'),
  'shop',
  'get_category craft=>sewing for DE should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'DE'),
  'sewing',
  'get_subcategory craft=>sewing for DE should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'FR'),
  'shop',
  'get_category craft=>sewing for FR should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'FR'),
  'sewing',
  'get_subcategory craft=>sewing for FR should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'ES'),
  'shop',
  'get_category craft=>sewing for ES should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'ES'),
  'sewing',
  'get_subcategory craft=>sewing for ES should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'AD'),
  'shop',
  'get_category craft=>sewing for AD should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'AD'),
  'sewing',
  'get_subcategory craft=>sewing for AD should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'CH'),
  'shop',
  'get_category craft=>sewing for CH should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'CH'),
  'sewing',
  'get_subcategory craft=>sewing for CH should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'AT'),
  'shop',
  'get_category craft=>sewing for AT should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'AT'),
  'sewing',
  'get_subcategory craft=>sewing for AT should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'PH'),
  'shop',
  'get_category craft=>sewing for PH should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'PH'),
  'sewing',
  'get_subcategory craft=>sewing for PH should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'FI'),
  'shop',
  'get_category craft=>sewing for FI should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'FI'),
  'sewing',
  'get_subcategory craft=>sewing for FI should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'MC'),
  'shop',
  'get_category craft=>sewing for MC should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'MC'),
  'sewing',
  'get_subcategory craft=>sewing for MC should be sewing'
);

SELECT is(
  get_category('craft=>sewing'::hstore, 'CD'),
  'shop',
  'get_category craft=>sewing for CD should be shop'
);

SELECT is(
  get_subcategory('craft=>sewing'::hstore, 'CD'),
  'sewing',
  'get_subcategory craft=>sewing for CD should be sewing'
);

SELECT is(
  get_category('shop=>shoes'::hstore, 'DE'),
  'shop',
  'get_category shop=>shoes for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>shoes'::hstore, 'DE'),
  'shoes',
  'get_subcategory shop=>shoes for DE should be shoes'
);

SELECT is(
  get_category('shop=>shoes'::hstore, 'AT'),
  'shop',
  'get_category shop=>shoes for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>shoes'::hstore, 'AT'),
  'shoes',
  'get_subcategory shop=>shoes for AT should be shoes'
);

SELECT is(
  get_category('shop=>shoes'::hstore, 'CH'),
  'shop',
  'get_category shop=>shoes for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>shoes'::hstore, 'CH'),
  'shoes',
  'get_subcategory shop=>shoes for CH should be shoes'
);

SELECT is(
  get_category('shop=>books'::hstore, 'DE'),
  'shop',
  'get_category shop=>books for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>books'::hstore, 'DE'),
  'books',
  'get_subcategory shop=>books for DE should be books'
);

SELECT is(
  get_category('shop=>books'::hstore, 'AT'),
  'shop',
  'get_category shop=>books for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>books'::hstore, 'AT'),
  'books',
  'get_subcategory shop=>books for AT should be books'
);

SELECT is(
  get_category('shop=>books'::hstore, 'CH'),
  'shop',
  'get_category shop=>books for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>books'::hstore, 'CH'),
  'books',
  'get_subcategory shop=>books for CH should be books'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>books'::hstore, 'DE'),
  'shop',
  'get_category amenity=>vending_machine, vending=>books for DE should be shop'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>books'::hstore, 'DE'),
  'books',
  'get_subcategory amenity=>vending_machine, vending=>books for DE should be books'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>books'::hstore, 'AT'),
  'shop',
  'get_category amenity=>vending_machine, vending=>books for AT should be shop'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>books'::hstore, 'AT'),
  'books',
  'get_subcategory amenity=>vending_machine, vending=>books for AT should be books'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>books'::hstore, 'CH'),
  'shop',
  'get_category amenity=>vending_machine, vending=>books for CH should be shop'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>books'::hstore, 'CH'),
  'books',
  'get_subcategory amenity=>vending_machine, vending=>books for CH should be books'
);

SELECT is(
  get_category('amenity=>public_bookcase'::hstore, 'DE'),
  'shop',
  'get_category amenity=>public_bookcase for DE should be shop'
);

SELECT is(
  get_subcategory('amenity=>public_bookcase'::hstore, 'DE'),
  'books',
  'get_subcategory amenity=>public_bookcase for DE should be books'
);

SELECT is(
  get_category('amenity=>public_bookcase'::hstore, 'AT'),
  'shop',
  'get_category amenity=>public_bookcase for AT should be shop'
);

SELECT is(
  get_subcategory('amenity=>public_bookcase'::hstore, 'AT'),
  'books',
  'get_subcategory amenity=>public_bookcase for AT should be books'
);

SELECT is(
  get_category('amenity=>public_bookcase'::hstore, 'CH'),
  'shop',
  'get_category amenity=>public_bookcase for CH should be shop'
);

SELECT is(
  get_subcategory('amenity=>public_bookcase'::hstore, 'CH'),
  'books',
  'get_subcategory amenity=>public_bookcase for CH should be books'
);

SELECT is(
  get_category('shop=>beauty'::hstore, 'DE'),
  'shop',
  'get_category shop=>beauty for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>beauty'::hstore, 'DE'),
  'beauty',
  'get_subcategory shop=>beauty for DE should be beauty'
);

SELECT is(
  get_category('shop=>beauty'::hstore, 'AT'),
  'shop',
  'get_category shop=>beauty for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>beauty'::hstore, 'AT'),
  'beauty',
  'get_subcategory shop=>beauty for AT should be beauty'
);

SELECT is(
  get_category('shop=>beauty'::hstore, 'CH'),
  'shop',
  'get_category shop=>beauty for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>beauty'::hstore, 'CH'),
  'beauty',
  'get_subcategory shop=>beauty for CH should be beauty'
);

SELECT is(
  get_category('shop=>clothes'::hstore, 'DE'),
  'shop',
  'get_category shop=>clothes for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>clothes'::hstore, 'DE'),
  'clothes',
  'get_subcategory shop=>clothes for DE should be clothes'
);

SELECT is(
  get_category('shop=>clothes'::hstore, 'AT'),
  'shop',
  'get_category shop=>clothes for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>clothes'::hstore, 'AT'),
  'clothes',
  'get_subcategory shop=>clothes for AT should be clothes'
);

SELECT is(
  get_category('shop=>clothes'::hstore, 'CH'),
  'shop',
  'get_category shop=>clothes for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>clothes'::hstore, 'CH'),
  'clothes',
  'get_subcategory shop=>clothes for CH should be clothes'
);

SELECT is(
  get_category('shop=>furniture'::hstore, 'DE'),
  'shop',
  'get_category shop=>furniture for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>furniture'::hstore, 'DE'),
  'furniture',
  'get_subcategory shop=>furniture for DE should be furniture'
);

SELECT is(
  get_category('shop=>furniture'::hstore, 'AT'),
  'shop',
  'get_category shop=>furniture for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>furniture'::hstore, 'AT'),
  'furniture',
  'get_subcategory shop=>furniture for AT should be furniture'
);

SELECT is(
  get_category('shop=>furniture'::hstore, 'CH'),
  'shop',
  'get_category shop=>furniture for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>furniture'::hstore, 'CH'),
  'furniture',
  'get_subcategory shop=>furniture for CH should be furniture'
);

SELECT is(
  get_category('opening_hours:covid19=>*, shop=>gift'::hstore, 'DE'),
  'shop',
  'get_category opening_hours:covid19=>*, shop=>gift for DE should be shop'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, shop=>gift'::hstore, 'DE'),
  'gift',
  'get_subcategory opening_hours:covid19=>*, shop=>gift for DE should be gift'
);

SELECT is(
  get_category('opening_hours:covid19=>*, shop=>gift'::hstore, 'AT'),
  'shop',
  'get_category opening_hours:covid19=>*, shop=>gift for AT should be shop'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, shop=>gift'::hstore, 'AT'),
  'gift',
  'get_subcategory opening_hours:covid19=>*, shop=>gift for AT should be gift'
);

SELECT is(
  get_category('opening_hours:covid19=>*, shop=>gift'::hstore, 'CH'),
  'shop',
  'get_category opening_hours:covid19=>*, shop=>gift for CH should be shop'
);

SELECT is(
  get_subcategory('opening_hours:covid19=>*, shop=>gift'::hstore, 'CH'),
  'gift',
  'get_subcategory opening_hours:covid19=>*, shop=>gift for CH should be gift'
);

SELECT is(
  get_category('shop=>hairdresser'::hstore, 'DE'),
  'shop',
  'get_category shop=>hairdresser for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>hairdresser'::hstore, 'DE'),
  'hairdresser',
  'get_subcategory shop=>hairdresser for DE should be hairdresser'
);

SELECT is(
  get_category('shop=>hairdresser'::hstore, 'AT'),
  'shop',
  'get_category shop=>hairdresser for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>hairdresser'::hstore, 'AT'),
  'hairdresser',
  'get_subcategory shop=>hairdresser for AT should be hairdresser'
);

SELECT is(
  get_category('shop=>hairdresser'::hstore, 'CH'),
  'shop',
  'get_category shop=>hairdresser for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>hairdresser'::hstore, 'CH'),
  'hairdresser',
  'get_subcategory shop=>hairdresser for CH should be hairdresser'
);

SELECT is(
  get_category('shop=>jewelry'::hstore, 'DE'),
  'shop',
  'get_category shop=>jewelry for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>jewelry'::hstore, 'DE'),
  'jewelry',
  'get_subcategory shop=>jewelry for DE should be jewelry'
);

SELECT is(
  get_category('shop=>jewelry'::hstore, 'AT'),
  'shop',
  'get_category shop=>jewelry for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>jewelry'::hstore, 'AT'),
  'jewelry',
  'get_subcategory shop=>jewelry for AT should be jewelry'
);

SELECT is(
  get_category('shop=>jewelry'::hstore, 'CH'),
  'shop',
  'get_category shop=>jewelry for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>jewelry'::hstore, 'CH'),
  'jewelry',
  'get_subcategory shop=>jewelry for CH should be jewelry'
);

SELECT is(
  get_category('shop=>toys'::hstore, 'DE'),
  'shop',
  'get_category shop=>toys for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>toys'::hstore, 'DE'),
  'toys',
  'get_subcategory shop=>toys for DE should be toys'
);

SELECT is(
  get_category('shop=>toys'::hstore, 'AT'),
  'shop',
  'get_category shop=>toys for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>toys'::hstore, 'AT'),
  'toys',
  'get_subcategory shop=>toys for AT should be toys'
);

SELECT is(
  get_category('shop=>toys'::hstore, 'CH'),
  'shop',
  'get_category shop=>toys for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>toys'::hstore, 'CH'),
  'toys',
  'get_subcategory shop=>toys for CH should be toys'
);

SELECT is(
  get_category('shop=>sports'::hstore, 'DE'),
  'shop',
  'get_category shop=>sports for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>sports'::hstore, 'DE'),
  'sports',
  'get_subcategory shop=>sports for DE should be sports'
);

SELECT is(
  get_category('shop=>sports'::hstore, 'AT'),
  'shop',
  'get_category shop=>sports for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>sports'::hstore, 'AT'),
  'sports',
  'get_subcategory shop=>sports for AT should be sports'
);

SELECT is(
  get_category('shop=>sports'::hstore, 'CH'),
  'shop',
  'get_category shop=>sports for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>sports'::hstore, 'CH'),
  'sports',
  'get_subcategory shop=>sports for CH should be sports'
);

SELECT is(
  get_category('shop=>sports'::hstore, 'FI'),
  'shop',
  'get_category shop=>sports for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>sports'::hstore, 'FI'),
  'sports',
  'get_subcategory shop=>sports for FI should be sports'
);

SELECT is(
  get_category('shop=>outdoor'::hstore, 'DE'),
  'shop',
  'get_category shop=>outdoor for DE should be shop'
);

SELECT is(
  get_subcategory('shop=>outdoor'::hstore, 'DE'),
  'sports',
  'get_subcategory shop=>outdoor for DE should be sports'
);

SELECT is(
  get_category('shop=>outdoor'::hstore, 'AT'),
  'shop',
  'get_category shop=>outdoor for AT should be shop'
);

SELECT is(
  get_subcategory('shop=>outdoor'::hstore, 'AT'),
  'sports',
  'get_subcategory shop=>outdoor for AT should be sports'
);

SELECT is(
  get_category('shop=>outdoor'::hstore, 'CH'),
  'shop',
  'get_category shop=>outdoor for CH should be shop'
);

SELECT is(
  get_subcategory('shop=>outdoor'::hstore, 'CH'),
  'sports',
  'get_subcategory shop=>outdoor for CH should be sports'
);

SELECT is(
  get_category('shop=>outdoor'::hstore, 'FI'),
  'shop',
  'get_category shop=>outdoor for FI should be shop'
);

SELECT is(
  get_subcategory('shop=>outdoor'::hstore, 'FI'),
  'sports',
  'get_subcategory shop=>outdoor for FI should be sports'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'DE'),
  'mobility',
  'get_category amenity=>fuel for DE should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'DE'),
  'fuel',
  'get_subcategory amenity=>fuel for DE should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'FR'),
  'mobility',
  'get_category amenity=>fuel for FR should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'FR'),
  'fuel',
  'get_subcategory amenity=>fuel for FR should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'ES'),
  'mobility',
  'get_category amenity=>fuel for ES should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'ES'),
  'fuel',
  'get_subcategory amenity=>fuel for ES should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'AD'),
  'mobility',
  'get_category amenity=>fuel for AD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'AD'),
  'fuel',
  'get_subcategory amenity=>fuel for AD should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'CH'),
  'mobility',
  'get_category amenity=>fuel for CH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'CH'),
  'fuel',
  'get_subcategory amenity=>fuel for CH should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'AT'),
  'mobility',
  'get_category amenity=>fuel for AT should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'AT'),
  'fuel',
  'get_subcategory amenity=>fuel for AT should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'PH'),
  'mobility',
  'get_category amenity=>fuel for PH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'PH'),
  'fuel',
  'get_subcategory amenity=>fuel for PH should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'FI'),
  'mobility',
  'get_category amenity=>fuel for FI should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'FI'),
  'fuel',
  'get_subcategory amenity=>fuel for FI should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'MC'),
  'mobility',
  'get_category amenity=>fuel for MC should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'MC'),
  'fuel',
  'get_subcategory amenity=>fuel for MC should be fuel'
);

SELECT is(
  get_category('amenity=>fuel'::hstore, 'CD'),
  'mobility',
  'get_category amenity=>fuel for CD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>fuel'::hstore, 'CD'),
  'fuel',
  'get_subcategory amenity=>fuel for CD should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'DE'),
  'mobility',
  'get_category shop=>gas for DE should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'DE'),
  'fuel',
  'get_subcategory shop=>gas for DE should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'FR'),
  'mobility',
  'get_category shop=>gas for FR should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'FR'),
  'fuel',
  'get_subcategory shop=>gas for FR should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'ES'),
  'mobility',
  'get_category shop=>gas for ES should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'ES'),
  'fuel',
  'get_subcategory shop=>gas for ES should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'AD'),
  'mobility',
  'get_category shop=>gas for AD should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'AD'),
  'fuel',
  'get_subcategory shop=>gas for AD should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'CH'),
  'mobility',
  'get_category shop=>gas for CH should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'CH'),
  'fuel',
  'get_subcategory shop=>gas for CH should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'AT'),
  'mobility',
  'get_category shop=>gas for AT should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'AT'),
  'fuel',
  'get_subcategory shop=>gas for AT should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'PH'),
  'mobility',
  'get_category shop=>gas for PH should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'PH'),
  'fuel',
  'get_subcategory shop=>gas for PH should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'FI'),
  'mobility',
  'get_category shop=>gas for FI should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'FI'),
  'fuel',
  'get_subcategory shop=>gas for FI should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'MC'),
  'mobility',
  'get_category shop=>gas for MC should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'MC'),
  'fuel',
  'get_subcategory shop=>gas for MC should be fuel'
);

SELECT is(
  get_category('shop=>gas'::hstore, 'CD'),
  'mobility',
  'get_category shop=>gas for CD should be mobility'
);

SELECT is(
  get_subcategory('shop=>gas'::hstore, 'CD'),
  'fuel',
  'get_subcategory shop=>gas for CD should be fuel'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'DE'),
  'mobility',
  'get_category amenity=>car_rental for DE should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'DE'),
  'car_rental',
  'get_subcategory amenity=>car_rental for DE should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'FR'),
  'mobility',
  'get_category amenity=>car_rental for FR should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'FR'),
  'car_rental',
  'get_subcategory amenity=>car_rental for FR should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'ES'),
  'mobility',
  'get_category amenity=>car_rental for ES should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'ES'),
  'car_rental',
  'get_subcategory amenity=>car_rental for ES should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'AD'),
  'mobility',
  'get_category amenity=>car_rental for AD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'AD'),
  'car_rental',
  'get_subcategory amenity=>car_rental for AD should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'CH'),
  'mobility',
  'get_category amenity=>car_rental for CH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'CH'),
  'car_rental',
  'get_subcategory amenity=>car_rental for CH should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'AT'),
  'mobility',
  'get_category amenity=>car_rental for AT should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'AT'),
  'car_rental',
  'get_subcategory amenity=>car_rental for AT should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'PH'),
  'mobility',
  'get_category amenity=>car_rental for PH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'PH'),
  'car_rental',
  'get_subcategory amenity=>car_rental for PH should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'FI'),
  'mobility',
  'get_category amenity=>car_rental for FI should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'FI'),
  'car_rental',
  'get_subcategory amenity=>car_rental for FI should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'MC'),
  'mobility',
  'get_category amenity=>car_rental for MC should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'MC'),
  'car_rental',
  'get_subcategory amenity=>car_rental for MC should be car_rental'
);

SELECT is(
  get_category('amenity=>car_rental'::hstore, 'CD'),
  'mobility',
  'get_category amenity=>car_rental for CD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>car_rental'::hstore, 'CD'),
  'car_rental',
  'get_subcategory amenity=>car_rental for CD should be car_rental'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'DE'),
  'mobility',
  'get_category shop=>bicycle for DE should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'DE'),
  'bicycle',
  'get_subcategory shop=>bicycle for DE should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'FR'),
  'mobility',
  'get_category shop=>bicycle for FR should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'FR'),
  'bicycle',
  'get_subcategory shop=>bicycle for FR should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'ES'),
  'mobility',
  'get_category shop=>bicycle for ES should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'ES'),
  'bicycle',
  'get_subcategory shop=>bicycle for ES should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'AD'),
  'mobility',
  'get_category shop=>bicycle for AD should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'AD'),
  'bicycle',
  'get_subcategory shop=>bicycle for AD should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'CH'),
  'mobility',
  'get_category shop=>bicycle for CH should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'CH'),
  'bicycle',
  'get_subcategory shop=>bicycle for CH should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'AT'),
  'mobility',
  'get_category shop=>bicycle for AT should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'AT'),
  'bicycle',
  'get_subcategory shop=>bicycle for AT should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'PH'),
  'mobility',
  'get_category shop=>bicycle for PH should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'PH'),
  'bicycle',
  'get_subcategory shop=>bicycle for PH should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'FI'),
  'mobility',
  'get_category shop=>bicycle for FI should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'FI'),
  'bicycle',
  'get_subcategory shop=>bicycle for FI should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'MC'),
  'mobility',
  'get_category shop=>bicycle for MC should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'MC'),
  'bicycle',
  'get_subcategory shop=>bicycle for MC should be bicycle'
);

SELECT is(
  get_category('shop=>bicycle'::hstore, 'CD'),
  'mobility',
  'get_category shop=>bicycle for CD should be mobility'
);

SELECT is(
  get_subcategory('shop=>bicycle'::hstore, 'CD'),
  'bicycle',
  'get_subcategory shop=>bicycle for CD should be bicycle'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'DE'),
  'mobility',
  'get_category shop=>car_parts for DE should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'DE'),
  'car',
  'get_subcategory shop=>car_parts for DE should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'FR'),
  'mobility',
  'get_category shop=>car_parts for FR should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'FR'),
  'car',
  'get_subcategory shop=>car_parts for FR should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'ES'),
  'mobility',
  'get_category shop=>car_parts for ES should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'ES'),
  'car',
  'get_subcategory shop=>car_parts for ES should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'AD'),
  'mobility',
  'get_category shop=>car_parts for AD should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'AD'),
  'car',
  'get_subcategory shop=>car_parts for AD should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'CH'),
  'mobility',
  'get_category shop=>car_parts for CH should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'CH'),
  'car',
  'get_subcategory shop=>car_parts for CH should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'AT'),
  'mobility',
  'get_category shop=>car_parts for AT should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'AT'),
  'car',
  'get_subcategory shop=>car_parts for AT should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'PH'),
  'mobility',
  'get_category shop=>car_parts for PH should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'PH'),
  'car',
  'get_subcategory shop=>car_parts for PH should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'FI'),
  'mobility',
  'get_category shop=>car_parts for FI should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'FI'),
  'car',
  'get_subcategory shop=>car_parts for FI should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'MC'),
  'mobility',
  'get_category shop=>car_parts for MC should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'MC'),
  'car',
  'get_subcategory shop=>car_parts for MC should be car'
);

SELECT is(
  get_category('shop=>car_parts'::hstore, 'CD'),
  'mobility',
  'get_category shop=>car_parts for CD should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_parts'::hstore, 'CD'),
  'car',
  'get_subcategory shop=>car_parts for CD should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'DE'),
  'mobility',
  'get_category shop=>car_repair for DE should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'DE'),
  'car',
  'get_subcategory shop=>car_repair for DE should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'FR'),
  'mobility',
  'get_category shop=>car_repair for FR should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'FR'),
  'car',
  'get_subcategory shop=>car_repair for FR should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'ES'),
  'mobility',
  'get_category shop=>car_repair for ES should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'ES'),
  'car',
  'get_subcategory shop=>car_repair for ES should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'AD'),
  'mobility',
  'get_category shop=>car_repair for AD should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'AD'),
  'car',
  'get_subcategory shop=>car_repair for AD should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'CH'),
  'mobility',
  'get_category shop=>car_repair for CH should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'CH'),
  'car',
  'get_subcategory shop=>car_repair for CH should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'AT'),
  'mobility',
  'get_category shop=>car_repair for AT should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'AT'),
  'car',
  'get_subcategory shop=>car_repair for AT should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'PH'),
  'mobility',
  'get_category shop=>car_repair for PH should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'PH'),
  'car',
  'get_subcategory shop=>car_repair for PH should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'FI'),
  'mobility',
  'get_category shop=>car_repair for FI should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'FI'),
  'car',
  'get_subcategory shop=>car_repair for FI should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'MC'),
  'mobility',
  'get_category shop=>car_repair for MC should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'MC'),
  'car',
  'get_subcategory shop=>car_repair for MC should be car'
);

SELECT is(
  get_category('shop=>car_repair'::hstore, 'CD'),
  'mobility',
  'get_category shop=>car_repair for CD should be mobility'
);

SELECT is(
  get_subcategory('shop=>car_repair'::hstore, 'CD'),
  'car',
  'get_subcategory shop=>car_repair for CD should be car'
);

SELECT is(
  get_category('shop=>car'::hstore, 'DE'),
  'mobility',
  'get_category shop=>car for DE should be mobility'
);

SELECT is(
  get_subcategory('shop=>car'::hstore, 'DE'),
  'car_dealer',
  'get_subcategory shop=>car for DE should be car_dealer'
);

SELECT is(
  get_category('shop=>car'::hstore, 'AT'),
  'mobility',
  'get_category shop=>car for AT should be mobility'
);

SELECT is(
  get_subcategory('shop=>car'::hstore, 'AT'),
  'car_dealer',
  'get_subcategory shop=>car for AT should be car_dealer'
);

SELECT is(
  get_category('shop=>car'::hstore, 'CH'),
  'mobility',
  'get_category shop=>car for CH should be mobility'
);

SELECT is(
  get_subcategory('shop=>car'::hstore, 'CH'),
  'car_dealer',
  'get_subcategory shop=>car for CH should be car_dealer'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'DE'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for DE should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'DE'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for DE should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'FR'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for FR should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'FR'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for FR should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'ES'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for ES should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'ES'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for ES should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'AD'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for AD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'AD'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for AD should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'CH'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for CH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'CH'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for CH should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'AT'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for AT should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'AT'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for AT should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'PH'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for PH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'PH'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for PH should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'FI'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for FI should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'FI'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for FI should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'MC'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for MC should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'MC'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for MC should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'CD'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>bicycle_tube for CD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>bicycle_tube'::hstore, 'CD'),
  'bicycle_tube',
  'get_subcategory amenity=>vending_machine, vending=>bicycle_tube for CD should be bicycle_tube'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'DE'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for DE should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'DE'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for DE should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'FR'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for FR should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'FR'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for FR should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'ES'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for ES should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'ES'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for ES should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'AD'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for AD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'AD'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for AD should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'CH'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for CH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'CH'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for CH should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'AT'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for AT should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'AT'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for AT should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'PH'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for PH should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'PH'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for PH should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'FI'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for FI should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'FI'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for FI should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'MC'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for MC should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'MC'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for MC should be public_transport_tickets'
);

SELECT is(
  get_category('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'CD'),
  'mobility',
  'get_category amenity=>vending_machine, vending=>public_transport_tickets for CD should be mobility'
);

SELECT is(
  get_subcategory('amenity=>vending_machine, vending=>public_transport_tickets'::hstore, 'CD'),
  'public_transport_tickets',
  'get_subcategory amenity=>vending_machine, vending=>public_transport_tickets for CD should be public_transport_tickets'
);

SELECT * FROM finish();
ROLLBACK;
