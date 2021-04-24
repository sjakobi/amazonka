{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.ConnectionErrorCodeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ConnectionErrorCodeType
  ( ConnectionErrorCodeType
      ( ..,
        ClusterNotFound,
        InsufficientCloudhsmHSMs,
        InternalError,
        InvalidCredentials,
        NetworkErrors,
        SubnetNotFound,
        UserLockedOut,
        UserLoggedIn,
        UserNotFound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionErrorCodeType
  = ConnectionErrorCodeType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ClusterNotFound :: ConnectionErrorCodeType
pattern ClusterNotFound = ConnectionErrorCodeType' "CLUSTER_NOT_FOUND"

pattern InsufficientCloudhsmHSMs :: ConnectionErrorCodeType
pattern InsufficientCloudhsmHSMs = ConnectionErrorCodeType' "INSUFFICIENT_CLOUDHSM_HSMS"

pattern InternalError :: ConnectionErrorCodeType
pattern InternalError = ConnectionErrorCodeType' "INTERNAL_ERROR"

pattern InvalidCredentials :: ConnectionErrorCodeType
pattern InvalidCredentials = ConnectionErrorCodeType' "INVALID_CREDENTIALS"

pattern NetworkErrors :: ConnectionErrorCodeType
pattern NetworkErrors = ConnectionErrorCodeType' "NETWORK_ERRORS"

pattern SubnetNotFound :: ConnectionErrorCodeType
pattern SubnetNotFound = ConnectionErrorCodeType' "SUBNET_NOT_FOUND"

pattern UserLockedOut :: ConnectionErrorCodeType
pattern UserLockedOut = ConnectionErrorCodeType' "USER_LOCKED_OUT"

pattern UserLoggedIn :: ConnectionErrorCodeType
pattern UserLoggedIn = ConnectionErrorCodeType' "USER_LOGGED_IN"

pattern UserNotFound :: ConnectionErrorCodeType
pattern UserNotFound = ConnectionErrorCodeType' "USER_NOT_FOUND"

{-# COMPLETE
  ClusterNotFound,
  InsufficientCloudhsmHSMs,
  InternalError,
  InvalidCredentials,
  NetworkErrors,
  SubnetNotFound,
  UserLockedOut,
  UserLoggedIn,
  UserNotFound,
  ConnectionErrorCodeType'
  #-}

instance FromText ConnectionErrorCodeType where
  parser = (ConnectionErrorCodeType' . mk) <$> takeText

instance ToText ConnectionErrorCodeType where
  toText (ConnectionErrorCodeType' ci) = original ci

instance Hashable ConnectionErrorCodeType

instance NFData ConnectionErrorCodeType

instance ToByteString ConnectionErrorCodeType

instance ToQuery ConnectionErrorCodeType

instance ToHeader ConnectionErrorCodeType

instance FromJSON ConnectionErrorCodeType where
  parseJSON = parseJSONText "ConnectionErrorCodeType"
