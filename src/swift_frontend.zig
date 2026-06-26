//! Re-export of the vulkan-zig registry frontend (XML parse + data model + id
//! rendering) so an out-of-tree generator can reuse the upstream vk.xml parser
//! without depending on the Zig-emitting `render.zig` backend.
//!
//! Nucleus consumes this to drive a Swift-emitting backend (NucleusVulkan):
//! the parser and registry model are reused verbatim; only the rendering step
//! is replaced. Rooted at `src/` so the parser's intra-tree relative imports
//! (`../xml.zig`, `vulkan/parse.zig`, …) resolve within this module.

pub const registry = @import("vulkan/registry.zig");
pub const parse = @import("vulkan/parse.zig");
pub const xml = @import("xml.zig");
pub const id_render = @import("id_render.zig");
