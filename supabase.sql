-- Drop existing tables and enum type if they exist
DROP TABLE IF EXISTS quotations CASCADE;
DROP TABLE IF EXISTS vehicles CASCADE;
DROP TYPE IF EXISTS usage_type_enum;

-- Create ENUM type for usage_type
CREATE TYPE usage_type_enum AS ENUM ('personal', 'work', 'cargo');

-- Vehicles table
CREATE TABLE vehicles (
  vehicle_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  brand TEXT NOT NULL,
  model TEXT NOT NULL,
  year INT NOT NULL,
  usage_type usage_type_enum NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Quotations table
CREATE TABLE quotations (
  quotation_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  vehicle_id UUID NOT NULL REFERENCES vehicles(vehicle_id) ON DELETE CASCADE,
  driver_age INT NOT NULL,
  quotation_date DATE NOT NULL DEFAULT CURRENT_DATE,
  total_premium NUMERIC(12,2),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Disable Row Level Security
ALTER TABLE vehicles DISABLE ROW LEVEL SECURITY;
ALTER TABLE quotations DISABLE ROW LEVEL SECURITY;

-- Initial data: Vehicles
INSERT INTO vehicles (brand, model, year, usage_type)
VALUES
  ('Toyota', 'Corolla', 2021, 'personal'),
  ('Ford', 'F-150', 2019, 'work'),
  ('Mercedes', 'C-Class', 2023, 'personal');

-- Initial data: Quotations
INSERT INTO quotations (vehicle_id, driver_age, total_premium)
SELECT vehicle_id, 30, 850.00 FROM vehicles WHERE brand = 'Toyota'
UNION ALL
SELECT vehicle_id, 45, 1200.00 FROM vehicles WHERE brand = 'Ford'
UNION ALL
SELECT vehicle_id, 22, 2000.00 FROM vehicles WHERE brand = 'Mercedes';
