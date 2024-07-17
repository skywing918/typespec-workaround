import "@typespec/openapi";
import "@typespec/openapi3";
using TypeSpec.OpenAPI;
@extension("x-custom", "My value")
@service({title:" title info"})
namespace PetStore;