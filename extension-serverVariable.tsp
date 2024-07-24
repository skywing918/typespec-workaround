import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;
using OpenAPI;

@service
@extension("x-custom", "foo")
@server("https://test.contoso.com", "test domain",  { 
  @extension("x-custom", "foo")
    region: string
  })
namespace Extensions;