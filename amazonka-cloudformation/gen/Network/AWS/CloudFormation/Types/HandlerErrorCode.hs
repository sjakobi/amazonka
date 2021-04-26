{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.HandlerErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.HandlerErrorCode
  ( HandlerErrorCode
      ( ..,
        HandlerErrorCodeAccessDenied,
        HandlerErrorCodeAlreadyExists,
        HandlerErrorCodeGeneralServiceException,
        HandlerErrorCodeInternalFailure,
        HandlerErrorCodeInvalidCredentials,
        HandlerErrorCodeInvalidRequest,
        HandlerErrorCodeNetworkFailure,
        HandlerErrorCodeNotFound,
        HandlerErrorCodeNotStabilized,
        HandlerErrorCodeNotUpdatable,
        HandlerErrorCodeResourceConflict,
        HandlerErrorCodeServiceInternalError,
        HandlerErrorCodeServiceLimitExceeded,
        HandlerErrorCodeThrottling
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HandlerErrorCode = HandlerErrorCode'
  { fromHandlerErrorCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern HandlerErrorCodeAccessDenied :: HandlerErrorCode
pattern HandlerErrorCodeAccessDenied = HandlerErrorCode' "AccessDenied"

pattern HandlerErrorCodeAlreadyExists :: HandlerErrorCode
pattern HandlerErrorCodeAlreadyExists = HandlerErrorCode' "AlreadyExists"

pattern HandlerErrorCodeGeneralServiceException :: HandlerErrorCode
pattern HandlerErrorCodeGeneralServiceException = HandlerErrorCode' "GeneralServiceException"

pattern HandlerErrorCodeInternalFailure :: HandlerErrorCode
pattern HandlerErrorCodeInternalFailure = HandlerErrorCode' "InternalFailure"

pattern HandlerErrorCodeInvalidCredentials :: HandlerErrorCode
pattern HandlerErrorCodeInvalidCredentials = HandlerErrorCode' "InvalidCredentials"

pattern HandlerErrorCodeInvalidRequest :: HandlerErrorCode
pattern HandlerErrorCodeInvalidRequest = HandlerErrorCode' "InvalidRequest"

pattern HandlerErrorCodeNetworkFailure :: HandlerErrorCode
pattern HandlerErrorCodeNetworkFailure = HandlerErrorCode' "NetworkFailure"

pattern HandlerErrorCodeNotFound :: HandlerErrorCode
pattern HandlerErrorCodeNotFound = HandlerErrorCode' "NotFound"

pattern HandlerErrorCodeNotStabilized :: HandlerErrorCode
pattern HandlerErrorCodeNotStabilized = HandlerErrorCode' "NotStabilized"

pattern HandlerErrorCodeNotUpdatable :: HandlerErrorCode
pattern HandlerErrorCodeNotUpdatable = HandlerErrorCode' "NotUpdatable"

pattern HandlerErrorCodeResourceConflict :: HandlerErrorCode
pattern HandlerErrorCodeResourceConflict = HandlerErrorCode' "ResourceConflict"

pattern HandlerErrorCodeServiceInternalError :: HandlerErrorCode
pattern HandlerErrorCodeServiceInternalError = HandlerErrorCode' "ServiceInternalError"

pattern HandlerErrorCodeServiceLimitExceeded :: HandlerErrorCode
pattern HandlerErrorCodeServiceLimitExceeded = HandlerErrorCode' "ServiceLimitExceeded"

pattern HandlerErrorCodeThrottling :: HandlerErrorCode
pattern HandlerErrorCodeThrottling = HandlerErrorCode' "Throttling"

{-# COMPLETE
  HandlerErrorCodeAccessDenied,
  HandlerErrorCodeAlreadyExists,
  HandlerErrorCodeGeneralServiceException,
  HandlerErrorCodeInternalFailure,
  HandlerErrorCodeInvalidCredentials,
  HandlerErrorCodeInvalidRequest,
  HandlerErrorCodeNetworkFailure,
  HandlerErrorCodeNotFound,
  HandlerErrorCodeNotStabilized,
  HandlerErrorCodeNotUpdatable,
  HandlerErrorCodeResourceConflict,
  HandlerErrorCodeServiceInternalError,
  HandlerErrorCodeServiceLimitExceeded,
  HandlerErrorCodeThrottling,
  HandlerErrorCode'
  #-}

instance Prelude.FromText HandlerErrorCode where
  parser = HandlerErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HandlerErrorCode where
  toText (HandlerErrorCode' x) = x

instance Prelude.Hashable HandlerErrorCode

instance Prelude.NFData HandlerErrorCode

instance Prelude.ToByteString HandlerErrorCode

instance Prelude.ToQuery HandlerErrorCode

instance Prelude.ToHeader HandlerErrorCode
