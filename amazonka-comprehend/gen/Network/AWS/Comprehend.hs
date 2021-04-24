{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Comprehend is an AWS service for gaining insight into the content of documents. Use these actions to determine the topics contained in your documents, the topics they discuss, the predominant sentiment expressed in them, the predominant language used, and more.
module Network.AWS.Comprehend
  ( -- * Service Configuration
    comprehend,

    -- * Errors
    -- $errors

    -- ** ResourceUnavailableException
    _ResourceUnavailableException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** InvalidFilterException
    _InvalidFilterException,

    -- ** ResourceLimitExceededException
    _ResourceLimitExceededException,

    -- ** BatchSizeLimitExceededException
    _BatchSizeLimitExceededException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** TextSizeLimitExceededException
    _TextSizeLimitExceededException,

    -- ** KMSKeyValidationException
    _KMSKeyValidationException,

    -- ** TooManyTagKeysException
    _TooManyTagKeysException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** JobNotFoundException
    _JobNotFoundException,

    -- ** UnsupportedLanguageException
    _UnsupportedLanguageException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** StopSentimentDetectionJob
    module Network.AWS.Comprehend.StopSentimentDetectionJob,

    -- ** StartEventsDetectionJob
    module Network.AWS.Comprehend.StartEventsDetectionJob,

    -- ** CreateEndpoint
    module Network.AWS.Comprehend.CreateEndpoint,

    -- ** StartSentimentDetectionJob
    module Network.AWS.Comprehend.StartSentimentDetectionJob,

    -- ** StopEventsDetectionJob
    module Network.AWS.Comprehend.StopEventsDetectionJob,

    -- ** ListEntityRecognizers (Paginated)
    module Network.AWS.Comprehend.ListEntityRecognizers,

    -- ** BatchDetectSentiment
    module Network.AWS.Comprehend.BatchDetectSentiment,

    -- ** DeleteEntityRecognizer
    module Network.AWS.Comprehend.DeleteEntityRecognizer,

    -- ** DescribeKeyPhrasesDetectionJob
    module Network.AWS.Comprehend.DescribeKeyPhrasesDetectionJob,

    -- ** ListDominantLanguageDetectionJobs (Paginated)
    module Network.AWS.Comprehend.ListDominantLanguageDetectionJobs,

    -- ** StopKeyPhrasesDetectionJob
    module Network.AWS.Comprehend.StopKeyPhrasesDetectionJob,

    -- ** ListDocumentClassifiers (Paginated)
    module Network.AWS.Comprehend.ListDocumentClassifiers,

    -- ** CreateEntityRecognizer
    module Network.AWS.Comprehend.CreateEntityRecognizer,

    -- ** StartKeyPhrasesDetectionJob
    module Network.AWS.Comprehend.StartKeyPhrasesDetectionJob,

    -- ** ListEventsDetectionJobs
    module Network.AWS.Comprehend.ListEventsDetectionJobs,

    -- ** ListSentimentDetectionJobs (Paginated)
    module Network.AWS.Comprehend.ListSentimentDetectionJobs,

    -- ** DetectSyntax
    module Network.AWS.Comprehend.DetectSyntax,

    -- ** StartDocumentClassificationJob
    module Network.AWS.Comprehend.StartDocumentClassificationJob,

    -- ** DetectKeyPhrases
    module Network.AWS.Comprehend.DetectKeyPhrases,

    -- ** DescribeEndpoint
    module Network.AWS.Comprehend.DescribeEndpoint,

    -- ** BatchDetectEntities
    module Network.AWS.Comprehend.BatchDetectEntities,

    -- ** ListTopicsDetectionJobs (Paginated)
    module Network.AWS.Comprehend.ListTopicsDetectionJobs,

    -- ** UntagResource
    module Network.AWS.Comprehend.UntagResource,

    -- ** BatchDetectDominantLanguage
    module Network.AWS.Comprehend.BatchDetectDominantLanguage,

    -- ** StopTrainingDocumentClassifier
    module Network.AWS.Comprehend.StopTrainingDocumentClassifier,

    -- ** DescribeEntityRecognizer
    module Network.AWS.Comprehend.DescribeEntityRecognizer,

    -- ** DescribePiiEntitiesDetectionJob
    module Network.AWS.Comprehend.DescribePiiEntitiesDetectionJob,

    -- ** TagResource
    module Network.AWS.Comprehend.TagResource,

    -- ** ListKeyPhrasesDetectionJobs (Paginated)
    module Network.AWS.Comprehend.ListKeyPhrasesDetectionJobs,

    -- ** DescribeDominantLanguageDetectionJob
    module Network.AWS.Comprehend.DescribeDominantLanguageDetectionJob,

    -- ** StopEntitiesDetectionJob
    module Network.AWS.Comprehend.StopEntitiesDetectionJob,

    -- ** StopPiiEntitiesDetectionJob
    module Network.AWS.Comprehend.StopPiiEntitiesDetectionJob,

    -- ** DescribeDocumentClassifier
    module Network.AWS.Comprehend.DescribeDocumentClassifier,

    -- ** StopTrainingEntityRecognizer
    module Network.AWS.Comprehend.StopTrainingEntityRecognizer,

    -- ** StartEntitiesDetectionJob
    module Network.AWS.Comprehend.StartEntitiesDetectionJob,

    -- ** StartPiiEntitiesDetectionJob
    module Network.AWS.Comprehend.StartPiiEntitiesDetectionJob,

    -- ** ListEndpoints
    module Network.AWS.Comprehend.ListEndpoints,

    -- ** DeleteEndpoint
    module Network.AWS.Comprehend.DeleteEndpoint,

    -- ** UpdateEndpoint
    module Network.AWS.Comprehend.UpdateEndpoint,

    -- ** DescribeEventsDetectionJob
    module Network.AWS.Comprehend.DescribeEventsDetectionJob,

    -- ** DetectPiiEntities
    module Network.AWS.Comprehend.DetectPiiEntities,

    -- ** ClassifyDocument
    module Network.AWS.Comprehend.ClassifyDocument,

    -- ** DetectDominantLanguage
    module Network.AWS.Comprehend.DetectDominantLanguage,

    -- ** ListDocumentClassificationJobs (Paginated)
    module Network.AWS.Comprehend.ListDocumentClassificationJobs,

    -- ** DescribeTopicsDetectionJob
    module Network.AWS.Comprehend.DescribeTopicsDetectionJob,

    -- ** ListEntitiesDetectionJobs (Paginated)
    module Network.AWS.Comprehend.ListEntitiesDetectionJobs,

    -- ** CreateDocumentClassifier
    module Network.AWS.Comprehend.CreateDocumentClassifier,

    -- ** ListPiiEntitiesDetectionJobs
    module Network.AWS.Comprehend.ListPiiEntitiesDetectionJobs,

    -- ** DeleteDocumentClassifier
    module Network.AWS.Comprehend.DeleteDocumentClassifier,

    -- ** DescribeDocumentClassificationJob
    module Network.AWS.Comprehend.DescribeDocumentClassificationJob,

    -- ** StopDominantLanguageDetectionJob
    module Network.AWS.Comprehend.StopDominantLanguageDetectionJob,

    -- ** DescribeEntitiesDetectionJob
    module Network.AWS.Comprehend.DescribeEntitiesDetectionJob,

    -- ** StartDominantLanguageDetectionJob
    module Network.AWS.Comprehend.StartDominantLanguageDetectionJob,

    -- ** DetectSentiment
    module Network.AWS.Comprehend.DetectSentiment,

    -- ** ListTagsForResource
    module Network.AWS.Comprehend.ListTagsForResource,

    -- ** DetectEntities
    module Network.AWS.Comprehend.DetectEntities,

    -- ** DescribeSentimentDetectionJob
    module Network.AWS.Comprehend.DescribeSentimentDetectionJob,

    -- ** BatchDetectSyntax
    module Network.AWS.Comprehend.BatchDetectSyntax,

    -- ** BatchDetectKeyPhrases
    module Network.AWS.Comprehend.BatchDetectKeyPhrases,

    -- ** StartTopicsDetectionJob
    module Network.AWS.Comprehend.StartTopicsDetectionJob,

    -- * Types

    -- ** DocumentClassifierDataFormat
    DocumentClassifierDataFormat (..),

    -- ** DocumentClassifierMode
    DocumentClassifierMode (..),

    -- ** EndpointStatus
    EndpointStatus (..),

    -- ** EntityRecognizerDataFormat
    EntityRecognizerDataFormat (..),

    -- ** EntityType
    EntityType (..),

    -- ** InputFormat
    InputFormat (..),

    -- ** JobStatus
    JobStatus (..),

    -- ** LanguageCode
    LanguageCode (..),

    -- ** ModelStatus
    ModelStatus (..),

    -- ** PartOfSpeechTagType
    PartOfSpeechTagType (..),

    -- ** PiiEntitiesDetectionMaskMode
    PiiEntitiesDetectionMaskMode (..),

    -- ** PiiEntitiesDetectionMode
    PiiEntitiesDetectionMode (..),

    -- ** PiiEntityType
    PiiEntityType (..),

    -- ** SentimentType
    SentimentType (..),

    -- ** SyntaxLanguageCode
    SyntaxLanguageCode (..),

    -- ** AugmentedManifestsListItem
    AugmentedManifestsListItem,
    augmentedManifestsListItem,
    amliS3URI,
    amliAttributeNames,

    -- ** BatchDetectDominantLanguageItemResult
    BatchDetectDominantLanguageItemResult,
    batchDetectDominantLanguageItemResult,
    bddlirLanguages,
    bddlirIndex,

    -- ** BatchDetectEntitiesItemResult
    BatchDetectEntitiesItemResult,
    batchDetectEntitiesItemResult,
    bdeirIndex,
    bdeirEntities,

    -- ** BatchDetectKeyPhrasesItemResult
    BatchDetectKeyPhrasesItemResult,
    batchDetectKeyPhrasesItemResult,
    bdkpirKeyPhrases,
    bdkpirIndex,

    -- ** BatchDetectSentimentItemResult
    BatchDetectSentimentItemResult,
    batchDetectSentimentItemResult,
    bdsirSentimentScore,
    bdsirSentiment,
    bdsirIndex,

    -- ** BatchDetectSyntaxItemResult
    BatchDetectSyntaxItemResult,
    batchDetectSyntaxItemResult,
    bSyntaxTokens,
    bIndex,

    -- ** BatchItemError
    BatchItemError,
    batchItemError,
    bieIndex,
    bieErrorMessage,
    bieErrorCode,

    -- ** ClassifierEvaluationMetrics
    ClassifierEvaluationMetrics,
    classifierEvaluationMetrics,
    cemMicroRecall,
    cemF1Score,
    cemMicroPrecision,
    cemPrecision,
    cemAccuracy,
    cemHammingLoss,
    cemRecall,
    cemMicroF1Score,

    -- ** ClassifierMetadata
    ClassifierMetadata,
    classifierMetadata,
    cmNumberOfLabels,
    cmNumberOfTestDocuments,
    cmNumberOfTrainedDocuments,
    cmEvaluationMetrics,

    -- ** DocumentClass
    DocumentClass,
    documentClass,
    dcName,
    dcScore,

    -- ** DocumentClassificationJobFilter
    DocumentClassificationJobFilter,
    documentClassificationJobFilter,
    dcjfJobStatus,
    dcjfSubmitTimeBefore,
    dcjfSubmitTimeAfter,
    dcjfJobName,

    -- ** DocumentClassificationJobProperties
    DocumentClassificationJobProperties,
    documentClassificationJobProperties,
    dcjpVPCConfig,
    dcjpInputDataConfig,
    dcjpMessage,
    dcjpJobStatus,
    dcjpOutputDataConfig,
    dcjpDocumentClassifierARN,
    dcjpEndTime,
    dcjpVolumeKMSKeyId,
    dcjpSubmitTime,
    dcjpJobName,
    dcjpDataAccessRoleARN,
    dcjpJobId,

    -- ** DocumentClassifierFilter
    DocumentClassifierFilter,
    documentClassifierFilter,
    dcfStatus,
    dcfSubmitTimeBefore,
    dcfSubmitTimeAfter,

    -- ** DocumentClassifierInputDataConfig
    DocumentClassifierInputDataConfig,
    documentClassifierInputDataConfig,
    dcidcAugmentedManifests,
    dcidcDataFormat,
    dcidcLabelDelimiter,
    dcidcS3URI,

    -- ** DocumentClassifierOutputDataConfig
    DocumentClassifierOutputDataConfig,
    documentClassifierOutputDataConfig,
    dcodcKMSKeyId,
    dcodcS3URI,

    -- ** DocumentClassifierProperties
    DocumentClassifierProperties,
    documentClassifierProperties,
    dcpVPCConfig,
    dcpLanguageCode,
    dcpStatus,
    dcpInputDataConfig,
    dcpMode,
    dcpMessage,
    dcpOutputDataConfig,
    dcpDocumentClassifierARN,
    dcpEndTime,
    dcpClassifierMetadata,
    dcpVolumeKMSKeyId,
    dcpSubmitTime,
    dcpTrainingStartTime,
    dcpDataAccessRoleARN,
    dcpTrainingEndTime,

    -- ** DocumentLabel
    DocumentLabel,
    documentLabel,
    dName,
    dScore,

    -- ** DominantLanguage
    DominantLanguage,
    dominantLanguage,
    dlLanguageCode,
    dlScore,

    -- ** DominantLanguageDetectionJobFilter
    DominantLanguageDetectionJobFilter,
    dominantLanguageDetectionJobFilter,
    dldjfJobStatus,
    dldjfSubmitTimeBefore,
    dldjfSubmitTimeAfter,
    dldjfJobName,

    -- ** DominantLanguageDetectionJobProperties
    DominantLanguageDetectionJobProperties,
    dominantLanguageDetectionJobProperties,
    dldjpVPCConfig,
    dldjpInputDataConfig,
    dldjpMessage,
    dldjpJobStatus,
    dldjpOutputDataConfig,
    dldjpEndTime,
    dldjpVolumeKMSKeyId,
    dldjpSubmitTime,
    dldjpJobName,
    dldjpDataAccessRoleARN,
    dldjpJobId,

    -- ** EndpointFilter
    EndpointFilter,
    endpointFilter,
    efStatus,
    efCreationTimeBefore,
    efModelARN,
    efCreationTimeAfter,

    -- ** EndpointProperties
    EndpointProperties,
    endpointProperties,
    epCurrentInferenceUnits,
    epStatus,
    epCreationTime,
    epDesiredInferenceUnits,
    epMessage,
    epModelARN,
    epLastModifiedTime,
    epEndpointARN,

    -- ** EntitiesDetectionJobFilter
    EntitiesDetectionJobFilter,
    entitiesDetectionJobFilter,
    eJobStatus,
    eSubmitTimeBefore,
    eSubmitTimeAfter,
    eJobName,

    -- ** EntitiesDetectionJobProperties
    EntitiesDetectionJobProperties,
    entitiesDetectionJobProperties,
    edjpsVPCConfig,
    edjpsLanguageCode,
    edjpsInputDataConfig,
    edjpsMessage,
    edjpsJobStatus,
    edjpsOutputDataConfig,
    edjpsEndTime,
    edjpsVolumeKMSKeyId,
    edjpsSubmitTime,
    edjpsEntityRecognizerARN,
    edjpsJobName,
    edjpsDataAccessRoleARN,
    edjpsJobId,

    -- ** Entity
    Entity,
    entity,
    eEndOffset,
    eType,
    eScore,
    eText,
    eBeginOffset,

    -- ** EntityRecognizerAnnotations
    EntityRecognizerAnnotations,
    entityRecognizerAnnotations,
    eraS3URI,

    -- ** EntityRecognizerDocuments
    EntityRecognizerDocuments,
    entityRecognizerDocuments,
    erdS3URI,

    -- ** EntityRecognizerEntityList
    EntityRecognizerEntityList,
    entityRecognizerEntityList,
    erelS3URI,

    -- ** EntityRecognizerEvaluationMetrics
    EntityRecognizerEvaluationMetrics,
    entityRecognizerEvaluationMetrics,
    eremF1Score,
    eremPrecision,
    eremRecall,

    -- ** EntityRecognizerFilter
    EntityRecognizerFilter,
    entityRecognizerFilter,
    erfStatus,
    erfSubmitTimeBefore,
    erfSubmitTimeAfter,

    -- ** EntityRecognizerInputDataConfig
    EntityRecognizerInputDataConfig,
    entityRecognizerInputDataConfig,
    eridcDocuments,
    eridcAugmentedManifests,
    eridcDataFormat,
    eridcAnnotations,
    eridcEntityList,
    eridcEntityTypes,

    -- ** EntityRecognizerMetadata
    EntityRecognizerMetadata,
    entityRecognizerMetadata,
    ermNumberOfTestDocuments,
    ermNumberOfTrainedDocuments,
    ermEvaluationMetrics,
    ermEntityTypes,

    -- ** EntityRecognizerMetadataEntityTypesListItem
    EntityRecognizerMetadataEntityTypesListItem,
    entityRecognizerMetadataEntityTypesListItem,
    ermetliNumberOfTrainMentions,
    ermetliEvaluationMetrics,
    ermetliType,

    -- ** EntityRecognizerProperties
    EntityRecognizerProperties,
    entityRecognizerProperties,
    erpVPCConfig,
    erpLanguageCode,
    erpStatus,
    erpInputDataConfig,
    erpMessage,
    erpEndTime,
    erpVolumeKMSKeyId,
    erpSubmitTime,
    erpRecognizerMetadata,
    erpEntityRecognizerARN,
    erpTrainingStartTime,
    erpDataAccessRoleARN,
    erpTrainingEndTime,

    -- ** EntityTypesEvaluationMetrics
    EntityTypesEvaluationMetrics,
    entityTypesEvaluationMetrics,
    etemF1Score,
    etemPrecision,
    etemRecall,

    -- ** EntityTypesListItem
    EntityTypesListItem,
    entityTypesListItem,
    etliType,

    -- ** EventsDetectionJobFilter
    EventsDetectionJobFilter,
    eventsDetectionJobFilter,
    edjfJobStatus,
    edjfSubmitTimeBefore,
    edjfSubmitTimeAfter,
    edjfJobName,

    -- ** EventsDetectionJobProperties
    EventsDetectionJobProperties,
    eventsDetectionJobProperties,
    edjpLanguageCode,
    edjpInputDataConfig,
    edjpMessage,
    edjpJobStatus,
    edjpOutputDataConfig,
    edjpEndTime,
    edjpSubmitTime,
    edjpTargetEventTypes,
    edjpJobName,
    edjpDataAccessRoleARN,
    edjpJobId,

    -- ** InputDataConfig
    InputDataConfig,
    inputDataConfig,
    idcInputFormat,
    idcS3URI,

    -- ** KeyPhrase
    KeyPhrase,
    keyPhrase,
    kpEndOffset,
    kpScore,
    kpText,
    kpBeginOffset,

    -- ** KeyPhrasesDetectionJobFilter
    KeyPhrasesDetectionJobFilter,
    keyPhrasesDetectionJobFilter,
    kpdjfJobStatus,
    kpdjfSubmitTimeBefore,
    kpdjfSubmitTimeAfter,
    kpdjfJobName,

    -- ** KeyPhrasesDetectionJobProperties
    KeyPhrasesDetectionJobProperties,
    keyPhrasesDetectionJobProperties,
    kpdjpVPCConfig,
    kpdjpLanguageCode,
    kpdjpInputDataConfig,
    kpdjpMessage,
    kpdjpJobStatus,
    kpdjpOutputDataConfig,
    kpdjpEndTime,
    kpdjpVolumeKMSKeyId,
    kpdjpSubmitTime,
    kpdjpJobName,
    kpdjpDataAccessRoleARN,
    kpdjpJobId,

    -- ** OutputDataConfig
    OutputDataConfig,
    outputDataConfig,
    odcKMSKeyId,
    odcS3URI,

    -- ** PartOfSpeechTag
    PartOfSpeechTag,
    partOfSpeechTag,
    postScore,
    postTag,

    -- ** PiiEntitiesDetectionJobFilter
    PiiEntitiesDetectionJobFilter,
    piiEntitiesDetectionJobFilter,
    pedjfJobStatus,
    pedjfSubmitTimeBefore,
    pedjfSubmitTimeAfter,
    pedjfJobName,

    -- ** PiiEntitiesDetectionJobProperties
    PiiEntitiesDetectionJobProperties,
    piiEntitiesDetectionJobProperties,
    pedjpRedactionConfig,
    pedjpLanguageCode,
    pedjpInputDataConfig,
    pedjpMode,
    pedjpMessage,
    pedjpJobStatus,
    pedjpOutputDataConfig,
    pedjpEndTime,
    pedjpSubmitTime,
    pedjpJobName,
    pedjpDataAccessRoleARN,
    pedjpJobId,

    -- ** PiiEntity
    PiiEntity,
    piiEntity,
    peEndOffset,
    peType,
    peScore,
    peBeginOffset,

    -- ** PiiOutputDataConfig
    PiiOutputDataConfig,
    piiOutputDataConfig,
    podcKMSKeyId,
    podcS3URI,

    -- ** RedactionConfig
    RedactionConfig,
    redactionConfig,
    rcMaskCharacter,
    rcMaskMode,
    rcPiiEntityTypes,

    -- ** SentimentDetectionJobFilter
    SentimentDetectionJobFilter,
    sentimentDetectionJobFilter,
    sdjfJobStatus,
    sdjfSubmitTimeBefore,
    sdjfSubmitTimeAfter,
    sdjfJobName,

    -- ** SentimentDetectionJobProperties
    SentimentDetectionJobProperties,
    sentimentDetectionJobProperties,
    sdjpVPCConfig,
    sdjpLanguageCode,
    sdjpInputDataConfig,
    sdjpMessage,
    sdjpJobStatus,
    sdjpOutputDataConfig,
    sdjpEndTime,
    sdjpVolumeKMSKeyId,
    sdjpSubmitTime,
    sdjpJobName,
    sdjpDataAccessRoleARN,
    sdjpJobId,

    -- ** SentimentScore
    SentimentScore,
    sentimentScore,
    ssNegative,
    ssMixed,
    ssPositive,
    ssNeutral,

    -- ** SyntaxToken
    SyntaxToken,
    syntaxToken,
    stTokenId,
    stPartOfSpeech,
    stEndOffset,
    stText,
    stBeginOffset,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** TopicsDetectionJobFilter
    TopicsDetectionJobFilter,
    topicsDetectionJobFilter,
    tdjfJobStatus,
    tdjfSubmitTimeBefore,
    tdjfSubmitTimeAfter,
    tdjfJobName,

    -- ** TopicsDetectionJobProperties
    TopicsDetectionJobProperties,
    topicsDetectionJobProperties,
    tdjpVPCConfig,
    tdjpInputDataConfig,
    tdjpMessage,
    tdjpJobStatus,
    tdjpOutputDataConfig,
    tdjpEndTime,
    tdjpVolumeKMSKeyId,
    tdjpSubmitTime,
    tdjpNumberOfTopics,
    tdjpJobName,
    tdjpDataAccessRoleARN,
    tdjpJobId,

    -- ** VPCConfig
    VPCConfig,
    vpcConfig,
    vcSecurityGroupIds,
    vcSubnets,
  )
where

import Network.AWS.Comprehend.BatchDetectDominantLanguage
import Network.AWS.Comprehend.BatchDetectEntities
import Network.AWS.Comprehend.BatchDetectKeyPhrases
import Network.AWS.Comprehend.BatchDetectSentiment
import Network.AWS.Comprehend.BatchDetectSyntax
import Network.AWS.Comprehend.ClassifyDocument
import Network.AWS.Comprehend.CreateDocumentClassifier
import Network.AWS.Comprehend.CreateEndpoint
import Network.AWS.Comprehend.CreateEntityRecognizer
import Network.AWS.Comprehend.DeleteDocumentClassifier
import Network.AWS.Comprehend.DeleteEndpoint
import Network.AWS.Comprehend.DeleteEntityRecognizer
import Network.AWS.Comprehend.DescribeDocumentClassificationJob
import Network.AWS.Comprehend.DescribeDocumentClassifier
import Network.AWS.Comprehend.DescribeDominantLanguageDetectionJob
import Network.AWS.Comprehend.DescribeEndpoint
import Network.AWS.Comprehend.DescribeEntitiesDetectionJob
import Network.AWS.Comprehend.DescribeEntityRecognizer
import Network.AWS.Comprehend.DescribeEventsDetectionJob
import Network.AWS.Comprehend.DescribeKeyPhrasesDetectionJob
import Network.AWS.Comprehend.DescribePiiEntitiesDetectionJob
import Network.AWS.Comprehend.DescribeSentimentDetectionJob
import Network.AWS.Comprehend.DescribeTopicsDetectionJob
import Network.AWS.Comprehend.DetectDominantLanguage
import Network.AWS.Comprehend.DetectEntities
import Network.AWS.Comprehend.DetectKeyPhrases
import Network.AWS.Comprehend.DetectPiiEntities
import Network.AWS.Comprehend.DetectSentiment
import Network.AWS.Comprehend.DetectSyntax
import Network.AWS.Comprehend.ListDocumentClassificationJobs
import Network.AWS.Comprehend.ListDocumentClassifiers
import Network.AWS.Comprehend.ListDominantLanguageDetectionJobs
import Network.AWS.Comprehend.ListEndpoints
import Network.AWS.Comprehend.ListEntitiesDetectionJobs
import Network.AWS.Comprehend.ListEntityRecognizers
import Network.AWS.Comprehend.ListEventsDetectionJobs
import Network.AWS.Comprehend.ListKeyPhrasesDetectionJobs
import Network.AWS.Comprehend.ListPiiEntitiesDetectionJobs
import Network.AWS.Comprehend.ListSentimentDetectionJobs
import Network.AWS.Comprehend.ListTagsForResource
import Network.AWS.Comprehend.ListTopicsDetectionJobs
import Network.AWS.Comprehend.StartDocumentClassificationJob
import Network.AWS.Comprehend.StartDominantLanguageDetectionJob
import Network.AWS.Comprehend.StartEntitiesDetectionJob
import Network.AWS.Comprehend.StartEventsDetectionJob
import Network.AWS.Comprehend.StartKeyPhrasesDetectionJob
import Network.AWS.Comprehend.StartPiiEntitiesDetectionJob
import Network.AWS.Comprehend.StartSentimentDetectionJob
import Network.AWS.Comprehend.StartTopicsDetectionJob
import Network.AWS.Comprehend.StopDominantLanguageDetectionJob
import Network.AWS.Comprehend.StopEntitiesDetectionJob
import Network.AWS.Comprehend.StopEventsDetectionJob
import Network.AWS.Comprehend.StopKeyPhrasesDetectionJob
import Network.AWS.Comprehend.StopPiiEntitiesDetectionJob
import Network.AWS.Comprehend.StopSentimentDetectionJob
import Network.AWS.Comprehend.StopTrainingDocumentClassifier
import Network.AWS.Comprehend.StopTrainingEntityRecognizer
import Network.AWS.Comprehend.TagResource
import Network.AWS.Comprehend.Types
import Network.AWS.Comprehend.UntagResource
import Network.AWS.Comprehend.UpdateEndpoint
import Network.AWS.Comprehend.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Comprehend'.

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
