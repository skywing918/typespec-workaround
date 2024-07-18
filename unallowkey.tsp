import "@typespec/openapi";
import "@typespec/openapi3";

using TypeSpec.OpenAPI;

@info({
  unallowKey: {},
})
@service({
  title: "My service",
})
namespace PetStore;