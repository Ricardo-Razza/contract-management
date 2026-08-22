-- Continuidade (sem id auto)
SET NAMES utf8mb4;
START TRANSACTION;

ALTER TABLE equipe_contrato
  MODIFY COLUMN ata_id INT NULL,
  MODIFY COLUMN contrato_id INT NULL;

INSERT INTO equipe_contrato (contrato_id, ativo_id)
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2020 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2020 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 81 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2021 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 3 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 16 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 43 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 96 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 97 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 115 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 119 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 120 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 128 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 131 AND ano = 2022 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 47 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 68 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 73 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 86 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 94 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 99 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 101 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 105 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 110 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 111 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 117 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 118 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 119 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 123 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 124 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 125 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 126 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 128 AND ano = 2023 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 1 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 2 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 5 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 21 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 24 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 31 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 50 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 54 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 56 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 57 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 58 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 61 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 63 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 64 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 65 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 66 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 70 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 74 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 75 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 76 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 78 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 79 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 80 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 81 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 82 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 83 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 85 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 86 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 88 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 89 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 90 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 93 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 94 AND ano = 2024 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 10 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 11 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 14 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 18 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 19 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 21 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 23 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 25 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 28 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 29 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 30 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 33 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 36 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 39 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 45 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 46 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 47 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 48 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 50 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 51 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 52 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 53 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 54 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 55 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 56 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 57 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 59 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 60 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 62 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 63 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 64 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 65 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 66 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 67 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 68 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 69 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 70 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 71 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 72 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 75 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 77 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 78 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 79 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 82 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 83 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 84 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 85 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 87 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 88 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 89 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 90 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 91 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 92 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 93 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 95 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 96 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 97 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 98 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 99 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 100 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 101 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 102 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 103 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 105 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 106 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 107 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 108 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 109 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 110 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 111 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 112 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 113 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 1 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 2 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 3 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 4 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 5 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 6 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 7 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 8 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 9 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 10 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 12 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 13 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 14 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 15 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 16 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 17 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 18 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 19 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 20 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 22 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 76 AND ano = 2025 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 23 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 24 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 25 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 26 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 27 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 28 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 29 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 30 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 32 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 33 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 34 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 35 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 36 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 37 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 38 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 39 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 40 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 41 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 42 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 43 AND ano = 2026 LIMIT 1), 1
UNION ALL
SELECT (SELECT id FROM contrato WHERE numero = 44 AND ano = 2026 LIMIT 1), 1;

