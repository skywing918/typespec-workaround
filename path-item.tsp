import "@typespec/http";

using TypeSpec.Http;

@service({
  title: "Path Items",
})
#suppress "@typespec/http/no-routes"
namespace PathItems;

model Widget {
  @visibility("read")
  id: string;
  weight?: int32;
  color?: "red" | "blue";
}

@error
model Error {
  code: int32;
  message: string;
}

@route("/widgets")
namespace Widgets {
  @doc("desc path item")
  @put op create(@path id: string, @body widget: Widget): Widget| Error;;
}