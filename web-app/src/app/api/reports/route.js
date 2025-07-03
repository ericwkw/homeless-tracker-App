import { supabase } from '../../utils/supabaseClient';

export async function GET(request) {
  const { data, error } = await supabase
    .from('reports')
    .select('*');

  if (error) {
    return new Response(JSON.stringify({ error: error.message }), { status: 500 });
  }

  return new Response(JSON.stringify(data), { status: 200 });
}

export async function POST(request) {
  const { individual_id, reporter_id, location_lat, location_lon, status_update, notes } = await request.json();

  const { data, error } = await supabase
    .from('reports')
    .insert([{ individual_id, reporter_id, location_lat, location_lon, status_update, notes }]);

  if (error) {
    return new Response(JSON.stringify({ error: error.message }), { status: 500 });
  }

  return new Response(JSON.stringify(data), { status: 201 });
}
