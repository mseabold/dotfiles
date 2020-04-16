try
    " Use \ to prefix camel case motions...
    " NOTE: this will cause an exception if CamelCaseMotion
    "       is not installed, so we will skip the remappings
    call camelcasemotion#CreateMotionMappings('<leader>')

    " ... but map some common ones for us to use quickly
    map W <Plug>CamelCaseMotion_w
    map B <Plug>CamelCaseMotion_b

    sunmap W
    sunmap B
catch
    " No CamelCaseMotion installed
endtry