INSERT INTO equipe_membro (equipe_id, servidor_id, funcao_id)
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2020 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 85, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 164, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 203, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 103, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 204, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 180, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 45, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 21, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 97, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 4, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 210, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 211, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 212, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 4, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 121, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 213, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.homem2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2021 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 217, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'l.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.oliveira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 103, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 220, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 186, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.garcia3@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 6, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 222, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 223, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.cunha2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 225, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 226, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 227, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 228, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 231, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'p.antoni2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 234, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 236, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 238, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.azambuja2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'e.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 244, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 245, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 126, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 89, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 89, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'p.antoni2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 248, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 31, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 249, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 217, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 250, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'e.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 205, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 115 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 222, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.cunha2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 252, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 226, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 253, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 120 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 254, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.fraga2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.marques2@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 178, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 131 AND c.ano = 2022 ORDER BY e.id DESC LIMIT 1), 244, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 222, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 178, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 244, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 258, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 259, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 6, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 262, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 263, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 265, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 267, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 268, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 269, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 35, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 270, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 91, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 73 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 271, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 272, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 134, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 15, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 139, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 273, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 117 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 118 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 119 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 123 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 127, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 202, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 124 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 125 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 126 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 205, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 128 AND c.ano = 2023 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 253, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 254, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 277, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 269, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 278, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 84, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 144, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 126, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 31 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 262, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 279, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'p.antoni2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 281, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 282, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 80, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 283, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 4, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 284, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 235, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 242, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 129, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.santos3@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 85, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 58 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 61 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 44, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 274, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 275, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 287, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 288, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 169, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 74 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 289, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 27, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 166, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 290, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 80 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 277, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 269, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 168, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 81 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 86 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 292, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 94 AND c.ano = 2024 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 19, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 203, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 92, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 178, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 294, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 103, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 11 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 19, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 295, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 296, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 287, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 297, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.gomes2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 288, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 169, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 21 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 8, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 129, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 129, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 32, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 277, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 32, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 299, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 300, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 301, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 302, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 12, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 288, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 40, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.silva3@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 304, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 305, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 302, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 45 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 46 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 202, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 47 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 97, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 9, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 306, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 71, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 108, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.vargas2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 48 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 308, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 290, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 50 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 266, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 51 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 309, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 36, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 98, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 52 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 310, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 53 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 54 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 311, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 312, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 55 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 313, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.azambuja2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 56 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'e.goncalves2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 57 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 47, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 165, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 59 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 60 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 253, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 62 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 309, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 264, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 63 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 118, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 64 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 279, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 65 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 208, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 291, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 314, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 315, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 66 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 123, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 316, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 317, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 318, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 67 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 68 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 309, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 98, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 36, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 91, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 69 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 70 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 71 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 47, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 121, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 210, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 174, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 72 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 80, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 75 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 77 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 78 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 79 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 9, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 209, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 82 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 208, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 319, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 320, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 83 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 321, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 91, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 137, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 84 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 272, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 32, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 85 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 87 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 88 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 265, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 59, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 89 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 130, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 87, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 322, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 323, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 90 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 324, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 91 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 7, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 325, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 92 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 326, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 178, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 203, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 164, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 93 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 294, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 327, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 95 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 96 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 97 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 98 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 256, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 290, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 99 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 57, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 100 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 167, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 328, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 40, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 329, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 101 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 102 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 103 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 105 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 330, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 331, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 106 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 107 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 45, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 108 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 109 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 278, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 110 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 111 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 278, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 139, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 49, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 112 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 332, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 40, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.silva3@imbu.gov.br' LIMIT 1), 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 304, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 113 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 305, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 1 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 178, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 203, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 92, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 164, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 2 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 180, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 322, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 3 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 322, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 4 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 16, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 87, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 40, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 322, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 5 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 117, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'j.prado2@imbu.gov.br' LIMIT 1), 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 244, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 334, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 6 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 7 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 8 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 9 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 10 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 12 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 70, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 161, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 13 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 335, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 14 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'd.evangelista2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 15 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 16 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 27, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 21, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 17 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 286, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 206, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 18 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 247, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 337, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 19 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 43, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 18, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 88, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 100, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 170, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 20 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 67, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 22 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 168, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 76 AND c.ano = 2025 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 176, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 145, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 79, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 42, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 23 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 60, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 269, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 35, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 123, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 61, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 24 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 165, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 25 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 338, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 339, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 26 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 55, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'd.evangelista2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 27 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 338, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 146, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 339, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 28 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 280, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 29 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 207, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 251, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'd.evangelista2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 30 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 205, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 32 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 340, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 293, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 162, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 33 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 337, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 34 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 93, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 128, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 98, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 35 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 54, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 166, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 36 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 341, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 89, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 337, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 247, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'n.pereira2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 37 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'm.silva5@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 321, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 59, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 262, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 38 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 261, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 122, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 102, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 132, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 39 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 340, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 237, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 246, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 216, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), (SELECT id FROM servidor WHERE email = 'a.carlos2@imbu.gov.br' LIMIT 1), 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 40 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 215, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 148, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 29, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 156, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 321, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 185, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 41, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 82, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 64, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 131, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 41 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 125, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 23, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 111, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 42 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 276, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 172, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 186, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 333, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 260, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 43 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 119, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 7, 1
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 127, 2
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 201, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 318, 3
UNION ALL
SELECT (SELECT e.id FROM equipe_contrato e INNER JOIN contrato c ON c.id = e.contrato_id WHERE c.numero = 44 AND c.ano = 2026 ORDER BY e.id DESC LIMIT 1), 335, 3;

COMMIT;
