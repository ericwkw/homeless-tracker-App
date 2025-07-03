import { supabase } from '../../utils/supabaseClient';

export async function GET(request) {
  const { data, error } = await supabase
    .from('check_ins')
    .select('*');

  if (error) {
    return new Response(JSON.stringify({ error: error.message }), { status: 500 });
  }

  return new Response(JSON.stringify(data), { status: 200 });
}

export async function POST(request) {
  const { individual_id, location_lat, location_lon } = await request.json();

  const { data, error } = await supabase
    .from('check_ins')
    .insert([{ individual_id, location_lat, location_lon }]);

  if (error) {
    return new Response(JSON.stringify({ error: error.message }), { status: 500 });
  }

  return new Response(JSON.stringify(data), { status: 201 });
}
