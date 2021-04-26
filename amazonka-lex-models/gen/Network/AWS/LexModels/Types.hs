{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _ResourceInUseException,
    _LimitExceededException,
    _ConflictException,
    _InternalFailureException,
    _PreconditionFailedException,

    -- * ChannelStatus
    ChannelStatus (..),

    -- * ChannelType
    ChannelType (..),

    -- * ContentType
    ContentType (..),

    -- * Destination
    Destination (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * ExportType
    ExportType (..),

    -- * FulfillmentActivityType
    FulfillmentActivityType (..),

    -- * ImportStatus
    ImportStatus (..),

    -- * LexStatus
    LexStatus (..),

    -- * Locale
    Locale (..),

    -- * LogType
    LogType (..),

    -- * MergeStrategy
    MergeStrategy (..),

    -- * ObfuscationSetting
    ObfuscationSetting (..),

    -- * ProcessBehavior
    ProcessBehavior (..),

    -- * ResourceType
    ResourceType (..),

    -- * SlotConstraint
    SlotConstraint (..),

    -- * SlotValueSelectionStrategy
    SlotValueSelectionStrategy (..),

    -- * StatusType
    StatusType (..),

    -- * BotAliasMetadata
    BotAliasMetadata (..),
    newBotAliasMetadata,

    -- * BotChannelAssociation
    BotChannelAssociation (..),
    newBotChannelAssociation,

    -- * BotMetadata
    BotMetadata (..),
    newBotMetadata,

    -- * BuiltinIntentMetadata
    BuiltinIntentMetadata (..),
    newBuiltinIntentMetadata,

    -- * BuiltinIntentSlot
    BuiltinIntentSlot (..),
    newBuiltinIntentSlot,

    -- * BuiltinSlotTypeMetadata
    BuiltinSlotTypeMetadata (..),
    newBuiltinSlotTypeMetadata,

    -- * CodeHook
    CodeHook (..),
    newCodeHook,

    -- * ConversationLogsRequest
    ConversationLogsRequest (..),
    newConversationLogsRequest,

    -- * ConversationLogsResponse
    ConversationLogsResponse (..),
    newConversationLogsResponse,

    -- * EnumerationValue
    EnumerationValue (..),
    newEnumerationValue,

    -- * FollowUpPrompt
    FollowUpPrompt (..),
    newFollowUpPrompt,

    -- * FulfillmentActivity
    FulfillmentActivity (..),
    newFulfillmentActivity,

    -- * InputContext
    InputContext (..),
    newInputContext,

    -- * Intent
    Intent (..),
    newIntent,

    -- * IntentMetadata
    IntentMetadata (..),
    newIntentMetadata,

    -- * KendraConfiguration
    KendraConfiguration (..),
    newKendraConfiguration,

    -- * LogSettingsRequest
    LogSettingsRequest (..),
    newLogSettingsRequest,

    -- * LogSettingsResponse
    LogSettingsResponse (..),
    newLogSettingsResponse,

    -- * Message
    Message (..),
    newMessage,

    -- * OutputContext
    OutputContext (..),
    newOutputContext,

    -- * Prompt
    Prompt (..),
    newPrompt,

    -- * Slot
    Slot (..),
    newSlot,

    -- * SlotDefaultValue
    SlotDefaultValue (..),
    newSlotDefaultValue,

    -- * SlotDefaultValueSpec
    SlotDefaultValueSpec (..),
    newSlotDefaultValueSpec,

    -- * SlotTypeConfiguration
    SlotTypeConfiguration (..),
    newSlotTypeConfiguration,

    -- * SlotTypeMetadata
    SlotTypeMetadata (..),
    newSlotTypeMetadata,

    -- * SlotTypeRegexConfiguration
    SlotTypeRegexConfiguration (..),
    newSlotTypeRegexConfiguration,

    -- * Statement
    Statement (..),
    newStatement,

    -- * Tag
    Tag (..),
    newTag,

    -- * UtteranceData
    UtteranceData (..),
    newUtteranceData,

    -- * UtteranceList
    UtteranceList (..),
    newUtteranceList,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types.BotAliasMetadata
import Network.AWS.LexModels.Types.BotChannelAssociation
import Network.AWS.LexModels.Types.BotMetadata
import Network.AWS.LexModels.Types.BuiltinIntentMetadata
import Network.AWS.LexModels.Types.BuiltinIntentSlot
import Network.AWS.LexModels.Types.BuiltinSlotTypeMetadata
import Network.AWS.LexModels.Types.ChannelStatus
import Network.AWS.LexModels.Types.ChannelType
import Network.AWS.LexModels.Types.CodeHook
import Network.AWS.LexModels.Types.ContentType
import Network.AWS.LexModels.Types.ConversationLogsRequest
import Network.AWS.LexModels.Types.ConversationLogsResponse
import Network.AWS.LexModels.Types.Destination
import Network.AWS.LexModels.Types.EnumerationValue
import Network.AWS.LexModels.Types.ExportStatus
import Network.AWS.LexModels.Types.ExportType
import Network.AWS.LexModels.Types.FollowUpPrompt
import Network.AWS.LexModels.Types.FulfillmentActivity
import Network.AWS.LexModels.Types.FulfillmentActivityType
import Network.AWS.LexModels.Types.ImportStatus
import Network.AWS.LexModels.Types.InputContext
import Network.AWS.LexModels.Types.Intent
import Network.AWS.LexModels.Types.IntentMetadata
import Network.AWS.LexModels.Types.KendraConfiguration
import Network.AWS.LexModels.Types.LexStatus
import Network.AWS.LexModels.Types.Locale
import Network.AWS.LexModels.Types.LogSettingsRequest
import Network.AWS.LexModels.Types.LogSettingsResponse
import Network.AWS.LexModels.Types.LogType
import Network.AWS.LexModels.Types.MergeStrategy
import Network.AWS.LexModels.Types.Message
import Network.AWS.LexModels.Types.ObfuscationSetting
import Network.AWS.LexModels.Types.OutputContext
import Network.AWS.LexModels.Types.ProcessBehavior
import Network.AWS.LexModels.Types.Prompt
import Network.AWS.LexModels.Types.ResourceType
import Network.AWS.LexModels.Types.Slot
import Network.AWS.LexModels.Types.SlotConstraint
import Network.AWS.LexModels.Types.SlotDefaultValue
import Network.AWS.LexModels.Types.SlotDefaultValueSpec
import Network.AWS.LexModels.Types.SlotTypeConfiguration
import Network.AWS.LexModels.Types.SlotTypeMetadata
import Network.AWS.LexModels.Types.SlotTypeRegexConfiguration
import Network.AWS.LexModels.Types.SlotValueSelectionStrategy
import Network.AWS.LexModels.Types.Statement
import Network.AWS.LexModels.Types.StatusType
import Network.AWS.LexModels.Types.Tag
import Network.AWS.LexModels.Types.UtteranceData
import Network.AWS.LexModels.Types.UtteranceList
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-04-19@ of the Amazon Lex Model Building Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "LexModels",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "models.lex",
      Prelude._svcVersion = "2017-04-19",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "LexModels",
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

-- | The resource specified in the request was not found. Check the resource
-- and try again.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | The request is not well formed. For example, a value is invalid or a
-- required field is missing. Check the field values, and try again.
_BadRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BadRequestException =
  Prelude._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Prelude.hasStatus 400

-- | The resource that you are attempting to delete is referred to by another
-- resource. Use this information to remove references to the resource that
-- you are trying to delete.
--
-- The body of the exception contains a JSON object that describes the
-- resource.
--
-- @{ \"resourceType\": BOT | BOTALIAS | BOTCHANNEL | INTENT,@
--
-- @\"resourceReference\": {@
--
-- @\"name\": string, \"version\": string } }@
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"
    Prelude.. Prelude.hasStatus 400

-- | The request exceeded a limit. Try your request again.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 429

-- | There was a conflict processing the request. Try your request again.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Prelude.hasStatus 409

-- | An internal Amazon Lex error occurred. Try your request again.
_InternalFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalFailureException =
  Prelude._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Prelude.hasStatus 500

-- | The checksum of the resource that you are trying to change does not
-- match the checksum in the request. Check the resource\'s checksum and
-- try again.
_PreconditionFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PreconditionFailedException =
  Prelude._MatchServiceError
    defaultService
    "PreconditionFailedException"
    Prelude.. Prelude.hasStatus 412
