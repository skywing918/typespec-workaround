import "@typespec/http";
import "@typespec/openapi3";

using TypeSpec.Http;
using TypeSpec.OpenAPI;
@service
@server("https://test.contoso.com", "test domain")
namespace PetStore;