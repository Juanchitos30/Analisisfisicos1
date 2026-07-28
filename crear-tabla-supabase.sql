-- Ejecuta esto en Supabase: Panel del proyecto → SQL Editor → New query → Run

create table if not exists public.lotes (
  lote text primary key,
  fecha text,
  muestra text,
  faltas text,
  observacion text,
  g1_negro text,
  g1_rojo text,
  g1_vinagre text,
  g1_mantequillo text,
  g1_reposado text,
  g1_cardenillo text,
  g1_piedras text,
  g1_guayaba text,
  g1_negroparcial text,
  g1_vinagreparcial text,
  g1_cardenilloparcial text,
  g2_partidos text,
  g2_pasilla text,
  g2_concha text,
  g2_blanco text,
  g2_aplastados text,
  g2_vano text,
  g2_averanado text,
  g2_brocados text,
  g2_brocaspunto text,
  malla_18 text,
  malla_17 text,
  malla_16 text,
  malla_15 text,
  malla_14 text,
  malla_13 text,
  malla_12 text,
  malla_0 text,
  creado_en timestamp with time zone default now()
);

-- Habilita Row Level Security (obligatorio en Supabase)
alter table public.lotes enable row level security;

-- Política simple: permite leer y escribir a cualquiera que use la
-- llave "anon" (pública) de tu proyecto. Como esto es un formulario
-- interno sin login, es la opción más sencilla para empezar.
-- Si más adelante agregas autenticación de usuarios, puedes reemplazar
-- estas políticas por unas más restrictivas.
create policy "Permitir lectura publica" on public.lotes
  for select using (true);

create policy "Permitir escritura publica" on public.lotes
  for insert with check (true);

create policy "Permitir actualizacion publica" on public.lotes
  for update using (true);

-- =========================================================================
-- MIGRACIÓN: permitir varias muestras (Ax75, Bx75, Cx75, Dx50...) para un
-- mismo número de lote. Antes "lote" era la llave primaria (una fila por
-- lote); ahora la llave es la combinación de lote + muestra.
--
-- Ejecuta este bloque UNA SOLA VEZ si ya habías creado la tabla antes con
-- la versión anterior de este script. Si es la primera vez que creas la
-- tabla, este bloque no hace nada (los "if exists" lo protegen).
-- =========================================================================

alter table public.lotes drop constraint if exists lotes_pkey;

alter table public.lotes add column if not exists id bigserial;

do $$
begin
  if not exists (
    select 1 from pg_constraint where conname = 'lotes_id_pkey'
  ) then
    alter table public.lotes add constraint lotes_id_pkey primary key (id);
  end if;
end $$;

do $$
begin
  if not exists (
    select 1 from pg_constraint where conname = 'lotes_lote_muestra_key'
  ) then
    alter table public.lotes add constraint lotes_lote_muestra_key unique (lote, muestra);
  end if;
end $$;

