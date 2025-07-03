CREATE TABLE public.reports (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  individual_id UUID REFERENCES public.individuals(id) ON DELETE CASCADE,
  reporter_id UUID, -- This will link to Supabase auth.users table later
  location_lat NUMERIC,
  location_lon NUMERIC,
  status_update TEXT,
  notes TEXT,
  reported_at TIMESTAMPTZ DEFAULT now(),
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

ALTER TABLE public.reports ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Authenticated users can insert reports." ON public.reports
  FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can view reports." ON public.reports
  FOR SELECT USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can update their own reports." ON public.reports
  FOR UPDATE USING (auth.uid() = reporter_id);

CREATE POLICY "Authenticated users can delete their own reports." ON public.reports
  FOR DELETE USING (auth.uid() = reporter_id);
