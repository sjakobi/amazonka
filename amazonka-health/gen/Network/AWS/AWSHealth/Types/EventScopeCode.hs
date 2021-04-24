{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventScopeCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventScopeCode
  ( EventScopeCode
      ( ..,
        AccountSpecific,
        None,
        Public
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventScopeCode = EventScopeCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AccountSpecific :: EventScopeCode
pattern AccountSpecific = EventScopeCode' "ACCOUNT_SPECIFIC"

pattern None :: EventScopeCode
pattern None = EventScopeCode' "NONE"

pattern Public :: EventScopeCode
pattern Public = EventScopeCode' "PUBLIC"

{-# COMPLETE
  AccountSpecific,
  None,
  Public,
  EventScopeCode'
  #-}

instance FromText EventScopeCode where
  parser = (EventScopeCode' . mk) <$> takeText

instance ToText EventScopeCode where
  toText (EventScopeCode' ci) = original ci

instance Hashable EventScopeCode

instance NFData EventScopeCode

instance ToByteString EventScopeCode

instance ToQuery EventScopeCode

instance ToHeader EventScopeCode

instance FromJSON EventScopeCode where
  parseJSON = parseJSONText "EventScopeCode"
