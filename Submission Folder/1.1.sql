SELECT s.sname
FROM student s 
	INNER JOIN course cr ON (s.snum = cr.snum)
    INNER JOIN class cl ON (cr.cname = cl.name)
    INNER JOIN department d ON (cl.fid = d.fid)
WHERE cname = 'History' AND d.fname = 'Ivana Teach'
ORDER by s.age DESC