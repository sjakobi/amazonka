{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.BounceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.BounceType
  ( BounceType
      ( ..,
        BTContentRejected,
        BTDoesNotExist,
        BTExceededQuota,
        BTMessageTooLarge,
        BTTemporaryFailure,
        BTUndefined
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BounceType = BounceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BTContentRejected :: BounceType
pattern BTContentRejected = BounceType' "ContentRejected"

pattern BTDoesNotExist :: BounceType
pattern BTDoesNotExist = BounceType' "DoesNotExist"

pattern BTExceededQuota :: BounceType
pattern BTExceededQuota = BounceType' "ExceededQuota"

pattern BTMessageTooLarge :: BounceType
pattern BTMessageTooLarge = BounceType' "MessageTooLarge"

pattern BTTemporaryFailure :: BounceType
pattern BTTemporaryFailure = BounceType' "TemporaryFailure"

pattern BTUndefined :: BounceType
pattern BTUndefined = BounceType' "Undefined"

{-# COMPLETE
  BTContentRejected,
  BTDoesNotExist,
  BTExceededQuota,
  BTMessageTooLarge,
  BTTemporaryFailure,
  BTUndefined,
  BounceType'
  #-}

instance FromText BounceType where
  parser = (BounceType' . mk) <$> takeText

instance ToText BounceType where
  toText (BounceType' ci) = original ci

instance Hashable BounceType

instance NFData BounceType

instance ToByteString BounceType

instance ToQuery BounceType

instance ToHeader BounceType
