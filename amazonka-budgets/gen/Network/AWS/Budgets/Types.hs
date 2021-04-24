{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types
  ( -- * Service Configuration
    budgets,

    -- * Errors
    _ResourceLockedException,
    _NotFoundException,
    _ExpiredNextTokenException,
    _InternalErrorException,
    _DuplicateRecordException,
    _InvalidNextTokenException,
    _InvalidParameterException,
    _AccessDeniedException,
    _CreationLimitExceededException,

    -- * ActionStatus
    ActionStatus (..),

    -- * ActionSubType
    ActionSubType (..),

    -- * ActionType
    ActionType (..),

    -- * ApprovalModel
    ApprovalModel (..),

    -- * BudgetType
    BudgetType (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * EventType
    EventType (..),

    -- * ExecutionType
    ExecutionType (..),

    -- * NotificationState
    NotificationState (..),

    -- * NotificationType
    NotificationType (..),

    -- * SubscriptionType
    SubscriptionType (..),

    -- * ThresholdType
    ThresholdType (..),

    -- * TimeUnit
    TimeUnit (..),

    -- * Action
    Action (..),
    action,
    aActionId,
    aBudgetName,
    aNotificationType,
    aActionType,
    aActionThreshold,
    aDefinition,
    aExecutionRoleARN,
    aApprovalModel,
    aStatus,
    aSubscribers,

    -- * ActionHistory
    ActionHistory (..),
    actionHistory,
    ahTimestamp,
    ahStatus,
    ahEventType,
    ahActionHistoryDetails,

    -- * ActionHistoryDetails
    ActionHistoryDetails (..),
    actionHistoryDetails,
    ahdMessage,
    ahdAction,

    -- * ActionThreshold
    ActionThreshold (..),
    actionThreshold,
    atActionThresholdValue,
    atActionThresholdType,

    -- * Budget
    Budget (..),
    budget,
    bCostFilters,
    bTimePeriod,
    bCostTypes,
    bPlannedBudgetLimits,
    bCalculatedSpend,
    bBudgetLimit,
    bLastUpdatedTime,
    bBudgetName,
    bTimeUnit,
    bBudgetType,

    -- * BudgetPerformanceHistory
    BudgetPerformanceHistory (..),
    budgetPerformanceHistory,
    bphBudgetedAndActualAmountsList,
    bphTimeUnit,
    bphCostFilters,
    bphCostTypes,
    bphBudgetType,
    bphBudgetName,

    -- * BudgetedAndActualAmounts
    BudgetedAndActualAmounts (..),
    budgetedAndActualAmounts,
    baaaTimePeriod,
    baaaBudgetedAmount,
    baaaActualAmount,

    -- * CalculatedSpend
    CalculatedSpend (..),
    calculatedSpend,
    csForecastedSpend,
    csActualSpend,

    -- * CostTypes
    CostTypes (..),
    costTypes,
    ctIncludeSubscription,
    ctUseAmortized,
    ctIncludeCredit,
    ctUseBlended,
    ctIncludeSupport,
    ctIncludeRefund,
    ctIncludeTax,
    ctIncludeDiscount,
    ctIncludeOtherSubscription,
    ctIncludeUpfront,
    ctIncludeRecurring,

    -- * Definition
    Definition (..),
    definition,
    dIAMActionDefinition,
    dSsmActionDefinition,
    dScpActionDefinition,

    -- * IAMActionDefinition
    IAMActionDefinition (..),
    iamActionDefinition,
    iadGroups,
    iadRoles,
    iadUsers,
    iadPolicyARN,

    -- * Notification
    Notification (..),
    notification,
    nNotificationState,
    nThresholdType,
    nNotificationType,
    nComparisonOperator,
    nThreshold,

    -- * NotificationWithSubscribers
    NotificationWithSubscribers (..),
    notificationWithSubscribers,
    nwsNotification,
    nwsSubscribers,

    -- * ScpActionDefinition
    ScpActionDefinition (..),
    scpActionDefinition,
    sadPolicyId,
    sadTargetIds,

    -- * Spend
    Spend (..),
    spend,
    sAmount,
    sUnit,

    -- * SsmActionDefinition
    SsmActionDefinition (..),
    ssmActionDefinition,
    sadActionSubType,
    sadRegion,
    sadInstanceIds,

    -- * Subscriber
    Subscriber (..),
    subscriber,
    sSubscriptionType,
    sAddress,

    -- * TimePeriod
    TimePeriod (..),
    timePeriod,
    tpEnd,
    tpStart,
  )
where

import Network.AWS.Budgets.Types.Action
import Network.AWS.Budgets.Types.ActionHistory
import Network.AWS.Budgets.Types.ActionHistoryDetails
import Network.AWS.Budgets.Types.ActionStatus
import Network.AWS.Budgets.Types.ActionSubType
import Network.AWS.Budgets.Types.ActionThreshold
import Network.AWS.Budgets.Types.ActionType
import Network.AWS.Budgets.Types.ApprovalModel
import Network.AWS.Budgets.Types.Budget
import Network.AWS.Budgets.Types.BudgetPerformanceHistory
import Network.AWS.Budgets.Types.BudgetType
import Network.AWS.Budgets.Types.BudgetedAndActualAmounts
import Network.AWS.Budgets.Types.CalculatedSpend
import Network.AWS.Budgets.Types.ComparisonOperator
import Network.AWS.Budgets.Types.CostTypes
import Network.AWS.Budgets.Types.Definition
import Network.AWS.Budgets.Types.EventType
import Network.AWS.Budgets.Types.ExecutionType
import Network.AWS.Budgets.Types.IAMActionDefinition
import Network.AWS.Budgets.Types.Notification
import Network.AWS.Budgets.Types.NotificationState
import Network.AWS.Budgets.Types.NotificationType
import Network.AWS.Budgets.Types.NotificationWithSubscribers
import Network.AWS.Budgets.Types.ScpActionDefinition
import Network.AWS.Budgets.Types.Spend
import Network.AWS.Budgets.Types.SsmActionDefinition
import Network.AWS.Budgets.Types.Subscriber
import Network.AWS.Budgets.Types.SubscriptionType
import Network.AWS.Budgets.Types.ThresholdType
import Network.AWS.Budgets.Types.TimePeriod
import Network.AWS.Budgets.Types.TimeUnit
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-10-20@ of the Amazon Budgets SDK configuration.
budgets :: Service
budgets =
  Service
    { _svcAbbrev = "Budgets",
      _svcSigner = v4,
      _svcPrefix = "budgets",
      _svcVersion = "2016-10-20",
      _svcEndpoint = defaultEndpoint budgets,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Budgets",
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

-- | The request was received and recognized by the server, but the server rejected that particular method for the requested resource.
_ResourceLockedException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLockedException =
  _MatchServiceError
    budgets
    "ResourceLockedException"

-- | We can’t locate the resource that you specified.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError budgets "NotFoundException"

-- | The pagination token expired.
_ExpiredNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_ExpiredNextTokenException =
  _MatchServiceError
    budgets
    "ExpiredNextTokenException"

-- | An error on the server occurred during the processing of your request. Try again later.
_InternalErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalErrorException =
  _MatchServiceError budgets "InternalErrorException"

-- | The budget name already exists. Budget names must be unique within an account.
_DuplicateRecordException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateRecordException =
  _MatchServiceError
    budgets
    "DuplicateRecordException"

-- | The pagination token is invalid.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    budgets
    "InvalidNextTokenException"

-- | An error on the client occurred. Typically, the cause is an invalid input value.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    budgets
    "InvalidParameterException"

-- | You are not authorized to use this operation with the given parameters.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError budgets "AccessDeniedException"

-- | You've exceeded the notification or subscriber limit.
_CreationLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_CreationLimitExceededException =
  _MatchServiceError
    budgets
    "CreationLimitExceededException"
