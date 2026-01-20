CREATE OR REPLACE TABLE `root-stock-484906-t3.kimia_farma.analisa_kinerja` AS
SELECT 
    t.transaction_id,
    t.date,
    t.branch_id,
    c.branch_name,
    c.kota,
    c.provinsi,
    c.rating AS rating_cabang, -- Penilaian konsumen terhadap cabang [cite: 39]
    t.customer_name,
    t.product_id,
    p.product_name,
    p.price AS actual_price,
    t.discount_percentage,
    
    -- Menentukan persentase laba berdasarkan tier harga 
    CASE 
        WHEN p.price <= 50000 THEN 0.10
        WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
        WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
        WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS persentase_gross_laba,

    -- Menghitung harga setelah diskon (nett_sales) [cite: 54]
    (p.price * (1 - t.discount_percentage)) AS nett_sales,

    -- Menghitung keuntungan bersih (nett_profit) [cite: 55]
    ((p.price * (1 - t.discount_percentage)) * CASE 
            WHEN p.price <= 50000 THEN 0.10
            WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
            WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
            WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
            ELSE 0.30
        END
    ) AS nett_profit,

    t.rating AS rating_transaksi -- Penilaian konsumen terhadap transaksi [cite: 55]

FROM `root-stock-484906-t3.kimia_farma.kf_final_transaction` AS t
LEFT JOIN `root-stock-484906-t3.kimia_farma.kf_kantor_cabang` AS c ON t.branch_id = c.branch_id
LEFT JOIN `root-stock-484906-t3.kimia_farma.kf_product` AS p ON t.product_id = p.product_id;