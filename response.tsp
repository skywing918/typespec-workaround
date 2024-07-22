import "@typespec/http";

using TypeSpec.Http;

@service({
  title: "Operation Docs"
})
#suppress "@typespec/http/no-routes"
namespace OperationDocs;
model user {
  username?: string;
  uuid?: string;
}

@route("/2.0/users/")
@get op getUserByName(@path username: string): user;