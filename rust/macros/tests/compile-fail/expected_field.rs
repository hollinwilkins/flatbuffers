#![feature(plugin)]
#![plugin(flatbuffers_macros)]

extern crate flatbuffers_macros;

flatbuffers_object!{Table => Monster [//~ Error: Invalid field def
    pos
]}


fn main() {}
