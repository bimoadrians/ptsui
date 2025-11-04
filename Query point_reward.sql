SELECT a.*, (a.ponx - (excax + excrx)) blpx, b.*, c.nama jabx, d.nama subx FROM (
    SELECT nikx, empflx, SUM(ponx) ponx, SUM(excax) excax, SUM(excrx) excrx, add_date, scan_item_id
    FROM (
      SELECT a.scan_nik nikx, a.scan_flag_empl empflx, SUM(a.scan_poin) ponx, 0 excax, 0 excrx, add_date, scan_item_id
      FROM reward_scan a 
      WHERE a.scan_flag_src = 'REG' GROUP BY a.scan_nik, a.scan_flag_empl UNION ALL
      
      SELECT a.scan_nik nikx, a.scan_flag_empl empflx, 0 ponx, SUM(a.scan_poin) excax, 0 excrx, add_date, scan_item_id
      FROM reward_scan a 
      WHERE a.scan_flag_src = 'EXC' AND a.scan_appr = 1 GROUP BY a.scan_nik, a.scan_flag_empl UNION ALL
      
      SELECT a.scan_nik nikx, a.scan_flag_empl empflx, 0 ponx, 0 excax, SUM(a.scan_poin) excrx, add_date, scan_item_id
      FROM reward_scan a 
      WHERE a.scan_flag_src = 'EXC' AND a.scan_appr = 0 GROUP BY a.scan_nik, a.scan_flag_empl
    ) a GROUP BY nikx, empflx
  ) a 
  LEFT JOIN view_empl_all b ON a.nikx = b.nik AND a.empflx = b.epl
  LEFT JOIN jabatans c ON b.id_jab = c.id
  LEFT JOIN sub_departemens d ON b.id_sub = d.id
  WHERE (UCASE(a.nikx) LIKE '%%' OR UCASE(b.nama) LIKE '%%')
  ORDER BY a.ponx DESC;
  
  SELECT a.scan_tgl, a.scan_nik, a.scan_poin, a.scan_flag_src, a.scan_appr, a.scan_item_qty, a.mod_date , b.*
    FROM reward_scan a
    LEFT JOIN reward_items b ON a.scan_item_id = b.reward_id
    WHERE a.scan_nik ='M.2212.4096' AND a.scan_flag_src = 'REG';
  
  SELECT a.scan_tgl, a.scan_nik, a.scan_poin, a.scan_flag_src, a.scan_appr, a.scan_item_qty, a.mod_date , b.*
    FROM reward_scan a
    LEFT JOIN reward_items b ON a.scan_item_id = b.reward_id
    WHERE a.scan_nik ='M.2212.4096' AND a.scan_flag_src = 'EXC';
  
  SELECT CONCAT(YEAR(a.scan_tgl), '-', MONTH(a.scan_tgl)) period, SUM(a.scan_poin) poin
    FROM reward_scan a
    LEFT JOIN reward_items b ON a.scan_item_id = b.reward_id
    WHERE a.scan_nik = 'M.2212.4096' AND a.scan_flag_src = 'REG' GROUP BY period;