# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: cerbos/request/v1/request.proto

require 'google/protobuf'

require 'cerbos/protobuf/cerbos/engine/v1/engine_pb'
require 'cerbos/protobuf/cerbos/policy/v1/policy_pb'
require 'cerbos/protobuf/cerbos/schema/v1/schema_pb'
require 'cerbos/protobuf/google/api/field_behavior_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'cerbos/protobuf/protoc-gen-openapiv2/options/annotations_pb'
require 'cerbos/protobuf/validate/validate_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("cerbos/request/v1/request.proto", :syntax => :proto3) do
    add_message "cerbos.request.v1.PlanResourcesRequest" do
      optional :request_id, :string, 1, json_name: "requestId"
      optional :action, :string, 2, json_name: "action"
      optional :principal, :message, 3, "cerbos.engine.v1.Principal", json_name: "principal"
      optional :resource, :message, 4, "cerbos.engine.v1.PlanResourcesInput.Resource", json_name: "resource"
      optional :aux_data, :message, 5, "cerbos.request.v1.AuxData", json_name: "auxData"
      optional :include_meta, :bool, 6, json_name: "includeMeta"
    end
    add_message "cerbos.request.v1.CheckResourceSetRequest" do
      optional :request_id, :string, 1, json_name: "requestId"
      repeated :actions, :string, 2, json_name: "actions"
      optional :principal, :message, 3, "cerbos.engine.v1.Principal", json_name: "principal"
      optional :resource, :message, 4, "cerbos.request.v1.ResourceSet", json_name: "resource"
      optional :include_meta, :bool, 5, json_name: "includeMeta"
      optional :aux_data, :message, 6, "cerbos.request.v1.AuxData", json_name: "auxData"
    end
    add_message "cerbos.request.v1.ResourceSet" do
      optional :kind, :string, 1, json_name: "kind"
      optional :policy_version, :string, 2, json_name: "policyVersion"
      map :instances, :string, :message, 3, "cerbos.request.v1.AttributesMap"
      optional :scope, :string, 4, json_name: "scope"
    end
    add_message "cerbos.request.v1.AttributesMap" do
      map :attr, :string, :message, 1, "google.protobuf.Value"
    end
    add_message "cerbos.request.v1.CheckResourceBatchRequest" do
      optional :request_id, :string, 1, json_name: "requestId"
      optional :principal, :message, 2, "cerbos.engine.v1.Principal", json_name: "principal"
      repeated :resources, :message, 3, "cerbos.request.v1.CheckResourceBatchRequest.BatchEntry", json_name: "resources"
      optional :aux_data, :message, 4, "cerbos.request.v1.AuxData", json_name: "auxData"
    end
    add_message "cerbos.request.v1.CheckResourceBatchRequest.BatchEntry" do
      repeated :actions, :string, 1, json_name: "actions"
      optional :resource, :message, 2, "cerbos.engine.v1.Resource", json_name: "resource"
    end
    add_message "cerbos.request.v1.CheckResourcesRequest" do
      optional :request_id, :string, 1, json_name: "requestId"
      optional :include_meta, :bool, 2, json_name: "includeMeta"
      optional :principal, :message, 3, "cerbos.engine.v1.Principal", json_name: "principal"
      repeated :resources, :message, 4, "cerbos.request.v1.CheckResourcesRequest.ResourceEntry", json_name: "resources"
      optional :aux_data, :message, 5, "cerbos.request.v1.AuxData", json_name: "auxData"
    end
    add_message "cerbos.request.v1.CheckResourcesRequest.ResourceEntry" do
      repeated :actions, :string, 1, json_name: "actions"
      optional :resource, :message, 2, "cerbos.engine.v1.Resource", json_name: "resource"
    end
    add_message "cerbos.request.v1.AuxData" do
      optional :jwt, :message, 1, "cerbos.request.v1.AuxData.JWT", json_name: "jwt"
    end
    add_message "cerbos.request.v1.AuxData.JWT" do
      optional :token, :string, 1, json_name: "token"
      optional :key_set_id, :string, 2, json_name: "keySetId"
    end
    add_message "cerbos.request.v1.File" do
      optional :file_name, :string, 1, json_name: "fileName"
      optional :contents, :bytes, 2, json_name: "contents"
    end
    add_message "cerbos.request.v1.PlaygroundValidateRequest" do
      optional :playground_id, :string, 1, json_name: "playgroundId"
      repeated :files, :message, 2, "cerbos.request.v1.File", json_name: "files"
    end
    add_message "cerbos.request.v1.PlaygroundTestRequest" do
      optional :playground_id, :string, 1, json_name: "playgroundId"
      repeated :files, :message, 2, "cerbos.request.v1.File", json_name: "files"
    end
    add_message "cerbos.request.v1.PlaygroundEvaluateRequest" do
      optional :playground_id, :string, 1, json_name: "playgroundId"
      repeated :files, :message, 2, "cerbos.request.v1.File", json_name: "files"
      optional :principal, :message, 3, "cerbos.engine.v1.Principal", json_name: "principal"
      optional :resource, :message, 4, "cerbos.engine.v1.Resource", json_name: "resource"
      repeated :actions, :string, 5, json_name: "actions"
      optional :aux_data, :message, 6, "cerbos.request.v1.AuxData", json_name: "auxData"
    end
    add_message "cerbos.request.v1.PlaygroundProxyRequest" do
      optional :playground_id, :string, 1, json_name: "playgroundId"
      repeated :files, :message, 2, "cerbos.request.v1.File", json_name: "files"
      oneof :proxy_request do
        optional :check_resource_set, :message, 3, "cerbos.request.v1.CheckResourceSetRequest", json_name: "checkResourceSet"
        optional :check_resource_batch, :message, 4, "cerbos.request.v1.CheckResourceBatchRequest", json_name: "checkResourceBatch"
        optional :plan_resources, :message, 5, "cerbos.request.v1.PlanResourcesRequest", json_name: "planResources"
        optional :check_resources, :message, 6, "cerbos.request.v1.CheckResourcesRequest", json_name: "checkResources"
      end
    end
    add_message "cerbos.request.v1.AddOrUpdatePolicyRequest" do
      repeated :policies, :message, 1, "cerbos.policy.v1.Policy", json_name: "policies"
    end
    add_message "cerbos.request.v1.ListAuditLogEntriesRequest" do
      optional :kind, :enum, 1, "cerbos.request.v1.ListAuditLogEntriesRequest.Kind", json_name: "kind"
      oneof :filter do
        optional :tail, :uint32, 2, json_name: "tail"
        optional :between, :message, 3, "cerbos.request.v1.ListAuditLogEntriesRequest.TimeRange", json_name: "between"
        optional :since, :message, 4, "google.protobuf.Duration", json_name: "since"
        optional :lookup, :string, 5, json_name: "lookup"
      end
    end
    add_message "cerbos.request.v1.ListAuditLogEntriesRequest.TimeRange" do
      optional :start, :message, 1, "google.protobuf.Timestamp", json_name: "start"
      optional :end, :message, 2, "google.protobuf.Timestamp", json_name: "end"
    end
    add_enum "cerbos.request.v1.ListAuditLogEntriesRequest.Kind" do
      value :KIND_UNSPECIFIED, 0
      value :KIND_ACCESS, 1
      value :KIND_DECISION, 2
    end
    add_message "cerbos.request.v1.ServerInfoRequest" do
    end
    add_message "cerbos.request.v1.ListPoliciesRequest" do
    end
    add_message "cerbos.request.v1.GetPolicyRequest" do
      repeated :id, :string, 1, json_name: "id"
    end
    add_message "cerbos.request.v1.AddOrUpdateSchemaRequest" do
      repeated :schemas, :message, 1, "cerbos.schema.v1.Schema", json_name: "schemas"
    end
    add_message "cerbos.request.v1.ListSchemasRequest" do
    end
    add_message "cerbos.request.v1.GetSchemaRequest" do
      repeated :id, :string, 1, json_name: "id"
    end
    add_message "cerbos.request.v1.DeleteSchemaRequest" do
      repeated :id, :string, 1, json_name: "id"
    end
    add_message "cerbos.request.v1.ReloadStoreRequest" do
      optional :wait, :bool, 1, json_name: "wait"
    end
  end
