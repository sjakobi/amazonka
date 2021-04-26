{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceUnavailableException,
    _TooManyTagsException,
    _InvalidFilterException,
    _ResourceLimitExceededException,
    _BatchSizeLimitExceededException,
    _ConcurrentModificationException,
    _InvalidRequestException,
    _ResourceInUseException,
    _TextSizeLimitExceededException,
    _KmsKeyValidationException,
    _TooManyTagKeysException,
    _ResourceNotFoundException,
    _JobNotFoundException,
    _UnsupportedLanguageException,
    _InternalServerException,
    _TooManyRequestsException,

    -- * DocumentClassifierDataFormat
    DocumentClassifierDataFormat (..),

    -- * DocumentClassifierMode
    DocumentClassifierMode (..),

    -- * EndpointStatus
    EndpointStatus (..),

    -- * EntityRecognizerDataFormat
    EntityRecognizerDataFormat (..),

    -- * EntityType
    EntityType (..),

    -- * InputFormat
    InputFormat (..),

    -- * JobStatus
    JobStatus (..),

    -- * LanguageCode
    LanguageCode (..),

    -- * ModelStatus
    ModelStatus (..),

    -- * PartOfSpeechTagType
    PartOfSpeechTagType (..),

    -- * PiiEntitiesDetectionMaskMode
    PiiEntitiesDetectionMaskMode (..),

    -- * PiiEntitiesDetectionMode
    PiiEntitiesDetectionMode (..),

    -- * PiiEntityType
    PiiEntityType (..),

    -- * SentimentType
    SentimentType (..),

    -- * SyntaxLanguageCode
    SyntaxLanguageCode (..),

    -- * AugmentedManifestsListItem
    AugmentedManifestsListItem (..),
    newAugmentedManifestsListItem,

    -- * BatchDetectDominantLanguageItemResult
    BatchDetectDominantLanguageItemResult (..),
    newBatchDetectDominantLanguageItemResult,

    -- * BatchDetectEntitiesItemResult
    BatchDetectEntitiesItemResult (..),
    newBatchDetectEntitiesItemResult,

    -- * BatchDetectKeyPhrasesItemResult
    BatchDetectKeyPhrasesItemResult (..),
    newBatchDetectKeyPhrasesItemResult,

    -- * BatchDetectSentimentItemResult
    BatchDetectSentimentItemResult (..),
    newBatchDetectSentimentItemResult,

    -- * BatchDetectSyntaxItemResult
    BatchDetectSyntaxItemResult (..),
    newBatchDetectSyntaxItemResult,

    -- * BatchItemError
    BatchItemError (..),
    newBatchItemError,

    -- * ClassifierEvaluationMetrics
    ClassifierEvaluationMetrics (..),
    newClassifierEvaluationMetrics,

    -- * ClassifierMetadata
    ClassifierMetadata (..),
    newClassifierMetadata,

    -- * DocumentClass
    DocumentClass (..),
    newDocumentClass,

    -- * DocumentClassificationJobFilter
    DocumentClassificationJobFilter (..),
    newDocumentClassificationJobFilter,

    -- * DocumentClassificationJobProperties
    DocumentClassificationJobProperties (..),
    newDocumentClassificationJobProperties,

    -- * DocumentClassifierFilter
    DocumentClassifierFilter (..),
    newDocumentClassifierFilter,

    -- * DocumentClassifierInputDataConfig
    DocumentClassifierInputDataConfig (..),
    newDocumentClassifierInputDataConfig,

    -- * DocumentClassifierOutputDataConfig
    DocumentClassifierOutputDataConfig (..),
    newDocumentClassifierOutputDataConfig,

    -- * DocumentClassifierProperties
    DocumentClassifierProperties (..),
    newDocumentClassifierProperties,

    -- * DocumentLabel
    DocumentLabel (..),
    newDocumentLabel,

    -- * DominantLanguage
    DominantLanguage (..),
    newDominantLanguage,

    -- * DominantLanguageDetectionJobFilter
    DominantLanguageDetectionJobFilter (..),
    newDominantLanguageDetectionJobFilter,

    -- * DominantLanguageDetectionJobProperties
    DominantLanguageDetectionJobProperties (..),
    newDominantLanguageDetectionJobProperties,

    -- * EndpointFilter
    EndpointFilter (..),
    newEndpointFilter,

    -- * EndpointProperties
    EndpointProperties (..),
    newEndpointProperties,

    -- * EntitiesDetectionJobFilter
    EntitiesDetectionJobFilter (..),
    newEntitiesDetectionJobFilter,

    -- * EntitiesDetectionJobProperties
    EntitiesDetectionJobProperties (..),
    newEntitiesDetectionJobProperties,

    -- * Entity
    Entity (..),
    newEntity,

    -- * EntityRecognizerAnnotations
    EntityRecognizerAnnotations (..),
    newEntityRecognizerAnnotations,

    -- * EntityRecognizerDocuments
    EntityRecognizerDocuments (..),
    newEntityRecognizerDocuments,

    -- * EntityRecognizerEntityList
    EntityRecognizerEntityList (..),
    newEntityRecognizerEntityList,

    -- * EntityRecognizerEvaluationMetrics
    EntityRecognizerEvaluationMetrics (..),
    newEntityRecognizerEvaluationMetrics,

    -- * EntityRecognizerFilter
    EntityRecognizerFilter (..),
    newEntityRecognizerFilter,

    -- * EntityRecognizerInputDataConfig
    EntityRecognizerInputDataConfig (..),
    newEntityRecognizerInputDataConfig,

    -- * EntityRecognizerMetadata
    EntityRecognizerMetadata (..),
    newEntityRecognizerMetadata,

    -- * EntityRecognizerMetadataEntityTypesListItem
    EntityRecognizerMetadataEntityTypesListItem (..),
    newEntityRecognizerMetadataEntityTypesListItem,

    -- * EntityRecognizerProperties
    EntityRecognizerProperties (..),
    newEntityRecognizerProperties,

    -- * EntityTypesEvaluationMetrics
    EntityTypesEvaluationMetrics (..),
    newEntityTypesEvaluationMetrics,

    -- * EntityTypesListItem
    EntityTypesListItem (..),
    newEntityTypesListItem,

    -- * EventsDetectionJobFilter
    EventsDetectionJobFilter (..),
    newEventsDetectionJobFilter,

    -- * EventsDetectionJobProperties
    EventsDetectionJobProperties (..),
    newEventsDetectionJobProperties,

    -- * InputDataConfig
    InputDataConfig (..),
    newInputDataConfig,

    -- * KeyPhrase
    KeyPhrase (..),
    newKeyPhrase,

    -- * KeyPhrasesDetectionJobFilter
    KeyPhrasesDetectionJobFilter (..),
    newKeyPhrasesDetectionJobFilter,

    -- * KeyPhrasesDetectionJobProperties
    KeyPhrasesDetectionJobProperties (..),
    newKeyPhrasesDetectionJobProperties,

    -- * OutputDataConfig
    OutputDataConfig (..),
    newOutputDataConfig,

    -- * PartOfSpeechTag
    PartOfSpeechTag (..),
    newPartOfSpeechTag,

    -- * PiiEntitiesDetectionJobFilter
    PiiEntitiesDetectionJobFilter (..),
    newPiiEntitiesDetectionJobFilter,

    -- * PiiEntitiesDetectionJobProperties
    PiiEntitiesDetectionJobProperties (..),
    newPiiEntitiesDetectionJobProperties,

    -- * PiiEntity
    PiiEntity (..),
    newPiiEntity,

    -- * PiiOutputDataConfig
    PiiOutputDataConfig (..),
    newPiiOutputDataConfig,

    -- * RedactionConfig
    RedactionConfig (..),
    newRedactionConfig,

    -- * SentimentDetectionJobFilter
    SentimentDetectionJobFilter (..),
    newSentimentDetectionJobFilter,

    -- * SentimentDetectionJobProperties
    SentimentDetectionJobProperties (..),
    newSentimentDetectionJobProperties,

    -- * SentimentScore
    SentimentScore (..),
    newSentimentScore,

    -- * SyntaxToken
    SyntaxToken (..),
    newSyntaxToken,

    -- * Tag
    Tag (..),
    newTag,

    -- * TopicsDetectionJobFilter
    TopicsDetectionJobFilter (..),
    newTopicsDetectionJobFilter,

    -- * TopicsDetectionJobProperties
    TopicsDetectionJobProperties (..),
    newTopicsDetectionJobProperties,

    -- * VpcConfig
    VpcConfig (..),
    newVpcConfig,
  )
