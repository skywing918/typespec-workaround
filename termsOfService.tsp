import "@typespec/openapi";
import "@typespec/openapi3";

using TypeSpec.OpenAPI;

@info({
  termsOfService:"@is string"
})
@service({title: "My service"})
namespace PetStore;