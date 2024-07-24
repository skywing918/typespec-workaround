import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;
using OpenAPI;

@service
namespace Extensions;
model WidgetId {
  @path id: string;
}

// multiple media types with same schema
@post op getImage(...WidgetId): {
  @header contentType: "text/html";
  @extension("x-custom", "foo")
  @body _: string;
};