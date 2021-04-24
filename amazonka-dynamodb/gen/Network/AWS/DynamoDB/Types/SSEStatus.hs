{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.SSEStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SSEStatus
  ( SSEStatus
      ( ..,
        SSESDisabled,
        SSESDisabling,
        SSESEnabled,
        SSESEnabling,
        SSESUpdating
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

pattern SSESDisabled :: SSEStatus
pattern SSESDisabled = SSEStatus' "DISABLED"

pattern SSESDisabling :: SSEStatus
pattern SSESDisabling = SSEStatus' "DISABLING"

pattern SSESEnabled :: SSEStatus
pattern SSESEnabled = SSEStatus' "ENABLED"

pattern SSESEnabling :: SSEStatus
pattern SSESEnabling = SSEStatus' "ENABLING"

pattern SSESUpdating :: SSEStatus
pattern SSESUpdating = SSEStatus' "UPDATING"

{-# COMPLETE
  SSESDisabled,
  SSESDisabling,
  SSESEnabled,
  SSESEnabling,
  SSESUpdating,
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
