{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.SessionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.SessionFilterKey
  ( SessionFilterKey
      ( ..,
        SFKInvokedAfter,
        SFKInvokedBefore,
        SFKOwner,
        SFKSessionId,
        SFKStatus,
        SFKTarget
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SessionFilterKey = SessionFilterKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SFKInvokedAfter :: SessionFilterKey
pattern SFKInvokedAfter = SessionFilterKey' "InvokedAfter"

pattern SFKInvokedBefore :: SessionFilterKey
pattern SFKInvokedBefore = SessionFilterKey' "InvokedBefore"

pattern SFKOwner :: SessionFilterKey
pattern SFKOwner = SessionFilterKey' "Owner"

pattern SFKSessionId :: SessionFilterKey
pattern SFKSessionId = SessionFilterKey' "SessionId"

pattern SFKStatus :: SessionFilterKey
pattern SFKStatus = SessionFilterKey' "Status"

pattern SFKTarget :: SessionFilterKey
pattern SFKTarget = SessionFilterKey' "Target"

{-# COMPLETE
  SFKInvokedAfter,
  SFKInvokedBefore,
  SFKOwner,
  SFKSessionId,
  SFKStatus,
  SFKTarget,
  SessionFilterKey'
  #-}

instance FromText SessionFilterKey where
  parser = (SessionFilterKey' . mk) <$> takeText

instance ToText SessionFilterKey where
  toText (SessionFilterKey' ci) = original ci

instance Hashable SessionFilterKey

instance NFData SessionFilterKey

instance ToByteString SessionFilterKey

instance ToQuery SessionFilterKey

instance ToHeader SessionFilterKey

instance ToJSON SessionFilterKey where
  toJSON = toJSONText
