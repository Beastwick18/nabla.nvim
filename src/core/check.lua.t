##../ascii
@transform_function_into_ascii+=
elseif name == "check" then
  local belowgrid = to_ascii({explist[exp_i+1]}, 1)
  exp_i = exp_i + 1
  local check = grid:new(1, 1, { "⌄" })
  g = check:join_vert(belowgrid)
  g.my = belowgrid.my + 1
