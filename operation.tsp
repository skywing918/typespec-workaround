import "@typespec/http";

using TypeSpec.Http;

@service({
  title: "Operation Docs",
})
#suppress "@typespec/http/no-routes"
namespace OperationDocs;

// You can also specify the description in a "doc comment".
// Doc comments may be spread across multiple lines and
// may contain markdown formatting.
// Doc comments can also add descriptions to parameters.

/** 
 * Get status for a region.
 * 
 * The status includes
 * - the number of active workers
 * - the number of pending jobs
 * - the average job duration
 * 
 * @param region The region for which to return status
 */
@tag("Description")
@route("/status")
@post op action(@path id: string): string;