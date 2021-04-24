{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides translation between one source language and another of the same set of languages.
module Network.AWS.Translate
  ( -- * Service Configuration
    translate,

    -- * Errors
    -- $errors

    -- ** InvalidFilterException
    _InvalidFilterException,

    -- ** DetectedLanguageLowConfidenceException
    _DetectedLanguageLowConfidenceException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** UnsupportedLanguagePairException
    _UnsupportedLanguagePairException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** InvalidParameterValueException
    _InvalidParameterValueException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ConflictException
    _ConflictException,

    -- ** TextSizeLimitExceededException
    _TextSizeLimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateParallelData
    module Network.AWS.Translate.CreateParallelData,

    -- ** DescribeTextTranslationJob
    module Network.AWS.Translate.DescribeTextTranslationJob,

    -- ** StopTextTranslationJob
    module Network.AWS.Translate.StopTextTranslationJob,

    -- ** StartTextTranslationJob
    module Network.AWS.Translate.StartTextTranslationJob,

    -- ** ImportTerminology
    module Network.AWS.Translate.ImportTerminology,

    -- ** ListTextTranslationJobs
    module Network.AWS.Translate.ListTextTranslationJobs,

    -- ** GetParallelData
    module Network.AWS.Translate.GetParallelData,

    -- ** DeleteParallelData
    module Network.AWS.Translate.DeleteParallelData,

    -- ** UpdateParallelData
    module Network.AWS.Translate.UpdateParallelData,

    -- ** DeleteTerminology
    module Network.AWS.Translate.DeleteTerminology,

    -- ** ListTerminologies (Paginated)
    module Network.AWS.Translate.ListTerminologies,

    -- ** ListParallelData
    module Network.AWS.Translate.ListParallelData,

    -- ** TranslateText
    module Network.AWS.Translate.TranslateText,

    -- ** GetTerminology
    module Network.AWS.Translate.GetTerminology,

    -- * Types

    -- ** EncryptionKeyType
    EncryptionKeyType (..),

    -- ** JobStatus
    JobStatus (..),

    -- ** MergeStrategy
    MergeStrategy (..),

    -- ** ParallelDataFormat
    ParallelDataFormat (..),

    -- ** ParallelDataStatus
    ParallelDataStatus (..),

    -- ** TerminologyDataFormat
    TerminologyDataFormat (..),

    -- ** AppliedTerminology
    AppliedTerminology,
    appliedTerminology,
    atTerms,
    atName,

    -- ** EncryptionKey
    EncryptionKey,
    encryptionKey,
    ekType,
    ekId,

    -- ** InputDataConfig
    InputDataConfig,
    inputDataConfig,
    idcS3URI,
    idcContentType,

    -- ** JobDetails
    JobDetails,
    jobDetails,
    jdInputDocumentsCount,
    jdDocumentsWithErrorsCount,
    jdTranslatedDocumentsCount,

    -- ** OutputDataConfig
    OutputDataConfig,
    outputDataConfig,
    odcS3URI,

    -- ** ParallelDataConfig
    ParallelDataConfig,
    parallelDataConfig,
    pdcS3URI,
    pdcFormat,

    -- ** ParallelDataDataLocation
    ParallelDataDataLocation,
    parallelDataDataLocation,
    pddlRepositoryType,
    pddlLocation,

    -- ** ParallelDataProperties
    ParallelDataProperties,
    parallelDataProperties,
    pdpStatus,
    pdpImportedDataSize,
    pdpSkippedRecordCount,
    pdpLatestUpdateAttemptStatus,
    pdpMessage,
    pdpEncryptionKey,
    pdpARN,
    pdpTargetLanguageCodes,
    pdpCreatedAt,
    pdpFailedRecordCount,
    pdpLatestUpdateAttemptAt,
    pdpName,
    pdpParallelDataConfig,
    pdpDescription,
    pdpSourceLanguageCode,
    pdpImportedRecordCount,
    pdpLastUpdatedAt,

    -- ** Term
    Term,
    term,
    tTargetText,
    tSourceText,

    -- ** TerminologyData
    TerminologyData,
    terminologyData,
    tdFile,
    tdFormat,

    -- ** TerminologyDataLocation
    TerminologyDataLocation,
    terminologyDataLocation,
    tdlRepositoryType,
    tdlLocation,

    -- ** TerminologyProperties
    TerminologyProperties,
    terminologyProperties,
    tpEncryptionKey,
    tpARN,
    tpTargetLanguageCodes,
    tpCreatedAt,
    tpName,
    tpSizeBytes,
    tpDescription,
    tpTermCount,
    tpSourceLanguageCode,
    tpLastUpdatedAt,

    -- ** TextTranslationJobFilter
    TextTranslationJobFilter,
    textTranslationJobFilter,
    ttjfJobStatus,
    ttjfSubmittedAfterTime,
    ttjfSubmittedBeforeTime,
    ttjfJobName,

    -- ** TextTranslationJobProperties
    TextTranslationJobProperties,
    textTranslationJobProperties,
    ttjpParallelDataNames,
    ttjpInputDataConfig,
    ttjpSubmittedTime,
    ttjpMessage,
    ttjpJobStatus,
    ttjpJobDetails,
    ttjpOutputDataConfig,
    ttjpTargetLanguageCodes,
    ttjpEndTime,
    ttjpTerminologyNames,
    ttjpJobName,
    ttjpDataAccessRoleARN,
    ttjpJobId,
    ttjpSourceLanguageCode,
  )
where

import Network.AWS.Translate.CreateParallelData
import Network.AWS.Translate.DeleteParallelData
import Network.AWS.Translate.DeleteTerminology
import Network.AWS.Translate.DescribeTextTranslationJob
import Network.AWS.Translate.GetParallelData
import Network.AWS.Translate.GetTerminology
import Network.AWS.Translate.ImportTerminology
import Network.AWS.Translate.ListParallelData
import Network.AWS.Translate.ListTerminologies
import Network.AWS.Translate.ListTextTranslationJobs
import Network.AWS.Translate.StartTextTranslationJob
import Network.AWS.Translate.StopTextTranslationJob
import Network.AWS.Translate.TranslateText
import Network.AWS.Translate.Types
import Network.AWS.Translate.UpdateParallelData
import Network.AWS.Translate.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Translate'.

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