where

import Network.AWS.Comprehend.Types.AugmentedManifestsListItem
import Network.AWS.Comprehend.Types.BatchDetectDominantLanguageItemResult
import Network.AWS.Comprehend.Types.BatchDetectEntitiesItemResult
import Network.AWS.Comprehend.Types.BatchDetectKeyPhrasesItemResult
import Network.AWS.Comprehend.Types.BatchDetectSentimentItemResult
import Network.AWS.Comprehend.Types.BatchDetectSyntaxItemResult
import Network.AWS.Comprehend.Types.BatchItemError
import Network.AWS.Comprehend.Types.ClassifierEvaluationMetrics
import Network.AWS.Comprehend.Types.ClassifierMetadata
import Network.AWS.Comprehend.Types.DocumentClass
import Network.AWS.Comprehend.Types.DocumentClassificationJobFilter
import Network.AWS.Comprehend.Types.DocumentClassificationJobProperties
import Network.AWS.Comprehend.Types.DocumentClassifierDataFormat
import Network.AWS.Comprehend.Types.DocumentClassifierFilter
import Network.AWS.Comprehend.Types.DocumentClassifierInputDataConfig
import Network.AWS.Comprehend.Types.DocumentClassifierMode
import Network.AWS.Comprehend.Types.DocumentClassifierOutputDataConfig
import Network.AWS.Comprehend.Types.DocumentClassifierProperties
import Network.AWS.Comprehend.Types.DocumentLabel
import Network.AWS.Comprehend.Types.DominantLanguage
import Network.AWS.Comprehend.Types.DominantLanguageDetectionJobFilter
import Network.AWS.Comprehend.Types.DominantLanguageDetectionJobProperties
import Network.AWS.Comprehend.Types.EndpointFilter
import Network.AWS.Comprehend.Types.EndpointProperties
import Network.AWS.Comprehend.Types.EndpointStatus
import Network.AWS.Comprehend.Types.EntitiesDetectionJobFilter
import Network.AWS.Comprehend.Types.EntitiesDetectionJobProperties
import Network.AWS.Comprehend.Types.Entity
import Network.AWS.Comprehend.Types.EntityRecognizerAnnotations
import Network.AWS.Comprehend.Types.EntityRecognizerDataFormat
import Network.AWS.Comprehend.Types.EntityRecognizerDocuments
import Network.AWS.Comprehend.Types.EntityRecognizerEntityList
import Network.AWS.Comprehend.Types.EntityRecognizerEvaluationMetrics
import Network.AWS.Comprehend.Types.EntityRecognizerFilter
import Network.AWS.Comprehend.Types.EntityRecognizerInputDataConfig
import Network.AWS.Comprehend.Types.EntityRecognizerMetadata
import Network.AWS.Comprehend.Types.EntityRecognizerMetadataEntityTypesListItem
import Network.AWS.Comprehend.Types.EntityRecognizerProperties
import Network.AWS.Comprehend.Types.EntityType
import Network.AWS.Comprehend.Types.EntityTypesEvaluationMetrics
import Network.AWS.Comprehend.Types.EntityTypesListItem
import Network.AWS.Comprehend.Types.EventsDetectionJobFilter
import Network.AWS.Comprehend.Types.EventsDetectionJobProperties
import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.InputFormat
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.KeyPhrase
import Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobFilter
import Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobProperties
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.ModelStatus
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.PartOfSpeechTag
import Network.AWS.Comprehend.Types.PartOfSpeechTagType
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobFilter
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobProperties
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
import Network.AWS.Comprehend.Types.PiiEntitiesDetectionMode
import Network.AWS.Comprehend.Types.PiiEntity
import Network.AWS.Comprehend.Types.PiiEntityType
import Network.AWS.Comprehend.Types.PiiOutputDataConfig
import Network.AWS.Comprehend.Types.RedactionConfig
import Network.AWS.Comprehend.Types.SentimentDetectionJobFilter
import Network.AWS.Comprehend.Types.SentimentDetectionJobProperties
import Network.AWS.Comprehend.Types.SentimentScore
import Network.AWS.Comprehend.Types.SentimentType
import Network.AWS.Comprehend.Types.SyntaxLanguageCode
import Network.AWS.Comprehend.Types.SyntaxToken
import Network.AWS.Comprehend.Types.Tag
import Network.AWS.Comprehend.Types.TopicsDetectionJobFilter
import Network.AWS.Comprehend.Types.TopicsDetectionJobProperties
import Network.AWS.Comprehend.Types.VpcConfig
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-11-27@ of the Amazon Comprehend SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Comprehend",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "comprehend",
      Prelude._svcVersion = "2017-11-27",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "Comprehend",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The specified resource is not available. Check the resource and try your
