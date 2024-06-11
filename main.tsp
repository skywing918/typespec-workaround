import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi";
import "@typespec/openapi3";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.OpenAPI;

/**
 * This is a sample server Petstore server.
 */
@info({
  title: "title - info",
  contact_email: {
    a: "aaa",
    b: "bbb",
  },
})
@service
namespace PetStore;

@extension("x-custom", "My value")
op readxxx(): string;
