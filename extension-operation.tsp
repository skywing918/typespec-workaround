import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;
using OpenAPI;

@service
namespace Extensions;

@route("/status")
@extension("x-custom", "foo")
@get op status(@path region: string): OkResponse;