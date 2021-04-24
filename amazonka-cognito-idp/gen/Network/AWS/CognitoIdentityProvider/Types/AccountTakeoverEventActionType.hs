{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverEventActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AccountTakeoverEventActionType
  ( AccountTakeoverEventActionType
      ( ..,
        ATEATBlock,
        ATEATMFAIfConfigured,
        ATEATMFARequired,
        ATEATNoAction
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccountTakeoverEventActionType
  = AccountTakeoverEventActionType'
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

pattern ATEATBlock :: AccountTakeoverEventActionType
pattern ATEATBlock = AccountTakeoverEventActionType' "BLOCK"

pattern ATEATMFAIfConfigured :: AccountTakeoverEventActionType
pattern ATEATMFAIfConfigured = AccountTakeoverEventActionType' "MFA_IF_CONFIGURED"

pattern ATEATMFARequired :: AccountTakeoverEventActionType
pattern ATEATMFARequired = AccountTakeoverEventActionType' "MFA_REQUIRED"

pattern ATEATNoAction :: AccountTakeoverEventActionType
pattern ATEATNoAction = AccountTakeoverEventActionType' "NO_ACTION"

{-# COMPLETE
  ATEATBlock,
  ATEATMFAIfConfigured,
  ATEATMFARequired,
  ATEATNoAction,
  AccountTakeoverEventActionType'
  #-}

instance FromText AccountTakeoverEventActionType where
  parser = (AccountTakeoverEventActionType' . mk) <$> takeText

instance ToText AccountTakeoverEventActionType where
  toText (AccountTakeoverEventActionType' ci) = original ci

instance Hashable AccountTakeoverEventActionType

instance NFData AccountTakeoverEventActionType

instance ToByteString AccountTakeoverEventActionType

instance ToQuery AccountTakeoverEventActionType

instance ToHeader AccountTakeoverEventActionType

instance ToJSON AccountTakeoverEventActionType where
  toJSON = toJSONText

instance FromJSON AccountTakeoverEventActionType where
  parseJSON = parseJSONText "AccountTakeoverEventActionType"
