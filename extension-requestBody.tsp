import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;
using OpenAPI;

@service
namespace Extensions;

model Widget {
  @visibility("read")
  id: string;
  weight?: int32;
  color?: "red" | "blue";
}


@route("/body")
namespace Body {
  @post op explicit(): {
    @extension("x-custom", "foo")
    @body widget?: Widget;
  };
}