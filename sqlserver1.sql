--query di dosen
select * from [10.103.1.158].SimIntegrasi.dbo.DOSEN S ORDER BY nama ASC
select * from [10.199.13.25].pdpt_its_2.dbo.tmst_dosen ORDER BY nama_dosen ASC

select * from [10.103.1.158].SimIntegrasi.dbo.DOSEN S FULL OUTER JOIN [10.199.13.25].pdpt_its_2.dbo.tmst_dosen A ON
S.nama=A.nama_dosen where a.nama_dosen is null --S.nama is null or A.nama_dosen is null

select * from [10.199.13.25].pdpt_its_2.dbo.tmst_dosen S LEFT JOIN [10.103.1.158].SimIntegrasi.dbo.DOSEN A ON
S.nama_dosen=A.nama where A.nama is null --S.nama is null or A.nama_dosen is null

select * from [10.103.1.158].SimIntegrasi.dbo.DOSEN S INNER JOIN [10.199.13.25].pdpt_its_2.dbo.tmst_dosen A ON
S.nama=A.nama_dosen where a.nama_dosen is null

--query di mahasiswa
select count(*) from [10.103.1.158].SimIntegrasi.dbo.AKTIVITASMHS where periodesem='20151' and NRP like '51%' and substring(NRP,5,3)='100' and (STATUSMAHASISWA = 'D' or STATUSMAHASISWA='N')
select * from [10.103.1.158].SimIntegrasi.dbo.AKTIVITASMHS where periodesem='20151' and NRP like '51%' and substring(NRP,5,3)='100' and (STATUSMAHASISWA = 'D' or STATUSMAHASISWA='N')
select substring(NRP,5,3) from [10.103.1.158].SimIntegrasi.dbo.AKTIVITASMHS

select * from [10.199.13.25].pdpt_its_2.dbo.taga_mhs_aktif_jml_jenjang where tahun_pelaporan = 2015
select * from [10.199.13.25].pdpt_its_2.dbo.tag_jumlah_mahasiswa where tahun_pelaporan = 2015

--SI
select count(*) from [10.103.1.158].SimIntegrasi.dbo.AKTIVITASMHS where periodesem='20151' and NRP like '52%' and substring(NRP,5,3)='100' and (STATUSMAHASISWA = 'D' or STATUSMAHASISWA='N')

--MATEMATIKA
select COUNT(*) from [10.103.1.158].SimIntegrasi.dbo.AKTIVITASMHS where periodesem='20151' and NRP like '12%' and substring(NRP,5,3)='100' and (STATUSMAHASISWA = 'D' or STATUSMAHASISWA='N')