##../ascii
@transform_function_into_ascii+=
elseif name == "overleftrightarrow" then
  local belowgrid = to_ascii({explist[exp_i+1]}, 1)
  exp_i = exp_i + 1
  @generate_overleftright_arrow
  g = arrow:join_vert(belowgrid)
  g.my = belowgrid.my + 1

@generate_overleftright_arrow+=
local txt = "←"
local w = math.max(belowgrid.w-2, 0)
if belowgrid.w <= 1 then
  txt = "⟷"
  w = 1
else
  for x=1,w do
    txt = txt .. "—"
  end
  txt = txt .. "→"
  w = w + 2
end

local arrow = grid:new(w, 1, {txt})
