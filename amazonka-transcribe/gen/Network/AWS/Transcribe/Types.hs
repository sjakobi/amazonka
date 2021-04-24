{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types
  ( -- * Service Configuration
    transcribe,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _LimitExceededException,
    _ConflictException,
    _InternalFailureException,

    -- * BaseModelName
    BaseModelName (..),

    -- * CLMLanguageCode
    CLMLanguageCode (..),

    -- * LanguageCode
    LanguageCode (..),

    -- * MediaFormat
    MediaFormat (..),

    -- * ModelStatus
    ModelStatus (..),

    -- * OutputLocationType
    OutputLocationType (..),

    -- * RedactionOutput
    RedactionOutput (..),

    -- * RedactionType
    RedactionType (..),

    -- * Specialty
    Specialty (..),

    -- * TranscriptionJobStatus
    TranscriptionJobStatus (..),

    -- * Type
    Type (..),

    -- * VocabularyFilterMethod
    VocabularyFilterMethod (..),

    -- * VocabularyState
    VocabularyState (..),

    -- * ContentRedaction
    ContentRedaction (..),
    contentRedaction,
    crRedactionType,
    crRedactionOutput,

    -- * InputDataConfig
    InputDataConfig (..),
    inputDataConfig,
    idcTuningDataS3URI,
    idcS3URI,
    idcDataAccessRoleARN,

    -- * JobExecutionSettings
    JobExecutionSettings (..),
    jobExecutionSettings,
    jesAllowDeferredExecution,
    jesDataAccessRoleARN,

    -- * LanguageModel
    LanguageModel (..),
    languageModel,
    lmLanguageCode,
    lmInputDataConfig,
    lmModelStatus,
    lmFailureReason,
    lmUpgradeAvailability,
    lmCreateTime,
    lmLastModifiedTime,
    lmModelName,
    lmBaseModelName,

    -- * Media
    Media (..),
    media,
    mMediaFileURI,

    -- * MedicalTranscript
    MedicalTranscript (..),
    medicalTranscript,
    mtTranscriptFileURI,

    -- * MedicalTranscriptionJob
    MedicalTranscriptionJob (..),
    medicalTranscriptionJob,
    mtjLanguageCode,
    mtjMediaFormat,
    mtjMedia,
    mtjCreationTime,
    mtjCompletionTime,
    mtjTranscript,
    mtjStartTime,
    mtjTranscriptionJobStatus,
    mtjSpecialty,
    mtjFailureReason,
    mtjMediaSampleRateHertz,
    mtjType,
    mtjMedicalTranscriptionJobName,
    mtjSettings,

    -- * MedicalTranscriptionJobSummary
    MedicalTranscriptionJobSummary (..),
    medicalTranscriptionJobSummary,
    mtjsLanguageCode,
    mtjsCreationTime,
    mtjsCompletionTime,
    mtjsStartTime,
    mtjsTranscriptionJobStatus,
    mtjsOutputLocationType,
    mtjsSpecialty,
    mtjsFailureReason,
    mtjsType,
    mtjsMedicalTranscriptionJobName,

    -- * MedicalTranscriptionSetting
    MedicalTranscriptionSetting (..),
    medicalTranscriptionSetting,
    mtsShowAlternatives,
    mtsChannelIdentification,
    mtsMaxAlternatives,
    mtsShowSpeakerLabels,
    mtsVocabularyName,
    mtsMaxSpeakerLabels,

    -- * ModelSettings
    ModelSettings (..),
    modelSettings,
    msLanguageModelName,

    -- * Settings
    Settings (..),
    settings,
    sVocabularyFilterMethod,
    sVocabularyFilterName,
    sShowAlternatives,
    sChannelIdentification,
    sMaxAlternatives,
    sShowSpeakerLabels,
    sVocabularyName,
    sMaxSpeakerLabels,

    -- * Transcript
    Transcript (..),
    transcript,
    tTranscriptFileURI,
    tRedactedTranscriptFileURI,

    -- * TranscriptionJob
    TranscriptionJob (..),
    transcriptionJob,
    tjLanguageCode,
    tjMediaFormat,
    tjContentRedaction,
    tjMedia,
    tjCreationTime,
    tjCompletionTime,
    tjTranscriptionJobName,
    tjTranscript,
    tjIdentifyLanguage,
    tjStartTime,
    tjTranscriptionJobStatus,
    tjModelSettings,
    tjIdentifiedLanguageScore,
    tjFailureReason,
    tjMediaSampleRateHertz,
    tjJobExecutionSettings,
    tjSettings,
    tjLanguageOptions,

    -- * TranscriptionJobSummary
    TranscriptionJobSummary (..),
    transcriptionJobSummary,
    tjsLanguageCode,
    tjsContentRedaction,
    tjsCreationTime,
    tjsCompletionTime,
    tjsTranscriptionJobName,
    tjsIdentifyLanguage,
    tjsStartTime,
    tjsTranscriptionJobStatus,
    tjsModelSettings,
    tjsOutputLocationType,
    tjsIdentifiedLanguageScore,
    tjsFailureReason,

    -- * VocabularyFilterInfo
    VocabularyFilterInfo (..),
    vocabularyFilterInfo,
    vfiLanguageCode,
    vfiVocabularyFilterName,
    vfiLastModifiedTime,

    -- * VocabularyInfo
    VocabularyInfo (..),
    vocabularyInfo,
    viLanguageCode,
    viLastModifiedTime,
    viVocabularyState,
    viVocabularyName,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Transcribe.Types.BaseModelName
import Network.AWS.Transcribe.Types.CLMLanguageCode
import Network.AWS.Transcribe.Types.ContentRedaction
import Network.AWS.Transcribe.Types.InputDataConfig
import Network.AWS.Transcribe.Types.JobExecutionSettings
import Network.AWS.Transcribe.Types.LanguageCode
import Network.AWS.Transcribe.Types.LanguageModel
import Network.AWS.Transcribe.Types.Media
import Network.AWS.Transcribe.Types.MediaFormat
import Network.AWS.Transcribe.Types.MedicalTranscript
import Network.AWS.Transcribe.Types.MedicalTranscriptionJob
import Network.AWS.Transcribe.Types.MedicalTranscriptionJobSummary
import Network.AWS.Transcribe.Types.MedicalTranscriptionSetting
import Network.AWS.Transcribe.Types.ModelSettings
import Network.AWS.Transcribe.Types.ModelStatus
import Network.AWS.Transcribe.Types.OutputLocationType
import Network.AWS.Transcribe.Types.RedactionOutput
import Network.AWS.Transcribe.Types.RedactionType
import Network.AWS.Transcribe.Types.Settings
import Network.AWS.Transcribe.Types.Specialty
import Network.AWS.Transcribe.Types.Transcript
import Network.AWS.Transcribe.Types.TranscriptionJob
import Network.AWS.Transcribe.Types.TranscriptionJobStatus
import Network.AWS.Transcribe.Types.TranscriptionJobSummary
import Network.AWS.Transcribe.Types.Type
import Network.AWS.Transcribe.Types.VocabularyFilterInfo
import Network.AWS.Transcribe.Types.VocabularyFilterMethod
import Network.AWS.Transcribe.Types.VocabularyInfo
import Network.AWS.Transcribe.Types.VocabularyState

-- | API version @2017-10-26@ of the Amazon Transcribe Service SDK configuration.
transcribe :: Service
transcribe =
  Service
    { _svcAbbrev = "Transcribe",
      _svcSigner = v4,
      _svcPrefix = "transcribe",
      _svcVersion = "2017-10-26",
      _svcEndpoint = defaultEndpoint transcribe,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Transcribe",
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

-- | We can't find the requested resource. Check the name and try your request again.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError transcribe "NotFoundException"

-- | Your request didn't pass one or more validation tests. For example, if the entity that you're trying to delete doesn't exist or if it is in a non-terminal state (for example, it's "in progress"). See the exception @Message@ field for more information.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError transcribe "BadRequestException"

-- | Either you have sent too many requests or your input file is too long. Wait before you resend your request, or use a smaller file and resend the request.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    transcribe
    "LimitExceededException"

-- | There is already a resource with that name.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError transcribe "ConflictException"

-- | There was an internal error. Check the error message and try your request again.
_InternalFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalFailureException =
  _MatchServiceError
    transcribe
    "InternalFailureException"
