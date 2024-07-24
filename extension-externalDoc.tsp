import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;
using OpenAPI;
@extension("x-custom", "foo")
@externalDocs("https://docs.contoso.com/widgetservice","desc")
@service
namespace Extensions;