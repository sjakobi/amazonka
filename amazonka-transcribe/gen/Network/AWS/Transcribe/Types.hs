{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newContentRedaction,

    -- * InputDataConfig
    InputDataConfig (..),
    newInputDataConfig,

    -- * JobExecutionSettings
    JobExecutionSettings (..),
    newJobExecutionSettings,

    -- * LanguageModel
    LanguageModel (..),
    newLanguageModel,

    -- * Media
    Media (..),
    newMedia,

    -- * MedicalTranscript
    MedicalTranscript (..),
    newMedicalTranscript,

    -- * MedicalTranscriptionJob
    MedicalTranscriptionJob (..),
    newMedicalTranscriptionJob,

    -- * MedicalTranscriptionJobSummary
    MedicalTranscriptionJobSummary (..),
    newMedicalTranscriptionJobSummary,

    -- * MedicalTranscriptionSetting
    MedicalTranscriptionSetting (..),
    newMedicalTranscriptionSetting,

    -- * ModelSettings
    ModelSettings (..),
    newModelSettings,

    -- * Settings
    Settings (..),
    newSettings,

    -- * Transcript
    Transcript (..),
    newTranscript,

    -- * TranscriptionJob
    TranscriptionJob (..),
    newTranscriptionJob,

    -- * TranscriptionJobSummary
    TranscriptionJobSummary (..),
    newTranscriptionJobSummary,

    -- * VocabularyFilterInfo
    VocabularyFilterInfo (..),
    newVocabularyFilterInfo,

    -- * VocabularyInfo
    VocabularyInfo (..),
    newVocabularyInfo,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign
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
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Transcribe",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "transcribe",
      Prelude._svcVersion = "2017-10-26",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "Transcribe",
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

-- | We can\'t find the requested resource. Check the name and try your
-- request again.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"

-- | Your request didn\'t pass one or more validation tests. For example, if
-- the entity that you\'re trying to delete doesn\'t exist or if it is in a
-- non-terminal state (for example, it\'s \"in progress\"). See the
-- exception @Message@ field for more information.
_BadRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BadRequestException =
  Prelude._MatchServiceError
    defaultService
    "BadRequestException"

-- | Either you have sent too many requests or your input file is too long.
-- Wait before you resend your request, or use a smaller file and resend
-- the request.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | There is already a resource with that name.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"

-- | There was an internal error. Check the error message and try your
-- request again.
_InternalFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalFailureException =
  Prelude._MatchServiceError
    defaultService
    "InternalFailureException"