-- request again.
_ResourceUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "ResourceUnavailableException"

-- | The request contains more tags than can be associated with a resource
-- (50 tags per resource). The maximum number of tags includes both
-- existing tags and those included in your current request.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | The filter specified for the operation is invalid. Specify a different
-- filter.
_InvalidFilterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidFilterException =
  Prelude._MatchServiceError
    defaultService
    "InvalidFilterException"

-- | The maximum number of resources per account has been exceeded. Review
-- the resources, and then try your request again.
_ResourceLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "ResourceLimitExceededException"

-- | The number of documents in the request exceeds the limit of 25. Try your
-- request again with fewer documents.
_BatchSizeLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BatchSizeLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "BatchSizeLimitExceededException"

-- | Concurrent modification of the tags associated with an Amazon Comprehend
-- resource is not supported.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The request is invalid.
_InvalidRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRequestException"

-- | The specified resource name is already in use. Use a different name and
-- try your request again.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The size of the input text exceeds the limit. Use a smaller document.
_TextSizeLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TextSizeLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "TextSizeLimitExceededException"

-- | The KMS customer managed key (CMK) entered cannot be validated. Verify
-- the key and re-enter it.
_KmsKeyValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KmsKeyValidationException =
  Prelude._MatchServiceError
    defaultService
    "KmsKeyValidationException"

-- | The request contains more tag keys than can be associated with a
-- resource (50 tag keys per resource).
_TooManyTagKeysException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagKeysException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagKeysException"

-- | The specified resource ARN was not found. Check the ARN and try your
-- request again.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The specified job was not found. Check the job ID and try again.
_JobNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_JobNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "JobNotFoundException"

-- | Amazon Comprehend can\'t process the language of the input text. For all
-- custom entity recognition APIs (such as @CreateEntityRecognizer@), only
-- English, Spanish, French, Italian, German, or Portuguese are accepted.
-- For most other APIs, such as those for Custom Classification, Amazon
-- Comprehend accepts text in all supported languages. For a list of
-- supported languages, see supported-languages.
_UnsupportedLanguageException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedLanguageException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedLanguageException"

-- | An internal server error occurred. Retry your request.
_InternalServerException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServerException =
  Prelude._MatchServiceError
    defaultService
    "InternalServerException"

-- | The number of requests exceeds the limit. Resubmit your request later.
_TooManyRequestsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyRequestsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyRequestsException"
