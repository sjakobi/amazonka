{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types
  ( -- * Service Configuration
    cloudDirectory,

    -- * Errors
    _IncompatibleSchemaException,
    _InvalidAttachmentException,
    _FacetValidationException,
    _BatchWriteException,
    _FacetInUseException,
    _InvalidARNException,
    _DirectoryDeletedException,
    _InvalidRuleException,
    _InternalServiceException,
    _NotPolicyException,
    _InvalidNextTokenException,
    _InvalidTaggingRequestException,
    _LinkNameAlreadyInUseException,
    _CannotListParentOfRootException,
    _InvalidSchemaDocException,
    _AccessDeniedException,
    _ValidationException,
    _FacetAlreadyExistsException,
    _NotIndexException,
    _UnsupportedIndexTypeException,
    _LimitExceededException,
    _ObjectNotDetachedException,
    _StillContainsLinksException,
    _FacetNotFoundException,
    _DirectoryNotEnabledException,
    _ResourceNotFoundException,
    _DirectoryNotDisabledException,
    _RetryableConflictException,
    _DirectoryAlreadyExistsException,
    _IndexedAttributeMissingException,
    _SchemaAlreadyExistsException,
    _SchemaAlreadyPublishedException,
    _NotNodeException,
    _ObjectAlreadyDetachedException,
    _InvalidFacetUpdateException,

    -- * BatchReadExceptionType
    BatchReadExceptionType (..),

    -- * ConsistencyLevel
    ConsistencyLevel (..),

    -- * DirectoryState
    DirectoryState (..),

    -- * FacetAttributeType
    FacetAttributeType (..),

    -- * FacetStyle
    FacetStyle (..),

    -- * ObjectType
    ObjectType (..),

    -- * RangeMode
    RangeMode (..),

    -- * RequiredAttributeBehavior
    RequiredAttributeBehavior (..),

    -- * RuleType
    RuleType (..),

    -- * UpdateActionType
    UpdateActionType (..),

    -- * AttributeKey
    AttributeKey (..),
    attributeKey,
    akSchemaARN,
    akFacetName,
    akName,

    -- * AttributeKeyAndValue
    AttributeKeyAndValue (..),
    attributeKeyAndValue,
    akavKey,
    akavValue,

    -- * AttributeNameAndValue
    AttributeNameAndValue (..),
    attributeNameAndValue,
    anavAttributeName,
    anavValue,

    -- * BatchAddFacetToObject
    BatchAddFacetToObject (..),
    batchAddFacetToObject,
    baftoSchemaFacet,
    baftoObjectAttributeList,
    baftoObjectReference,

    -- * BatchAddFacetToObjectResponse
    BatchAddFacetToObjectResponse (..),
    batchAddFacetToObjectResponse,

    -- * BatchAttachObject
    BatchAttachObject (..),
    batchAttachObject,
    baoParentReference,
    baoChildReference,
    baoLinkName,

    -- * BatchAttachObjectResponse
    BatchAttachObjectResponse (..),
    batchAttachObjectResponse,
    baorAttachedObjectIdentifier,

    -- * BatchAttachPolicy
    BatchAttachPolicy (..),
    batchAttachPolicy,
    bapPolicyReference,
    bapObjectReference,

    -- * BatchAttachPolicyResponse
    BatchAttachPolicyResponse (..),
    batchAttachPolicyResponse,

    -- * BatchAttachToIndex
    BatchAttachToIndex (..),
    batchAttachToIndex,
    batiIndexReference,
    batiTargetReference,

    -- * BatchAttachToIndexResponse
    BatchAttachToIndexResponse (..),
    batchAttachToIndexResponse,
    batirAttachedObjectIdentifier,

    -- * BatchAttachTypedLink
    BatchAttachTypedLink (..),
    batchAttachTypedLink,
    batlSourceObjectReference,
    batlTargetObjectReference,
    batlTypedLinkFacet,
    batlAttributes,

    -- * BatchAttachTypedLinkResponse
    BatchAttachTypedLinkResponse (..),
    batchAttachTypedLinkResponse,
    batlrTypedLinkSpecifier,

    -- * BatchCreateIndex
    BatchCreateIndex (..),
    batchCreateIndex,
    bciParentReference,
    bciLinkName,
    bciBatchReferenceName,
    bciOrderedIndexedAttributeList,
    bciIsUnique,

    -- * BatchCreateIndexResponse
    BatchCreateIndexResponse (..),
    batchCreateIndexResponse,
    bcirObjectIdentifier,

    -- * BatchCreateObject
    BatchCreateObject (..),
    batchCreateObject,
    bcoParentReference,
    bcoLinkName,
    bcoBatchReferenceName,
    bcoSchemaFacet,
    bcoObjectAttributeList,

    -- * BatchCreateObjectResponse
    BatchCreateObjectResponse (..),
    batchCreateObjectResponse,
    bcorObjectIdentifier,

    -- * BatchDeleteObject
    BatchDeleteObject (..),
    batchDeleteObject,
    bdoObjectReference,

    -- * BatchDeleteObjectResponse
    BatchDeleteObjectResponse (..),
    batchDeleteObjectResponse,

    -- * BatchDetachFromIndex
    BatchDetachFromIndex (..),
    batchDetachFromIndex,
    bdfiIndexReference,
    bdfiTargetReference,

    -- * BatchDetachFromIndexResponse
    BatchDetachFromIndexResponse (..),
    batchDetachFromIndexResponse,
    bdfirDetachedObjectIdentifier,

    -- * BatchDetachObject
    BatchDetachObject (..),
    batchDetachObject,
    bdoBatchReferenceName,
    bdoParentReference,
    bdoLinkName,

    -- * BatchDetachObjectResponse
    BatchDetachObjectResponse (..),
    batchDetachObjectResponse,
    bdorDetachedObjectIdentifier,

    -- * BatchDetachPolicy
    BatchDetachPolicy (..),
    batchDetachPolicy,
    bdpPolicyReference,
    bdpObjectReference,

    -- * BatchDetachPolicyResponse
    BatchDetachPolicyResponse (..),
    batchDetachPolicyResponse,

    -- * BatchDetachTypedLink
    BatchDetachTypedLink (..),
    batchDetachTypedLink,
    bdtlTypedLinkSpecifier,

    -- * BatchDetachTypedLinkResponse
    BatchDetachTypedLinkResponse (..),
    batchDetachTypedLinkResponse,

    -- * BatchGetLinkAttributes
    BatchGetLinkAttributes (..),
    batchGetLinkAttributes,
    bglaTypedLinkSpecifier,
    bglaAttributeNames,

    -- * BatchGetLinkAttributesResponse
    BatchGetLinkAttributesResponse (..),
    batchGetLinkAttributesResponse,
    bglarAttributes,

    -- * BatchGetObjectAttributes
    BatchGetObjectAttributes (..),
    batchGetObjectAttributes,
    bgoaObjectReference,
    bgoaSchemaFacet,
    bgoaAttributeNames,

    -- * BatchGetObjectAttributesResponse
    BatchGetObjectAttributesResponse (..),
    batchGetObjectAttributesResponse,
    bgoarAttributes,

    -- * BatchGetObjectInformation
    BatchGetObjectInformation (..),
    batchGetObjectInformation,
    bgoiObjectReference,

    -- * BatchGetObjectInformationResponse
    BatchGetObjectInformationResponse (..),
    batchGetObjectInformationResponse,
    bgoirSchemaFacets,
    bgoirObjectIdentifier,

    -- * BatchListAttachedIndices
    BatchListAttachedIndices (..),
    batchListAttachedIndices,
    blaiNextToken,
    blaiMaxResults,
    blaiTargetReference,

    -- * BatchListAttachedIndicesResponse
    BatchListAttachedIndicesResponse (..),
    batchListAttachedIndicesResponse,
    blairNextToken,
    blairIndexAttachments,

    -- * BatchListIncomingTypedLinks
    BatchListIncomingTypedLinks (..),
    batchListIncomingTypedLinks,
    blitlNextToken,
    blitlFilterTypedLink,
    blitlMaxResults,
    blitlFilterAttributeRanges,
    blitlObjectReference,

    -- * BatchListIncomingTypedLinksResponse
    BatchListIncomingTypedLinksResponse (..),
    batchListIncomingTypedLinksResponse,
    blitlrLinkSpecifiers,
    blitlrNextToken,

    -- * BatchListIndex
    BatchListIndex (..),
    batchListIndex,
    bliNextToken,
    bliMaxResults,
    bliRangesOnIndexedValues,
    bliIndexReference,

    -- * BatchListIndexResponse
    BatchListIndexResponse (..),
    batchListIndexResponse,
    blirNextToken,
    blirIndexAttachments,

    -- * BatchListObjectAttributes
    BatchListObjectAttributes (..),
    batchListObjectAttributes,
    bloaNextToken,
    bloaMaxResults,
    bloaFacetFilter,
    bloaObjectReference,

    -- * BatchListObjectAttributesResponse
    BatchListObjectAttributesResponse (..),
    batchListObjectAttributesResponse,
    bloarNextToken,
    bloarAttributes,

    -- * BatchListObjectChildren
    BatchListObjectChildren (..),
    batchListObjectChildren,
    blocNextToken,
    blocMaxResults,
    blocObjectReference,

    -- * BatchListObjectChildrenResponse
    BatchListObjectChildrenResponse (..),
    batchListObjectChildrenResponse,
    blocrNextToken,
    blocrChildren,

    -- * BatchListObjectParentPaths
    BatchListObjectParentPaths (..),
    batchListObjectParentPaths,
    bloppNextToken,
    bloppMaxResults,
    bloppObjectReference,

    -- * BatchListObjectParentPathsResponse
    BatchListObjectParentPathsResponse (..),
    batchListObjectParentPathsResponse,
    blopprNextToken,
    blopprPathToObjectIdentifiersList,

    -- * BatchListObjectParents
    BatchListObjectParents (..),
    batchListObjectParents,
    blopNextToken,
    blopMaxResults,
    blopObjectReference,

    -- * BatchListObjectParentsResponse
    BatchListObjectParentsResponse (..),
    batchListObjectParentsResponse,
    bloprParentLinks,
    bloprNextToken,

    -- * BatchListObjectPolicies
    BatchListObjectPolicies (..),
    batchListObjectPolicies,
    bNextToken,
    bMaxResults,
    bObjectReference,

    -- * BatchListObjectPoliciesResponse
    BatchListObjectPoliciesResponse (..),
    batchListObjectPoliciesResponse,
    batNextToken,
    batAttachedPolicyIds,

    -- * BatchListOutgoingTypedLinks
    BatchListOutgoingTypedLinks (..),
    batchListOutgoingTypedLinks,
    blotlNextToken,
    blotlFilterTypedLink,
    blotlMaxResults,
    blotlFilterAttributeRanges,
    blotlObjectReference,

    -- * BatchListOutgoingTypedLinksResponse
    BatchListOutgoingTypedLinksResponse (..),
    batchListOutgoingTypedLinksResponse,
    blotlrNextToken,
    blotlrTypedLinkSpecifiers,

    -- * BatchListPolicyAttachments
    BatchListPolicyAttachments (..),
    batchListPolicyAttachments,
    blpaNextToken,
    blpaMaxResults,
    blpaPolicyReference,

    -- * BatchListPolicyAttachmentsResponse
    BatchListPolicyAttachmentsResponse (..),
    batchListPolicyAttachmentsResponse,
    blparNextToken,
    blparObjectIdentifiers,

    -- * BatchLookupPolicy
    BatchLookupPolicy (..),
    batchLookupPolicy,
    blpNextToken,
    blpMaxResults,
    blpObjectReference,

    -- * BatchLookupPolicyResponse
    BatchLookupPolicyResponse (..),
    batchLookupPolicyResponse,
    blprNextToken,
    blprPolicyToPathList,

    -- * BatchReadException
    BatchReadException (..),
    batchReadException,
    breMessage,
    breType,

    -- * BatchReadOperation
    BatchReadOperation (..),
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

    -- * BatchReadOperationResponse
    BatchReadOperationResponse (..),
    batchReadOperationResponse,
    brorSuccessfulResponse,
    brorExceptionResponse,

    -- * BatchReadSuccessfulResponse
    BatchReadSuccessfulResponse (..),
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

    -- * BatchRemoveFacetFromObject
    BatchRemoveFacetFromObject (..),
    batchRemoveFacetFromObject,
    brffoSchemaFacet,
    brffoObjectReference,

    -- * BatchRemoveFacetFromObjectResponse
    BatchRemoveFacetFromObjectResponse (..),
    batchRemoveFacetFromObjectResponse,

    -- * BatchUpdateLinkAttributes
    BatchUpdateLinkAttributes (..),
    batchUpdateLinkAttributes,
    bulaTypedLinkSpecifier,
    bulaAttributeUpdates,

    -- * BatchUpdateLinkAttributesResponse
    BatchUpdateLinkAttributesResponse (..),
    batchUpdateLinkAttributesResponse,

    -- * BatchUpdateObjectAttributes
    BatchUpdateObjectAttributes (..),
    batchUpdateObjectAttributes,
    buoaObjectReference,
    buoaAttributeUpdates,

    -- * BatchUpdateObjectAttributesResponse
    BatchUpdateObjectAttributesResponse (..),
    batchUpdateObjectAttributesResponse,
    buoarObjectIdentifier,

    -- * BatchWriteOperation
    BatchWriteOperation (..),
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

    -- * BatchWriteOperationResponse
    BatchWriteOperationResponse (..),
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

    -- * Directory
    Directory (..),
    directory,
    dDirectoryARN,
    dState,
    dName,
    dCreationDateTime,

    -- * Facet
    Facet (..),
    facet,
    fFacetStyle,
    fName,
    fObjectType,

    -- * FacetAttribute
    FacetAttribute (..),
    facetAttribute,
    faAttributeReference,
    faRequiredBehavior,
    faAttributeDefinition,
    faName,

    -- * FacetAttributeDefinition
    FacetAttributeDefinition (..),
    facetAttributeDefinition,
    fadIsImmutable,
    fadRules,
    fadDefaultValue,
    fadType,

    -- * FacetAttributeReference
    FacetAttributeReference (..),
    facetAttributeReference,
    farTargetFacetName,
    farTargetAttributeName,

    -- * FacetAttributeUpdate
    FacetAttributeUpdate (..),
    facetAttributeUpdate,
    fauAttribute,
    fauAction,

    -- * IndexAttachment
    IndexAttachment (..),
    indexAttachment,
    iaObjectIdentifier,
    iaIndexedAttributes,

    -- * LinkAttributeAction
    LinkAttributeAction (..),
    linkAttributeAction,
    laaAttributeUpdateValue,
    laaAttributeActionType,

    -- * LinkAttributeUpdate
    LinkAttributeUpdate (..),
    linkAttributeUpdate,
    lauAttributeAction,
    lauAttributeKey,

    -- * ObjectAttributeAction
    ObjectAttributeAction (..),
    objectAttributeAction,
    oaaObjectAttributeActionType,
    oaaObjectAttributeUpdateValue,

    -- * ObjectAttributeRange
    ObjectAttributeRange (..),
    objectAttributeRange,
    oarRange,
    oarAttributeKey,

    -- * ObjectAttributeUpdate
    ObjectAttributeUpdate (..),
    objectAttributeUpdate,
    oauObjectAttributeAction,
    oauObjectAttributeKey,

    -- * ObjectIdentifierAndLinkNameTuple
    ObjectIdentifierAndLinkNameTuple (..),
    objectIdentifierAndLinkNameTuple,
    oialntLinkName,
    oialntObjectIdentifier,

    -- * ObjectReference
    ObjectReference (..),
    objectReference,
    orSelector,

    -- * PathToObjectIdentifiers
    PathToObjectIdentifiers (..),
    pathToObjectIdentifiers,
    ptoiObjectIdentifiers,
    ptoiPath,

    -- * PolicyAttachment
    PolicyAttachment (..),
    policyAttachment,
    paPolicyType,
    paObjectIdentifier,
    paPolicyId,

    -- * PolicyToPath
    PolicyToPath (..),
    policyToPath,
    ptpPolicies,
    ptpPath,

    -- * Rule
    Rule (..),
    rule,
    rType,
    rParameters,

    -- * SchemaFacet
    SchemaFacet (..),
    schemaFacet,
    sfSchemaARN,
    sfFacetName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TypedAttributeValue
    TypedAttributeValue (..),
    typedAttributeValue,
    tavStringValue,
    tavBooleanValue,
    tavBinaryValue,
    tavNumberValue,
    tavDatetimeValue,

    -- * TypedAttributeValueRange
    TypedAttributeValueRange (..),
    typedAttributeValueRange,
    tavrEndValue,
    tavrStartValue,
    tavrStartMode,
    tavrEndMode,

    -- * TypedLinkAttributeDefinition
    TypedLinkAttributeDefinition (..),
    typedLinkAttributeDefinition,
    tladIsImmutable,
    tladRules,
    tladDefaultValue,
    tladName,
    tladType,
    tladRequiredBehavior,

    -- * TypedLinkAttributeRange
    TypedLinkAttributeRange (..),
    typedLinkAttributeRange,
    tlarAttributeName,
    tlarRange,

    -- * TypedLinkFacet
    TypedLinkFacet (..),
    typedLinkFacet,
    tlfName,
    tlfAttributes,
    tlfIdentityAttributeOrder,

    -- * TypedLinkFacetAttributeUpdate
    TypedLinkFacetAttributeUpdate (..),
    typedLinkFacetAttributeUpdate,
    tlfauAttribute,
    tlfauAction,

    -- * TypedLinkSchemaAndFacetName
    TypedLinkSchemaAndFacetName (..),
    typedLinkSchemaAndFacetName,
    tlsafnSchemaARN,
    tlsafnTypedLinkName,

    -- * TypedLinkSpecifier
    TypedLinkSpecifier (..),
    typedLinkSpecifier,
    tlsTypedLinkFacet,
    tlsSourceObjectReference,
    tlsTargetObjectReference,
    tlsIdentityAttributeValues,
  )
where

import Network.AWS.CloudDirectory.Types.AttributeKey
import Network.AWS.CloudDirectory.Types.AttributeKeyAndValue
import Network.AWS.CloudDirectory.Types.AttributeNameAndValue
import Network.AWS.CloudDirectory.Types.BatchAddFacetToObject
import Network.AWS.CloudDirectory.Types.BatchAddFacetToObjectResponse
import Network.AWS.CloudDirectory.Types.BatchAttachObject
import Network.AWS.CloudDirectory.Types.BatchAttachObjectResponse
import Network.AWS.CloudDirectory.Types.BatchAttachPolicy
import Network.AWS.CloudDirectory.Types.BatchAttachPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchAttachToIndex
import Network.AWS.CloudDirectory.Types.BatchAttachToIndexResponse
import Network.AWS.CloudDirectory.Types.BatchAttachTypedLink
import Network.AWS.CloudDirectory.Types.BatchAttachTypedLinkResponse
import Network.AWS.CloudDirectory.Types.BatchCreateIndex
import Network.AWS.CloudDirectory.Types.BatchCreateIndexResponse
import Network.AWS.CloudDirectory.Types.BatchCreateObject
import Network.AWS.CloudDirectory.Types.BatchCreateObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDeleteObject
import Network.AWS.CloudDirectory.Types.BatchDeleteObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDetachFromIndex
import Network.AWS.CloudDirectory.Types.BatchDetachFromIndexResponse
import Network.AWS.CloudDirectory.Types.BatchDetachObject
import Network.AWS.CloudDirectory.Types.BatchDetachObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDetachPolicy
import Network.AWS.CloudDirectory.Types.BatchDetachPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchDetachTypedLink
import Network.AWS.CloudDirectory.Types.BatchDetachTypedLinkResponse
import Network.AWS.CloudDirectory.Types.BatchGetLinkAttributes
import Network.AWS.CloudDirectory.Types.BatchGetLinkAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchGetObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchGetObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchGetObjectInformation
import Network.AWS.CloudDirectory.Types.BatchGetObjectInformationResponse
import Network.AWS.CloudDirectory.Types.BatchListAttachedIndices
import Network.AWS.CloudDirectory.Types.BatchListAttachedIndicesResponse
import Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinks
import Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinksResponse
import Network.AWS.CloudDirectory.Types.BatchListIndex
import Network.AWS.CloudDirectory.Types.BatchListIndexResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchListObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectChildren
import Network.AWS.CloudDirectory.Types.BatchListObjectChildrenResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths
import Network.AWS.CloudDirectory.Types.BatchListObjectParentPathsResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectParents
import Network.AWS.CloudDirectory.Types.BatchListObjectParentsResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectPolicies
import Network.AWS.CloudDirectory.Types.BatchListObjectPoliciesResponse
import Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinks
import Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse
import Network.AWS.CloudDirectory.Types.BatchListPolicyAttachments
import Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse
import Network.AWS.CloudDirectory.Types.BatchLookupPolicy
import Network.AWS.CloudDirectory.Types.BatchLookupPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchReadException
import Network.AWS.CloudDirectory.Types.BatchReadExceptionType
import Network.AWS.CloudDirectory.Types.BatchReadOperation
import Network.AWS.CloudDirectory.Types.BatchReadOperationResponse
import Network.AWS.CloudDirectory.Types.BatchReadSuccessfulResponse
import Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObject
import Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObjectResponse
import Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributes
import Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchWriteOperation
import Network.AWS.CloudDirectory.Types.BatchWriteOperationResponse
import Network.AWS.CloudDirectory.Types.ConsistencyLevel
import Network.AWS.CloudDirectory.Types.Directory
import Network.AWS.CloudDirectory.Types.DirectoryState
import Network.AWS.CloudDirectory.Types.Facet
import Network.AWS.CloudDirectory.Types.FacetAttribute
import Network.AWS.CloudDirectory.Types.FacetAttributeDefinition
import Network.AWS.CloudDirectory.Types.FacetAttributeReference
import Network.AWS.CloudDirectory.Types.FacetAttributeType
import Network.AWS.CloudDirectory.Types.FacetAttributeUpdate
import Network.AWS.CloudDirectory.Types.FacetStyle
import Network.AWS.CloudDirectory.Types.IndexAttachment
import Network.AWS.CloudDirectory.Types.LinkAttributeAction
import Network.AWS.CloudDirectory.Types.LinkAttributeUpdate
import Network.AWS.CloudDirectory.Types.ObjectAttributeAction
import Network.AWS.CloudDirectory.Types.ObjectAttributeRange
import Network.AWS.CloudDirectory.Types.ObjectAttributeUpdate
import Network.AWS.CloudDirectory.Types.ObjectIdentifierAndLinkNameTuple
import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.CloudDirectory.Types.ObjectType
import Network.AWS.CloudDirectory.Types.PathToObjectIdentifiers
import Network.AWS.CloudDirectory.Types.PolicyAttachment
import Network.AWS.CloudDirectory.Types.PolicyToPath
import Network.AWS.CloudDirectory.Types.RangeMode
import Network.AWS.CloudDirectory.Types.RequiredAttributeBehavior
import Network.AWS.CloudDirectory.Types.Rule
import Network.AWS.CloudDirectory.Types.RuleType
import Network.AWS.CloudDirectory.Types.SchemaFacet
import Network.AWS.CloudDirectory.Types.Tag
import Network.AWS.CloudDirectory.Types.TypedAttributeValue
import Network.AWS.CloudDirectory.Types.TypedAttributeValueRange
import Network.AWS.CloudDirectory.Types.TypedLinkAttributeDefinition
import Network.AWS.CloudDirectory.Types.TypedLinkAttributeRange
import Network.AWS.CloudDirectory.Types.TypedLinkFacet
import Network.AWS.CloudDirectory.Types.TypedLinkFacetAttributeUpdate
import Network.AWS.CloudDirectory.Types.TypedLinkSchemaAndFacetName
import Network.AWS.CloudDirectory.Types.TypedLinkSpecifier
import Network.AWS.CloudDirectory.Types.UpdateActionType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-01-11@ of the Amazon CloudDirectory SDK configuration.
cloudDirectory :: Service
cloudDirectory =
  Service
    { _svcAbbrev = "CloudDirectory",
      _svcSigner = v4,
      _svcPrefix = "clouddirectory",
      _svcVersion = "2017-01-11",
      _svcEndpoint = defaultEndpoint cloudDirectory,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CloudDirectory",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | Indicates a failure occurred while performing a check for backward compatibility between the specified schema and the schema that is currently applied to the directory.
_IncompatibleSchemaException :: AsError a => Getting (First ServiceError) a ServiceError
_IncompatibleSchemaException =
  _MatchServiceError
    cloudDirectory
    "IncompatibleSchemaException"
    . hasStatus 400

-- | Indicates that an attempt to make an attachment was invalid. For example, attaching two nodes with a link type that is not applicable to the nodes or attempting to apply a schema to a directory a second time.
_InvalidAttachmentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAttachmentException =
  _MatchServiceError
    cloudDirectory
    "InvalidAttachmentException"
    . hasStatus 400

-- | The 'Facet' that you provided was not well formed or could not be validated with the schema.
_FacetValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_FacetValidationException =
  _MatchServiceError
    cloudDirectory
    "FacetValidationException"
    . hasStatus 400

-- | A @BatchWrite@ exception has occurred.
_BatchWriteException :: AsError a => Getting (First ServiceError) a ServiceError
_BatchWriteException =
  _MatchServiceError
    cloudDirectory
    "BatchWriteException"

-- | Occurs when deleting a facet that contains an attribute that is a target to an attribute reference in a different facet.
_FacetInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_FacetInUseException =
  _MatchServiceError
    cloudDirectory
    "FacetInUseException"
    . hasStatus 400

-- | Indicates that the provided ARN value is not valid.
_InvalidARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidARNException =
  _MatchServiceError
    cloudDirectory
    "InvalidArnException"
    . hasStatus 400

-- | A directory that has been deleted and to which access has been attempted. Note: The requested resource will eventually cease to exist.
_DirectoryDeletedException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryDeletedException =
  _MatchServiceError
    cloudDirectory
    "DirectoryDeletedException"
    . hasStatus 400

-- | Occurs when any of the rule parameter keys or values are invalid.
_InvalidRuleException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRuleException =
  _MatchServiceError
    cloudDirectory
    "InvalidRuleException"
    . hasStatus 400

-- | Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the <http://status.aws.amazon.com/ AWS Service Health Dashboard> site to see if there are any operational issues with the service.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    cloudDirectory
    "InternalServiceException"
    . hasStatus 500

-- | Indicates that the requested operation can only operate on policy objects.
_NotPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_NotPolicyException =
  _MatchServiceError
    cloudDirectory
    "NotPolicyException"
    . hasStatus 400

-- | Indicates that the @NextToken@ value is not valid.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    cloudDirectory
    "InvalidNextTokenException"
    . hasStatus 400

-- | Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.
_InvalidTaggingRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTaggingRequestException =
  _MatchServiceError
    cloudDirectory
    "InvalidTaggingRequestException"
    . hasStatus 400

-- | Indicates that a link could not be created due to a naming conflict. Choose a different name and then try again.
_LinkNameAlreadyInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_LinkNameAlreadyInUseException =
  _MatchServiceError
    cloudDirectory
    "LinkNameAlreadyInUseException"
    . hasStatus 400

-- | Cannot list the parents of a 'Directory' root.
_CannotListParentOfRootException :: AsError a => Getting (First ServiceError) a ServiceError
_CannotListParentOfRootException =
  _MatchServiceError
    cloudDirectory
    "CannotListParentOfRootException"
    . hasStatus 400

-- | Indicates that the provided @SchemaDoc@ value is not valid.
_InvalidSchemaDocException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSchemaDocException =
  _MatchServiceError
    cloudDirectory
    "InvalidSchemaDocException"
    . hasStatus 400

-- | Access denied. Check your permissions.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    cloudDirectory
    "AccessDeniedException"
    . hasStatus 403

-- | Indicates that your request is malformed in some manner. See the exception message.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError
    cloudDirectory
    "ValidationException"
    . hasStatus 400

-- | A facet with the same name already exists.
_FacetAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_FacetAlreadyExistsException =
  _MatchServiceError
    cloudDirectory
    "FacetAlreadyExistsException"
    . hasStatus 400

-- | Indicates that the requested operation can only operate on index objects.
_NotIndexException :: AsError a => Getting (First ServiceError) a ServiceError
_NotIndexException =
  _MatchServiceError
    cloudDirectory
    "NotIndexException"
    . hasStatus 400

-- | Indicates that the requested index type is not supported.
_UnsupportedIndexTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedIndexTypeException =
  _MatchServiceError
    cloudDirectory
    "UnsupportedIndexTypeException"
    . hasStatus 400

-- | Indicates that limits are exceeded. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html Limits> for more information.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    cloudDirectory
    "LimitExceededException"
    . hasStatus 400

-- | Indicates that the requested operation cannot be completed because the object has not been detached from the tree.
_ObjectNotDetachedException :: AsError a => Getting (First ServiceError) a ServiceError
_ObjectNotDetachedException =
  _MatchServiceError
    cloudDirectory
    "ObjectNotDetachedException"
    . hasStatus 400

-- | The object could not be deleted because links still exist. Remove the links and then try the operation again.
_StillContainsLinksException :: AsError a => Getting (First ServiceError) a ServiceError
_StillContainsLinksException =
  _MatchServiceError
    cloudDirectory
    "StillContainsLinksException"
    . hasStatus 400

-- | The specified 'Facet' could not be found.
_FacetNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_FacetNotFoundException =
  _MatchServiceError
    cloudDirectory
    "FacetNotFoundException"
    . hasStatus 400

-- | Operations are only permitted on enabled directories.
_DirectoryNotEnabledException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryNotEnabledException =
  _MatchServiceError
    cloudDirectory
    "DirectoryNotEnabledException"
    . hasStatus 400

-- | The specified resource could not be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    cloudDirectory
    "ResourceNotFoundException"
    . hasStatus 404

-- | An operation can only operate on a disabled directory.
_DirectoryNotDisabledException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryNotDisabledException =
  _MatchServiceError
    cloudDirectory
    "DirectoryNotDisabledException"
    . hasStatus 400

-- | Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.
_RetryableConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_RetryableConflictException =
  _MatchServiceError
    cloudDirectory
    "RetryableConflictException"
    . hasStatus 409

-- | Indicates that a 'Directory' could not be created due to a naming conflict. Choose a different name and try again.
_DirectoryAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryAlreadyExistsException =
  _MatchServiceError
    cloudDirectory
    "DirectoryAlreadyExistsException"
    . hasStatus 400

-- | An object has been attempted to be attached to an object that does not have the appropriate attribute value.
_IndexedAttributeMissingException :: AsError a => Getting (First ServiceError) a ServiceError
_IndexedAttributeMissingException =
  _MatchServiceError
    cloudDirectory
    "IndexedAttributeMissingException"
    . hasStatus 400

-- | Indicates that a schema could not be created due to a naming conflict. Please select a different name and then try again.
_SchemaAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_SchemaAlreadyExistsException =
  _MatchServiceError
    cloudDirectory
    "SchemaAlreadyExistsException"
    . hasStatus 400

-- | Indicates that a schema is already published.
_SchemaAlreadyPublishedException :: AsError a => Getting (First ServiceError) a ServiceError
_SchemaAlreadyPublishedException =
  _MatchServiceError
    cloudDirectory
    "SchemaAlreadyPublishedException"
    . hasStatus 400

-- | Occurs when any invalid operations are performed on an object that is not a node, such as calling @ListObjectChildren@ for a leaf node object.
_NotNodeException :: AsError a => Getting (First ServiceError) a ServiceError
_NotNodeException =
  _MatchServiceError
    cloudDirectory
    "NotNodeException"
    . hasStatus 400

-- | Indicates that the object is not attached to the index.
_ObjectAlreadyDetachedException :: AsError a => Getting (First ServiceError) a ServiceError
_ObjectAlreadyDetachedException =
  _MatchServiceError
    cloudDirectory
    "ObjectAlreadyDetachedException"
    . hasStatus 400

-- | An attempt to modify a 'Facet' resulted in an invalid schema exception.
_InvalidFacetUpdateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFacetUpdateException =
  _MatchServiceError
    cloudDirectory
    "InvalidFacetUpdateException"
    . hasStatus 400
