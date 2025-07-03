CREATE TABLE public.check_ins (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  individual_id UUID REFERENCES public.individuals(id) ON DELETE CASCADE,
  location_lat NUMERIC,
  location_lon NUMERIC,
  checked_in_at TIMESTAMPTZ DEFAULT now(),
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

ALTER TABLE public.check_ins ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Authenticated users can insert check-ins." ON public.check_ins
  FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can view check-ins." ON public.check_ins
  FOR SELECT USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can update check-ins." ON public.check_ins
  FOR UPDATE USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can delete check-ins." ON public.check_ins
  FOR DELETE USING (auth.role() = 'authenticated');
