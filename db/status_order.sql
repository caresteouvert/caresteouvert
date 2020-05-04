--  Determine the status_order
CREATE OR REPLACE FUNCTION status_order_value(status VARCHAR) RETURNS INTEGER AS $$
BEGIN
	CASE status
		WHEN 'open' THEN RETURN 1;
		WHEN 'open_adapted' THEN RETURN 2;
		WHEN 'partial' THEN RETURN 3;
		WHEN 'unknown' THEN RETURN 4;
		ELSE RETURN 5;
	END CASE;
END;
$$ LANGUAGE plpgsql;
