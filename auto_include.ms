#       Easy permission handling.
#       Usage: |
#       *:/example_command = >>>
#           _permission('admin')
#           die()
#       <<<
#       
#       The above command requires the player executing the command to have the permission 'kadach.admin'

proc(_permission, @name,
    if(player() == '~console', return())
    if(pisop(), return())
    
    if(has_permission('kadach.' . @name), return())
    
    msg(color(red), 'You do not have permission to execute this command.')
    die()
)