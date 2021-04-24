{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AccessDenied,
        AlreadyExists,
        GeneralServiceException,
        InternalFailure,
        InvalidCredentials,
        InvalidRequest,
        NetworkFailure,
        NotFound,
        NotStabilized,
        NotUpdatable,
        ResourceConflict,
        ServiceInternalError,
        ServiceLimitExceeded,
        Throttling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HandlerErrorCode = HandlerErrorCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AccessDenied :: HandlerErrorCode
pattern AccessDenied = HandlerErrorCode' "AccessDenied"

pattern AlreadyExists :: HandlerErrorCode
pattern AlreadyExists = HandlerErrorCode' "AlreadyExists"

pattern GeneralServiceException :: HandlerErrorCode
pattern GeneralServiceException = HandlerErrorCode' "GeneralServiceException"

pattern InternalFailure :: HandlerErrorCode
pattern InternalFailure = HandlerErrorCode' "InternalFailure"

pattern InvalidCredentials :: HandlerErrorCode
pattern InvalidCredentials = HandlerErrorCode' "InvalidCredentials"

pattern InvalidRequest :: HandlerErrorCode
pattern InvalidRequest = HandlerErrorCode' "InvalidRequest"

pattern NetworkFailure :: HandlerErrorCode
pattern NetworkFailure = HandlerErrorCode' "NetworkFailure"

pattern NotFound :: HandlerErrorCode
pattern NotFound = HandlerErrorCode' "NotFound"

pattern NotStabilized :: HandlerErrorCode
pattern NotStabilized = HandlerErrorCode' "NotStabilized"

pattern NotUpdatable :: HandlerErrorCode
pattern NotUpdatable = HandlerErrorCode' "NotUpdatable"

pattern ResourceConflict :: HandlerErrorCode
pattern ResourceConflict = HandlerErrorCode' "ResourceConflict"

pattern ServiceInternalError :: HandlerErrorCode
pattern ServiceInternalError = HandlerErrorCode' "ServiceInternalError"

pattern ServiceLimitExceeded :: HandlerErrorCode
pattern ServiceLimitExceeded = HandlerErrorCode' "ServiceLimitExceeded"

pattern Throttling :: HandlerErrorCode
pattern Throttling = HandlerErrorCode' "Throttling"

{-# COMPLETE
  AccessDenied,
  AlreadyExists,
  GeneralServiceException,
  InternalFailure,
  InvalidCredentials,
  InvalidRequest,
  NetworkFailure,
  NotFound,
  NotStabilized,
  NotUpdatable,
  ResourceConflict,
  ServiceInternalError,
  ServiceLimitExceeded,
  Throttling,
  HandlerErrorCode'
  #-}

instance FromText HandlerErrorCode where
  parser = (HandlerErrorCode' . mk) <$> takeText

instance ToText HandlerErrorCode where
  toText (HandlerErrorCode' ci) = original ci

instance Hashable HandlerErrorCode

instance NFData HandlerErrorCode

instance ToByteString HandlerErrorCode

instance ToQuery HandlerErrorCode

instance ToHeader HandlerErrorCode
