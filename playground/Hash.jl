
# 0..5 do i
#   println(i)
# end

# (0..7)() do i
#     println("$i")
# end
# -------------------------------
# function ..(start_ind, end_ind)
#     (cb) -> begin
#         for i = start_ind:end_ind
#             cb(i)
#         end
#     end
# end
# 
 

# ..(0,5) do i
#     println("$i")
# end
# -----------------------------------
# function ..(cb, start_ind, end_ind)
#     for i = start_ind:end_ind
#         cb(i)
#     end
# end

#restrictions:
    # cant specify prefix, postfix, infix...etc of operator
    # operators cant be passed functions
    # macros require @ in front and are limited