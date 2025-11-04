SELECT * FROM plan_prod_daily_view_board WHERE OUT_PLAN_ID = '20250805091103609522N1';

SELECT * FROM plan_prod_daily_view_board WHERE OUT_PLAN_ID = '20250805091103609522N10';

SELECT id, nik, nama FROM karyawans_tr WHERE nik="TR2507085";

SELECT id, nik, nama FROM karyawans WHERE id="6582" OR id="2671" OR id="5872" OR id="6116";

SELECT * FROM biodata_karyawans WHERE id_karyawan='6582';

SELECT a.id_karyawan, a.id_agama, b.nama, a.jenis_kelamin
	FROM biodata_karyawans a
	LEFT JOIN karyawans b ON a.id_karyawan = b.id
	WHERE a.id_agama LIKE '%1%'
	ORDER BY nama;

SELECT b.nama, a.* FROM absens a LEFT JOIN karyawans b ON a.id_karyawan = b.id WHERE NOT a.keterangan='A' AND id_karyawan IN(6582, 2671, 19, 5872, 6545, 6116) ORDER BY tanggal DESC, masuk ASC;

SELECT b.nama, a.* FROM absens a LEFT JOIN karyawans b ON a.id_karyawan = b.id WHERE id_karyawan IN(6582, 2671, 19, 6545, 6116) ORDER BY tanggal DESC, masuk ASC;

SELECT b.nama, a.* FROM absens a LEFT JOIN karyawans b ON a.id_karyawan = b.id WHERE NOT a.keterangan='A' AND id_karyawan IN(6116,6582) ORDER BY tanggal DESC, masuk ASC;

SELECT * FROM absens WHERE id_karyawan='6582' ORDER BY tanggal DESC, masuk ASC;

SELECT * FROM karyawans_view_all WHERE STATUS="aktif";

SELECT * FROM karyawans WHERE nik='M.2506.5152';
SELECT * FROM karyawans_tr WHERE nik='TR2508006';

UPDATE karyawans_tr SET tgl_keluar=NULL, status='AKTIF'  WHERE nik='TR2508006';

DELETE FROM karyawans_tr_stat WHERE id='2556' AND stat='OUT';

SELECT * FROM karyawans_tr_stat WHERE id='1983';

SELECT * FROM scan_logs WHERE LOG_DATE="2025-08-29";

SELECT * FROM karyawans_tr WHERE id IN (
2552,
2520);

SELECT * FROM karyawans WHERE nik IN(
'M.2509.6964',
'M.2509.6965');

SELECT sa.nama, sa.nik, sb.LOG_DATE, sb.LOG_TIME
	 FROM (
	   SELECT a.nama, a.nik
	   FROM karyawans a WHERE a.nik IN (
'M.2506.6664',
'M.2111.3100')
UNION ALL
SELECT a.nama, a.nik
	   FROM karyawans_tr a WHERE a.nik IN (
'TR2508060',
'TR2508057')
	 ) sa 
	 LEFT JOIN scan_logs sb ON sa.nik = sb.LOG_NIK
	 WHERE sb.LOG_DATE='2025-08-29';
	 
SELECT a.jenis_kelamin, b.nik, b.nama, b.masuk, b.keluar FROM biodata_karyawans a
LEFT JOIN karyawans b ON a.id_karyawan = b.id
WHERE b.nik IN(
'M.2507.6869',
'M.2509.6948')
ORDER BY nik ASC;

SELECT a.jenis_kelamin, b.nik, b.nama, b.masuk, b.keluar FROM biodata_karyawans a
LEFT JOIN karyawans b ON a.id_karyawan = b.id
WHERE b.nik IN(
'M.2506.5169',
'M.2506.5171')
ORDER BY nik ASC;

SELECT * FROM karyawans_tr_absen WHERE date_absen LIKE '%2025-09%' AND id IN (
'2347',
'2610');