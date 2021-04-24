{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Cloud Directory__
--
-- Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the development and management of cloud-scale web, mobile, and IoT applications. This guide describes the Cloud Directory operations that you can call programmatically and includes detailed information on data types and errors. For information about Cloud Directory features, see <https://aws.amazon.com/directoryservice/ AWS Directory Service> and the <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html Amazon Cloud Directory Developer Guide> .
module Network.AWS.CloudDirectory
  ( -- * Service Configuration
    cloudDirectory,

    -- * Errors
    -- $errors

    -- ** IncompatibleSchemaException
    _IncompatibleSchemaException,

    -- ** InvalidAttachmentException
    _InvalidAttachmentException,

    -- ** FacetValidationException
    _FacetValidationException,

    -- ** BatchWriteException
    _BatchWriteException,

    -- ** FacetInUseException
    _FacetInUseException,

    -- ** InvalidARNException
    _InvalidARNException,

    -- ** DirectoryDeletedException
    _DirectoryDeletedException,

    -- ** InvalidRuleException
    _InvalidRuleException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** NotPolicyException
    _NotPolicyException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** InvalidTaggingRequestException
    _InvalidTaggingRequestException,

    -- ** LinkNameAlreadyInUseException
    _LinkNameAlreadyInUseException,

    -- ** CannotListParentOfRootException
    _CannotListParentOfRootException,

    -- ** InvalidSchemaDocException
    _InvalidSchemaDocException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ValidationException
    _ValidationException,

    -- ** FacetAlreadyExistsException
    _FacetAlreadyExistsException,

    -- ** NotIndexException
    _NotIndexException,

    -- ** UnsupportedIndexTypeException
    _UnsupportedIndexTypeException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ObjectNotDetachedException
    _ObjectNotDetachedException,

    -- ** StillContainsLinksException
    _StillContainsLinksException,

    -- ** FacetNotFoundException
    _FacetNotFoundException,

    -- ** DirectoryNotEnabledException
    _DirectoryNotEnabledException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** DirectoryNotDisabledException
    _DirectoryNotDisabledException,

    -- ** RetryableConflictException
    _RetryableConflictException,

    -- ** DirectoryAlreadyExistsException
    _DirectoryAlreadyExistsException,

    -- ** IndexedAttributeMissingException
    _IndexedAttributeMissingException,

    -- ** SchemaAlreadyExistsException
    _SchemaAlreadyExistsException,

    -- ** SchemaAlreadyPublishedException
    _SchemaAlreadyPublishedException,

    -- ** NotNodeException
    _NotNodeException,

    -- ** ObjectAlreadyDetachedException
    _ObjectAlreadyDetachedException,

    -- ** InvalidFacetUpdateException
    _InvalidFacetUpdateException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetDirectory
    module Network.AWS.CloudDirectory.GetDirectory,

    -- ** ListTypedLinkFacetNames (Paginated)
    module Network.AWS.CloudDirectory.ListTypedLinkFacetNames,

    -- ** GetObjectInformation
    module Network.AWS.CloudDirectory.GetObjectInformation,

    -- ** AttachTypedLink
    module Network.AWS.CloudDirectory.AttachTypedLink,

    -- ** DeleteFacet
    module Network.AWS.CloudDirectory.DeleteFacet,

    -- ** UpdateFacet
    module Network.AWS.CloudDirectory.UpdateFacet,

    -- ** GetObjectAttributes
    module Network.AWS.CloudDirectory.GetObjectAttributes,

    -- ** UpgradeAppliedSchema
    module Network.AWS.CloudDirectory.UpgradeAppliedSchema,

    -- ** DeleteObject
    module Network.AWS.CloudDirectory.DeleteObject,

    -- ** ListTypedLinkFacetAttributes (Paginated)
    module Network.AWS.CloudDirectory.ListTypedLinkFacetAttributes,

    -- ** CreateObject
    module Network.AWS.CloudDirectory.CreateObject,

    -- ** BatchWrite
    module Network.AWS.CloudDirectory.BatchWrite,

    -- ** UpgradePublishedSchema
    module Network.AWS.CloudDirectory.UpgradePublishedSchema,

    -- ** ListDevelopmentSchemaARNs (Paginated)
    module Network.AWS.CloudDirectory.ListDevelopmentSchemaARNs,

    -- ** UpdateLinkAttributes
    module Network.AWS.CloudDirectory.UpdateLinkAttributes,

    -- ** DetachTypedLink
    module Network.AWS.CloudDirectory.DetachTypedLink,

    -- ** GetFacet
    module Network.AWS.CloudDirectory.GetFacet,

    -- ** GetTypedLinkFacetInformation
    module Network.AWS.CloudDirectory.GetTypedLinkFacetInformation,

    -- ** UntagResource
    module Network.AWS.CloudDirectory.UntagResource,

    -- ** ListIncomingTypedLinks (Paginated)
    module Network.AWS.CloudDirectory.ListIncomingTypedLinks,

    -- ** PublishSchema
    module Network.AWS.CloudDirectory.PublishSchema,

    -- ** UpdateTypedLinkFacet
    module Network.AWS.CloudDirectory.UpdateTypedLinkFacet,

    -- ** ListObjectParents
    module Network.AWS.CloudDirectory.ListObjectParents,

    -- ** ListPolicyAttachments (Paginated)
    module Network.AWS.CloudDirectory.ListPolicyAttachments,

    -- ** ListObjectAttributes (Paginated)
    module Network.AWS.CloudDirectory.ListObjectAttributes,

    -- ** DeleteTypedLinkFacet
    module Network.AWS.CloudDirectory.DeleteTypedLinkFacet,

    -- ** TagResource
    module Network.AWS.CloudDirectory.TagResource,

    -- ** DeleteDirectory
    module Network.AWS.CloudDirectory.DeleteDirectory,

    -- ** ListObjectParentPaths (Paginated)
    module Network.AWS.CloudDirectory.ListObjectParentPaths,

    -- ** CreateSchema
    module Network.AWS.CloudDirectory.CreateSchema,

    -- ** ListPublishedSchemaARNs (Paginated)
    module Network.AWS.CloudDirectory.ListPublishedSchemaARNs,

    -- ** ListDirectories (Paginated)
    module Network.AWS.CloudDirectory.ListDirectories,

    -- ** CreateDirectory
    module Network.AWS.CloudDirectory.CreateDirectory,

    -- ** LookupPolicy (Paginated)
    module Network.AWS.CloudDirectory.LookupPolicy,

    -- ** CreateIndex
    module Network.AWS.CloudDirectory.CreateIndex,

    -- ** ListAttachedIndices (Paginated)
    module Network.AWS.CloudDirectory.ListAttachedIndices,

    -- ** DetachPolicy
    module Network.AWS.CloudDirectory.DetachPolicy,

    -- ** DetachFromIndex
    module Network.AWS.CloudDirectory.DetachFromIndex,

    -- ** ListIndex (Paginated)
    module Network.AWS.CloudDirectory.ListIndex,

    -- ** ListObjectChildren
    module Network.AWS.CloudDirectory.ListObjectChildren,

    -- ** ListObjectPolicies (Paginated)
    module Network.AWS.CloudDirectory.ListObjectPolicies,

    -- ** GetLinkAttributes
    module Network.AWS.CloudDirectory.GetLinkAttributes,

    -- ** CreateFacet
    module Network.AWS.CloudDirectory.CreateFacet,

    -- ** BatchRead
    module Network.AWS.CloudDirectory.BatchRead,

    -- ** AttachObject
    module Network.AWS.CloudDirectory.AttachObject,

    -- ** AttachToIndex
    module Network.AWS.CloudDirectory.AttachToIndex,

    -- ** PutSchemaFromJSON
    module Network.AWS.CloudDirectory.PutSchemaFromJSON,

    -- ** UpdateObjectAttributes
    module Network.AWS.CloudDirectory.UpdateObjectAttributes,

    -- ** AttachPolicy
    module Network.AWS.CloudDirectory.AttachPolicy,

    -- ** ListFacetNames (Paginated)
    module Network.AWS.CloudDirectory.ListFacetNames,

    -- ** ListOutgoingTypedLinks (Paginated)
    module Network.AWS.CloudDirectory.ListOutgoingTypedLinks,

    -- ** EnableDirectory
    module Network.AWS.CloudDirectory.EnableDirectory,

    -- ** ListAppliedSchemaARNs (Paginated)
    module Network.AWS.CloudDirectory.ListAppliedSchemaARNs,

    -- ** ListManagedSchemaARNs (Paginated)
    module Network.AWS.CloudDirectory.ListManagedSchemaARNs,

    -- ** GetAppliedSchemaVersion
    module Network.AWS.CloudDirectory.GetAppliedSchemaVersion,

    -- ** RemoveFacetFromObject
    module Network.AWS.CloudDirectory.RemoveFacetFromObject,

    -- ** DeleteSchema
    module Network.AWS.CloudDirectory.DeleteSchema,

    -- ** ListFacetAttributes (Paginated)
    module Network.AWS.CloudDirectory.ListFacetAttributes,

    -- ** UpdateSchema
    module Network.AWS.CloudDirectory.UpdateSchema,

    -- ** GetSchemaAsJSON
    module Network.AWS.CloudDirectory.GetSchemaAsJSON,

    -- ** ApplySchema
    module Network.AWS.CloudDirectory.ApplySchema,

    -- ** DisableDirectory
    module Network.AWS.CloudDirectory.DisableDirectory,

    -- ** CreateTypedLinkFacet
    module Network.AWS.CloudDirectory.CreateTypedLinkFacet,

    -- ** ListTagsForResource (Paginated)
    module Network.AWS.CloudDirectory.ListTagsForResource,

    -- ** AddFacetToObject
    module Network.AWS.CloudDirectory.AddFacetToObject,

    -- ** DetachObject
    module Network.AWS.CloudDirectory.DetachObject,

    -- * Types

    -- ** BatchReadExceptionType
    BatchReadExceptionType (..),

    -- ** ConsistencyLevel
    ConsistencyLevel (..),

    -- ** DirectoryState
    DirectoryState (..),

    -- ** FacetAttributeType
    FacetAttributeType (..),

    -- ** FacetStyle
    FacetStyle (..),

    -- ** ObjectType
    ObjectType (..),

    -- ** RangeMode
    RangeMode (..),

    -- ** RequiredAttributeBehavior
    RequiredAttributeBehavior (..),

    -- ** RuleType
    RuleType (..),

    -- ** UpdateActionType
    UpdateActionType (..),

    -- ** AttributeKey
    AttributeKey,
    attributeKey,
    akSchemaARN,
    akFacetName,
    akName,

    -- ** AttributeKeyAndValue
    AttributeKeyAndValue,
    attributeKeyAndValue,
    akavKey,
    akavValue,

    -- ** AttributeNameAndValue
    AttributeNameAndValue,
    attributeNameAndValue,
    anavAttributeName,
    anavValue,

    -- ** BatchAddFacetToObject
    BatchAddFacetToObject,
    batchAddFacetToObject,
    baftoSchemaFacet,
    baftoObjectAttributeList,
    baftoObjectReference,

    -- ** BatchAddFacetToObjectResponse
    BatchAddFacetToObjectResponse,
    batchAddFacetToObjectResponse,

    -- ** BatchAttachObject
    BatchAttachObject,
    batchAttachObject,
    baoParentReference,
    baoChildReference,
    baoLinkName,

    -- ** BatchAttachObjectResponse
    BatchAttachObjectResponse,
    batchAttachObjectResponse,
    baorAttachedObjectIdentifier,

    -- ** BatchAttachPolicy
    BatchAttachPolicy,
    batchAttachPolicy,
    bapPolicyReference,
    bapObjectReference,

    -- ** BatchAttachPolicyResponse
    BatchAttachPolicyResponse,
    batchAttachPolicyResponse,

    -- ** BatchAttachToIndex
    BatchAttachToIndex,
    batchAttachToIndex,
    batiIndexReference,
    batiTargetReference,

    -- ** BatchAttachToIndexResponse
    BatchAttachToIndexResponse,
    batchAttachToIndexResponse,
    batirAttachedObjectIdentifier,

    -- ** BatchAttachTypedLink
    BatchAttachTypedLink,
    batchAttachTypedLink,
    batlSourceObjectReference,
    batlTargetObjectReference,
    batlTypedLinkFacet,
    batlAttributes,

    -- ** BatchAttachTypedLinkResponse
    BatchAttachTypedLinkResponse,
    batchAttachTypedLinkResponse,
    batlrTypedLinkSpecifier,

    -- ** BatchCreateIndex
    BatchCreateIndex,
    batchCreateIndex,
    bciParentReference,
    bciLinkName,
    bciBatchReferenceName,
    bciOrderedIndexedAttributeList,
    bciIsUnique,

    -- ** BatchCreateIndexResponse
    BatchCreateIndexResponse,
    batchCreateIndexResponse,
    bcirObjectIdentifier,

    -- ** BatchCreateObject
    BatchCreateObject,
    batchCreateObject,
    bcoParentReference,
    bcoLinkName,
    bcoBatchReferenceName,
    bcoSchemaFacet,
    bcoObjectAttributeList,

    -- ** BatchCreateObjectResponse
    BatchCreateObjectResponse,
    batchCreateObjectResponse,
    bcorObjectIdentifier,

    -- ** BatchDeleteObject
    BatchDeleteObject,
    batchDeleteObject,
    bdoObjectReference,

    -- ** BatchDeleteObjectResponse
    BatchDeleteObjectResponse,
    batchDeleteObjectResponse,

    -- ** BatchDetachFromIndex
    BatchDetachFromIndex,
    batchDetachFromIndex,
    bdfiIndexReference,
    bdfiTargetReference,

    -- ** BatchDetachFromIndexResponse
    BatchDetachFromIndexResponse,
    batchDetachFromIndexResponse,
    bdfirDetachedObjectIdentifier,

    -- ** BatchDetachObject
    BatchDetachObject,
    batchDetachObject,
    bdoBatchReferenceName,
    bdoParentReference,
    bdoLinkName,

    -- ** BatchDetachObjectResponse
    BatchDetachObjectResponse,
    batchDetachObjectResponse,
    bdorDetachedObjectIdentifier,

    -- ** BatchDetachPolicy
    BatchDetachPolicy,
    batchDetachPolicy,
    bdpPolicyReference,
    bdpObjectReference,

    -- ** BatchDetachPolicyResponse
    BatchDetachPolicyResponse,
    batchDetachPolicyResponse,

    -- ** BatchDetachTypedLink
    BatchDetachTypedLink,
    batchDetachTypedLink,
    bdtlTypedLinkSpecifier,

    -- ** BatchDetachTypedLinkResponse
    BatchDetachTypedLinkResponse,
    batchDetachTypedLinkResponse,

    -- ** BatchGetLinkAttributes
    BatchGetLinkAttributes,
    batchGetLinkAttributes,
    bglaTypedLinkSpecifier,
    bglaAttributeNames,

    -- ** BatchGetLinkAttributesResponse
    BatchGetLinkAttributesResponse,
    batchGetLinkAttributesResponse,
    bglarAttributes,

    -- ** BatchGetObjectAttributes
    BatchGetObjectAttributes,
    batchGetObjectAttributes,
    bgoaObjectReference,
    bgoaSchemaFacet,
    bgoaAttributeNames,

    -- ** BatchGetObjectAttributesResponse
    BatchGetObjectAttributesResponse,
    batchGetObjectAttributesResponse,
    bgoarAttributes,

    -- ** BatchGetObjectInformation
    BatchGetObjectInformation,
    batchGetObjectInformation,
    bgoiObjectReference,

    -- ** BatchGetObjectInformationResponse
    BatchGetObjectInformationResponse,
    batchGetObjectInformationResponse,
    bgoirSchemaFacets,
    bgoirObjectIdentifier,

    -- ** BatchListAttachedIndices
    BatchListAttachedIndices,
    batchListAttachedIndices,
    blaiNextToken,
    blaiMaxResults,
    blaiTargetReference,

    -- ** BatchListAttachedIndicesResponse
    BatchListAttachedIndicesResponse,
    batchListAttachedIndicesResponse,
    blairNextToken,
    blairIndexAttachments,

    -- ** BatchListIncomingTypedLinks
    BatchListIncomingTypedLinks,
    batchListIncomingTypedLinks,
    blitlNextToken,
    blitlFilterTypedLink,
    blitlMaxResults,
    blitlFilterAttributeRanges,
    blitlObjectReference,

    -- ** BatchListIncomingTypedLinksResponse
    BatchListIncomingTypedLinksResponse,
    batchListIncomingTypedLinksResponse,
    blitlrLinkSpecifiers,
    blitlrNextToken,

    -- ** BatchListIndex
    BatchListIndex,
    batchListIndex,
    bliNextToken,
    bliMaxResults,
    bliRangesOnIndexedValues,
    bliIndexReference,

    -- ** BatchListIndexResponse
    BatchListIndexResponse,
    batchListIndexResponse,
    blirNextToken,
    blirIndexAttachments,

    -- ** BatchListObjectAttributes
    BatchListObjectAttributes,
    batchListObjectAttributes,
    bloaNextToken,
    bloaMaxResults,
    bloaFacetFilter,
    bloaObjectReference,

    -- ** BatchListObjectAttributesResponse
    BatchListObjectAttributesResponse,
    batchListObjectAttributesResponse,
    bloarNextToken,
    bloarAttributes,

    -- ** BatchListObjectChildren
    BatchListObjectChildren,
    batchListObjectChildren,
    blocNextToken,
    blocMaxResults,
    blocObjectReference,

    -- ** BatchListObjectChildrenResponse
    BatchListObjectChildrenResponse,
    batchListObjectChildrenResponse,
    blocrNextToken,
    blocrChildren,

    -- ** BatchListObjectParentPaths
    BatchListObjectParentPaths,
    batchListObjectParentPaths,
    bloppNextToken,
    bloppMaxResults,
    bloppObjectReference,

    -- ** BatchListObjectParentPathsResponse
    BatchListObjectParentPathsResponse,
    batchListObjectParentPathsResponse,
    blopprNextToken,
    blopprPathToObjectIdentifiersList,

    -- ** BatchListObjectParents
    BatchListObjectParents,
    batchListObjectParents,
    blopNextToken,
    blopMaxResults,
    blopObjectReference,

    -- ** BatchListObjectParentsResponse
    BatchListObjectParentsResponse,
    batchListObjectParentsResponse,
    bloprParentLinks,
    bloprNextToken,

    -- ** BatchListObjectPolicies
    BatchListObjectPolicies,
    batchListObjectPolicies,
    bNextToken,
    bMaxResults,
    bObjectReference,

    -- ** BatchListObjectPoliciesResponse
    BatchListObjectPoliciesResponse,
    batchListObjectPoliciesResponse,
    batNextToken,
    batAttachedPolicyIds,

    -- ** BatchListOutgoingTypedLinks
    BatchListOutgoingTypedLinks,
    batchListOutgoingTypedLinks,
    blotlNextToken,
    blotlFilterTypedLink,
    blotlMaxResults,
    blotlFilterAttributeRanges,
    blotlObjectReference,

    -- ** BatchListOutgoingTypedLinksResponse
    BatchListOutgoingTypedLinksResponse,
    batchListOutgoingTypedLinksResponse,
    blotlrNextToken,
    blotlrTypedLinkSpecifiers,

    -- ** BatchListPolicyAttachments
    BatchListPolicyAttachments,
    batchListPolicyAttachments,
    blpaNextToken,
    blpaMaxResults,
    blpaPolicyReference,

    -- ** BatchListPolicyAttachmentsResponse
    BatchListPolicyAttachmentsResponse,
    batchListPolicyAttachmentsResponse,
    blparNextToken,
    blparObjectIdentifiers,

    -- ** BatchLookupPolicy
    BatchLookupPolicy,
    batchLookupPolicy,
    blpNextToken,
    blpMaxResults,
    blpObjectReference,

    -- ** BatchLookupPolicyResponse
    BatchLookupPolicyResponse,
    batchLookupPolicyResponse,
    blprNextToken,
    blprPolicyToPathList,

    -- ** BatchReadException
    BatchReadException,
    batchReadException,
    breMessage,
    breType,

    -- ** BatchReadOperation
    BatchReadOperation,
    batchReadOperation,
    broGetObjectInformation,
    broGetObjectAttributes,
    broListIncomingTypedLinks,
    broListObjectParents,
    broListPolicyAttachments,
    broListObjectAttributes,
    broListObjectParentPaths,
    broLookupPolicy,
    broListAttachedIndices,
    broListIndex,
    broListObjectChildren,
    broListObjectPolicies,
    broGetLinkAttributes,
    broListOutgoingTypedLinks,

    -- ** BatchReadOperationResponse
    BatchReadOperationResponse,
    batchReadOperationResponse,
    brorSuccessfulResponse,
    brorExceptionResponse,

    -- ** BatchReadSuccessfulResponse
    BatchReadSuccessfulResponse,
    batchReadSuccessfulResponse,
    brsrGetObjectInformation,
    brsrGetObjectAttributes,
    brsrListIncomingTypedLinks,
    brsrListObjectParents,
    brsrListPolicyAttachments,
    brsrListObjectAttributes,
    brsrListObjectParentPaths,
    brsrLookupPolicy,
    brsrListAttachedIndices,
    brsrListIndex,
    brsrListObjectChildren,
    brsrListObjectPolicies,
    brsrGetLinkAttributes,
    brsrListOutgoingTypedLinks,

    -- ** BatchRemoveFacetFromObject
    BatchRemoveFacetFromObject,
    batchRemoveFacetFromObject,
    brffoSchemaFacet,
    brffoObjectReference,

    -- ** BatchRemoveFacetFromObjectResponse
    BatchRemoveFacetFromObjectResponse,
    batchRemoveFacetFromObjectResponse,

    -- ** BatchUpdateLinkAttributes
    BatchUpdateLinkAttributes,
    batchUpdateLinkAttributes,
    bulaTypedLinkSpecifier,
    bulaAttributeUpdates,

    -- ** BatchUpdateLinkAttributesResponse
    BatchUpdateLinkAttributesResponse,
    batchUpdateLinkAttributesResponse,

    -- ** BatchUpdateObjectAttributes
    BatchUpdateObjectAttributes,
    batchUpdateObjectAttributes,
    buoaObjectReference,
    buoaAttributeUpdates,

    -- ** BatchUpdateObjectAttributesResponse
    BatchUpdateObjectAttributesResponse,
    batchUpdateObjectAttributesResponse,
    buoarObjectIdentifier,

    -- ** BatchWriteOperation
    BatchWriteOperation,
    batchWriteOperation,
    bwoAttachTypedLink,
    bwoDeleteObject,
    bwoCreateObject,
    bwoUpdateLinkAttributes,
    bwoDetachTypedLink,
    bwoCreateIndex,
    bwoDetachPolicy,
    bwoDetachFromIndex,
    bwoAttachObject,
    bwoAttachToIndex,
    bwoUpdateObjectAttributes,
    bwoAttachPolicy,
    bwoRemoveFacetFromObject,
    bwoAddFacetToObject,
    bwoDetachObject,

    -- ** BatchWriteOperationResponse
    BatchWriteOperationResponse,
    batchWriteOperationResponse,
    bworAttachTypedLink,
    bworDeleteObject,
    bworCreateObject,
    bworUpdateLinkAttributes,
    bworDetachTypedLink,
    bworCreateIndex,
    bworDetachPolicy,
    bworDetachFromIndex,
    bworAttachObject,
    bworAttachToIndex,
    bworUpdateObjectAttributes,
    bworAttachPolicy,
    bworRemoveFacetFromObject,
    bworAddFacetToObject,
    bworDetachObject,

    -- ** Directory
    Directory,
    directory,
    dDirectoryARN,
    dState,
    dName,
    dCreationDateTime,

    -- ** Facet
    Facet,
    facet,
    fFacetStyle,
    fName,
    fObjectType,

    -- ** FacetAttribute
    FacetAttribute,
    facetAttribute,
    faAttributeReference,
    faRequiredBehavior,
    faAttributeDefinition,
    faName,

    -- ** FacetAttributeDefinition
    FacetAttributeDefinition,
    facetAttributeDefinition,
    fadIsImmutable,
    fadRules,
    fadDefaultValue,
    fadType,

    -- ** FacetAttributeReference
    FacetAttributeReference,
    facetAttributeReference,
    farTargetFacetName,
    farTargetAttributeName,

    -- ** FacetAttributeUpdate
    FacetAttributeUpdate,
    facetAttributeUpdate,
    fauAttribute,
    fauAction,

    -- ** IndexAttachment
    IndexAttachment,
    indexAttachment,
    iaObjectIdentifier,
    iaIndexedAttributes,

    -- ** LinkAttributeAction
    LinkAttributeAction,
    linkAttributeAction,
    laaAttributeUpdateValue,
    laaAttributeActionType,

    -- ** LinkAttributeUpdate
    LinkAttributeUpdate,
    linkAttributeUpdate,
    lauAttributeAction,
    lauAttributeKey,

    -- ** ObjectAttributeAction
    ObjectAttributeAction,
    objectAttributeAction,
    oaaObjectAttributeActionType,
    oaaObjectAttributeUpdateValue,

    -- ** ObjectAttributeRange
    ObjectAttributeRange,
    objectAttributeRange,
    oarRange,
    oarAttributeKey,

    -- ** ObjectAttributeUpdate
    ObjectAttributeUpdate,
    objectAttributeUpdate,
    oauObjectAttributeAction,
    oauObjectAttributeKey,

    -- ** ObjectIdentifierAndLinkNameTuple
    ObjectIdentifierAndLinkNameTuple,
    objectIdentifierAndLinkNameTuple,
    oialntLinkName,
    oialntObjectIdentifier,

    -- ** ObjectReference
    ObjectReference,
    objectReference,
    orSelector,

    -- ** PathToObjectIdentifiers
    PathToObjectIdentifiers,
    pathToObjectIdentifiers,
    ptoiObjectIdentifiers,
    ptoiPath,

    -- ** PolicyAttachment
    PolicyAttachment,
    policyAttachment,
    paPolicyType,
    paObjectIdentifier,
    paPolicyId,

    -- ** PolicyToPath
    PolicyToPath,
    policyToPath,
    ptpPolicies,
    ptpPath,

    -- ** Rule
    Rule,
    rule,
    rType,
    rParameters,

    -- ** SchemaFacet
    SchemaFacet,
    schemaFacet,
    sfSchemaARN,
    sfFacetName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TypedAttributeValue
    TypedAttributeValue,
    typedAttributeValue,
    tavStringValue,
    tavBooleanValue,
    tavBinaryValue,
    tavNumberValue,
    tavDatetimeValue,

    -- ** TypedAttributeValueRange
    TypedAttributeValueRange,
    typedAttributeValueRange,
    tavrEndValue,
    tavrStartValue,
    tavrStartMode,
    tavrEndMode,

    -- ** TypedLinkAttributeDefinition
    TypedLinkAttributeDefinition,
    typedLinkAttributeDefinition,
    tladIsImmutable,
    tladRules,
    tladDefaultValue,
    tladName,
    tladType,
    tladRequiredBehavior,

    -- ** TypedLinkAttributeRange
    TypedLinkAttributeRange,
    typedLinkAttributeRange,
    tlarAttributeName,
    tlarRange,

    -- ** TypedLinkFacet
    TypedLinkFacet,
    typedLinkFacet,
    tlfName,
    tlfAttributes,
    tlfIdentityAttributeOrder,

    -- ** TypedLinkFacetAttributeUpdate
    TypedLinkFacetAttributeUpdate,
    typedLinkFacetAttributeUpdate,
    tlfauAttribute,
    tlfauAction,

    -- ** TypedLinkSchemaAndFacetName
    TypedLinkSchemaAndFacetName,
    typedLinkSchemaAndFacetName,
    tlsafnSchemaARN,
    tlsafnTypedLinkName,

    -- ** TypedLinkSpecifier
    TypedLinkSpecifier,
    typedLinkSpecifier,
    tlsTypedLinkFacet,
    tlsSourceObjectReference,
    tlsTargetObjectReference,
    tlsIdentityAttributeValues,
  )
where

import Network.AWS.CloudDirectory.AddFacetToObject
import Network.AWS.CloudDirectory.ApplySchema
import Network.AWS.CloudDirectory.AttachObject
import Network.AWS.CloudDirectory.AttachPolicy
import Network.AWS.CloudDirectory.AttachToIndex
import Network.AWS.CloudDirectory.AttachTypedLink
import Network.AWS.CloudDirectory.BatchRead
import Network.AWS.CloudDirectory.BatchWrite
import Network.AWS.CloudDirectory.CreateDirectory
import Network.AWS.CloudDirectory.CreateFacet
import Network.AWS.CloudDirectory.CreateIndex
import Network.AWS.CloudDirectory.CreateObject
import Network.AWS.CloudDirectory.CreateSchema
import Network.AWS.CloudDirectory.CreateTypedLinkFacet
import Network.AWS.CloudDirectory.DeleteDirectory
import Network.AWS.CloudDirectory.DeleteFacet
import Network.AWS.CloudDirectory.DeleteObject
import Network.AWS.CloudDirectory.DeleteSchema
import Network.AWS.CloudDirectory.DeleteTypedLinkFacet
import Network.AWS.CloudDirectory.DetachFromIndex
import Network.AWS.CloudDirectory.DetachObject
import Network.AWS.CloudDirectory.DetachPolicy
import Network.AWS.CloudDirectory.DetachTypedLink
import Network.AWS.CloudDirectory.DisableDirectory
import Network.AWS.CloudDirectory.EnableDirectory
import Network.AWS.CloudDirectory.GetAppliedSchemaVersion
import Network.AWS.CloudDirectory.GetDirectory
import Network.AWS.CloudDirectory.GetFacet
import Network.AWS.CloudDirectory.GetLinkAttributes
import Network.AWS.CloudDirectory.GetObjectAttributes
import Network.AWS.CloudDirectory.GetObjectInformation
import Network.AWS.CloudDirectory.GetSchemaAsJSON
import Network.AWS.CloudDirectory.GetTypedLinkFacetInformation
import Network.AWS.CloudDirectory.ListAppliedSchemaARNs
import Network.AWS.CloudDirectory.ListAttachedIndices
import Network.AWS.CloudDirectory.ListDevelopmentSchemaARNs
import Network.AWS.CloudDirectory.ListDirectories
import Network.AWS.CloudDirectory.ListFacetAttributes
import Network.AWS.CloudDirectory.ListFacetNames
import Network.AWS.CloudDirectory.ListIncomingTypedLinks
import Network.AWS.CloudDirectory.ListIndex
import Network.AWS.CloudDirectory.ListManagedSchemaARNs
import Network.AWS.CloudDirectory.ListObjectAttributes
import Network.AWS.CloudDirectory.ListObjectChildren
import Network.AWS.CloudDirectory.ListObjectParentPaths
import Network.AWS.CloudDirectory.ListObjectParents
import Network.AWS.CloudDirectory.ListObjectPolicies
import Network.AWS.CloudDirectory.ListOutgoingTypedLinks
import Network.AWS.CloudDirectory.ListPolicyAttachments
import Network.AWS.CloudDirectory.ListPublishedSchemaARNs
import Network.AWS.CloudDirectory.ListTagsForResource
import Network.AWS.CloudDirectory.ListTypedLinkFacetAttributes
import Network.AWS.CloudDirectory.ListTypedLinkFacetNames
import Network.AWS.CloudDirectory.LookupPolicy
import Network.AWS.CloudDirectory.PublishSchema
import Network.AWS.CloudDirectory.PutSchemaFromJSON
import Network.AWS.CloudDirectory.RemoveFacetFromObject
import Network.AWS.CloudDirectory.TagResource
import Network.AWS.CloudDirectory.Types
import Network.AWS.CloudDirectory.UntagResource
import Network.AWS.CloudDirectory.UpdateFacet
import Network.AWS.CloudDirectory.UpdateLinkAttributes
import Network.AWS.CloudDirectory.UpdateObjectAttributes
import Network.AWS.CloudDirectory.UpdateSchema
import Network.AWS.CloudDirectory.UpdateTypedLinkFacet
import Network.AWS.CloudDirectory.UpgradeAppliedSchema
import Network.AWS.CloudDirectory.UpgradePublishedSchema
import Network.AWS.CloudDirectory.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudDirectory'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
