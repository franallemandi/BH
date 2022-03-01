SELECT
  e.EmpID,
  e.Name,
  e.Gender,
  e.Address,
  e.Phone,
  e.BirthPlace,
  e.BirthDate,
  e.Team,
  t.Budget AS 'Team Budget',
  t.WorkMethod AS 'Team WM',
  t.Department AS 'Team Department',
  j.Role,
  j.Level,
  j.Salary,
  j.Time AS 'Role Experience',
  c.Description AS 'Certificate Description',
  c.Date AS 'Certificate Date',
  ec.Name AS 'EC Name',
  ec.Address AS 'EC Address',
  ec.Phone AS 'EC Phone',
  ec.Relationship AS 'EC Relationship'
FROM
  Employees AS e
  JOIN Teams AS t ON t.Name = e.Team
  JOIN Jobs AS j ON e.EmpID = j.EmpID
  LEFT JOIN Certificates AS c ON e.EmpID = c.EmpID / / left xq puede no tener alguno de estos
  LEFT JOIN EmergencyContacts AS ec ON e.EmpID = ec.EmpID
WHERE
  e.EmpID = 'emp_56';