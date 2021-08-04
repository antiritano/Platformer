// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function SlideTransition(_mode,_target)
{
          with(oTransition)
          {
                    mode = _mode;
                    target = _target;
                    if(argument_count > 1) _target = argument[1];
          }
}