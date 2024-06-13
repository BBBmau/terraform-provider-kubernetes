
resource "kubernetes_stateful_set_v1_gen" {
  package = "appsv1"

  api_version = "apps/v1"
  kind        = "StatefulSet"

  description = "statefulset"

  output_filename_prefix = "stateful_set"
  openapi {
    filename    = "./codegen/data/kubernetes-v1.28.3/api/openapi-spec/v3/apis__apps__v1_openapi.json"
    create_path = "/apis/apps/v1/namespaces/{namespace}/statefulsets"
    read_path   = "/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}"
  }

ignored_attributes = [
    "api_version",
    "kind",
    "metadata.finalizers",
    "metadata.managed_fields",
    "metadata.owner_references",
    "metadata.self_link",
    "metadata.creation_timestamp",
    "metadata.deletion_timestamp",
    "metadata.deletion_grace_period_seconds",
    "name",
    "namespace",
    "pretty"
  ]

computed_attributes = [
    "metadata.uid",
    "metadata.resource_version",
    "metadata.generation",
    "metadata.name",
    "type"
]

// default_values = {
//     "id" = "testing"
// }

  generate {
    schema     = true
    model      = true
    autocrud = true
    // autocrud_options {
    //     hooks{
    //         before{
    //             create = true
    //         }
    //         after{

    //         }
    //     }
    // }
  }
}
