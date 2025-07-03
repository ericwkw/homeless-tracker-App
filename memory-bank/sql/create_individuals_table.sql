CREATE TABLE public.individuals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  qr_code_id TEXT UNIQUE NOT NULL,
  first_name TEXT,
  last_name TEXT,
  nickname TEXT,
  date_of_birth DATE,
  profile_photo_url TEXT,
  awaiting_hospitalization BOOLEAN DEFAULT FALSE,
  awaiting_shelter_placement BOOLEAN DEFAULT FALSE,
  employment_status TEXT CHECK (employment_status IN ('Employed', 'Unemployed')),
  temporary_shelter_status BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

ALTER TABLE public.individuals ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Individuals can view their own data." ON public.individuals
  FOR SELECT USING (auth.uid() = id);

CREATE POLICY "Authenticated users can insert individuals." ON public.individuals
  FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can update individuals." ON public.individuals
  FOR UPDATE USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can delete individuals." ON public.individuals
  FOR DELETE USING (auth.role() = 'authenticated');
