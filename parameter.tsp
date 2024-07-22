import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;
using OpenAPI;

@service({
  title: "Style and Explode"
})
namespace StyleAndExplode;

model Widget {
  @visibility("read")
  id: string;
  weight?: int32;
  color?: "red" | "blue";
}

// TypeSpec supports certain combinations of the style and explode
// fields of parameter objects.

@tag("Widgets")
@route("/widgets")
namespace Widgets {
  // Header parameters
  @post op create(
    // has no style or explode
    @header apiVersion?: string,

    // has style: simple and no explode
    @header({format: "simple"}) xMsClientRequestId?: string,
  ): Widget;
}