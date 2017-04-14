" Use \ to prefix camel case motions...
call camelcasemotion#CreateMotionMappings('<leader>')

" ... but map some common ones for us to use quickly
map W <Plug>CamelCaseMotion_w
map B <Plug>CamelCaseMotion_b

sunmap W
sunmap B
