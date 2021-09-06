/// @description Unlock doors
if other.visible = 1
{
    with other event_user(0)
    instance_destroy()
}

