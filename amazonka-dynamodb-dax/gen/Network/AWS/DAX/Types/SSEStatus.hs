{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.SSEStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.SSEStatus
  ( SSEStatus
      ( ..,
        Disabled,
        Disabling,
        Enabled,
        Enabling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SSEStatus = SSEStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: SSEStatus
pattern Disabled = SSEStatus' "DISABLED"

pattern Disabling :: SSEStatus
pattern Disabling = SSEStatus' "DISABLING"

pattern Enabled :: SSEStatus
pattern Enabled = SSEStatus' "ENABLED"

pattern Enabling :: SSEStatus
pattern Enabling = SSEStatus' "ENABLING"

{-# COMPLETE
  Disabled,
  Disabling,
  Enabled,
  Enabling,
  SSEStatus'
  #-}

instance FromText SSEStatus where
  parser = (SSEStatus' . mk) <$> takeText

instance ToText SSEStatus where
  toText (SSEStatus' ci) = original ci

instance Hashable SSEStatus

instance NFData SSEStatus

instance ToByteString SSEStatus

instance ToQuery SSEStatus

instance ToHeader SSEStatus

instance FromJSON SSEStatus where
  parseJSON = parseJSONText "SSEStatus"
