##../ascii
@transform_function_into_ascii+=
elseif name == "grave" then
  local belowgrid = to_ascii({explist[exp_i+1]}, 1)
  exp_i = exp_i + 1
  local grave = grid:new(1, 1, { "ˎ" })
  g = grave:join_vert(belowgrid)
  g.my = belowgrid.my + 1
