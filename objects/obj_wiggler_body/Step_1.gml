/// @description Activate parent
if not instance_exists(parent)
{
    instance_activate_object(parent)
    with parent event_perform(ev_step,ev_step_begin)
}

//If wiggler is not turning, snap into place
if direct = nextdirect
    x = parent.x-offset*direct

