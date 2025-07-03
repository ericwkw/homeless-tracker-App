import { supabase } from '../../utils/supabaseClient';

export async function GET(request) {
  const { data, error } = await supabase
    .from('individuals')
    .select('*');

  if (error) {
    return new Response(JSON.stringify({ error: error.message }), { status: 500 });
  }

  return new Response(JSON.stringify(data), { status: 200 });
}

export async function POST(request) {
  const { qr_code_id, first_name, last_name, nickname, date_of_birth } = await request.json();

  const { data, error } = await supabase
    .from('individuals')
    .insert([{ qr_code_id, first_name, last_name, nickname, date_of_birth }]);

  if (error) {
    return new Response(JSON.stringify({ error: error.message }), { status: 500 });
  }

  return new Response(JSON.stringify(data), { status: 201 });
}
