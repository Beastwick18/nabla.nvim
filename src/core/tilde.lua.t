##../ascii
@transform_function_into_ascii+=
elseif name == "tilde" then
  local belowgrid = to_ascii({explist[exp_i+1]}, 1)
  exp_i = exp_i + 1
  local tilde = grid:new(utf8len(style.tilde_symbol), 1, { style.tilde_symbol })
  g = tilde:join_vert(belowgrid)
  g.my = belowgrid.my + 1

@style_variables+=
tilde_symbol = "˷",