end

module Cerbos::Protobuf::Cerbos
  module Request
    module V1
      PlanResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.PlanResourcesRequest").msgclass
      CheckResourceSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.CheckResourceSetRequest").msgclass
      ResourceSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ResourceSet").msgclass
      AttributesMap = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.AttributesMap").msgclass
      CheckResourceBatchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.CheckResourceBatchRequest").msgclass
      CheckResourceBatchRequest::BatchEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.CheckResourceBatchRequest.BatchEntry").msgclass
      CheckResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.CheckResourcesRequest").msgclass
      CheckResourcesRequest::ResourceEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.CheckResourcesRequest.ResourceEntry").msgclass
      AuxData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.AuxData").msgclass
      AuxData::JWT = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.AuxData.JWT").msgclass
      File = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.File").msgclass
      PlaygroundValidateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.PlaygroundValidateRequest").msgclass
      PlaygroundTestRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.PlaygroundTestRequest").msgclass
      PlaygroundEvaluateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.PlaygroundEvaluateRequest").msgclass
      PlaygroundProxyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.PlaygroundProxyRequest").msgclass
      AddOrUpdatePolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.AddOrUpdatePolicyRequest").msgclass
      ListAuditLogEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ListAuditLogEntriesRequest").msgclass
      ListAuditLogEntriesRequest::TimeRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ListAuditLogEntriesRequest.TimeRange").msgclass
      ListAuditLogEntriesRequest::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ListAuditLogEntriesRequest.Kind").enummodule
      ServerInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ServerInfoRequest").msgclass
      ListPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ListPoliciesRequest").msgclass
      GetPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.GetPolicyRequest").msgclass
      AddOrUpdateSchemaRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.AddOrUpdateSchemaRequest").msgclass
      ListSchemasRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ListSchemasRequest").msgclass
      GetSchemaRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.GetSchemaRequest").msgclass
      DeleteSchemaRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.DeleteSchemaRequest").msgclass
      ReloadStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("cerbos.request.v1.ReloadStoreRequest").msgclass
    end
  end
end
