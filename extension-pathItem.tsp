import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;
using OpenAPI;

@service
namespace Extensions;

@route("/widgets")

namespace Widgets {
  // This operation will use the get method  
  @get op get( @path id: string,): string;
}
