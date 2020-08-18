-- SELECT avg(completed_at - started_at) as average_assistance_request_duration
-- FROM assistance_requests;

SELECT AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_request_duration
FROM assistance_requests;

-- SELECT *
-- FROM assistance_requests
-- LIMIT
-- 5;