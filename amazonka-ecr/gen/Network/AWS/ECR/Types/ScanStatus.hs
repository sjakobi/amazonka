{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ScanStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ScanStatus
  ( ScanStatus
      ( ..,
        SSComplete,
        SSFailed,
        SSInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScanStatus = ScanStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSComplete :: ScanStatus
pattern SSComplete = ScanStatus' "COMPLETE"

pattern SSFailed :: ScanStatus
pattern SSFailed = ScanStatus' "FAILED"

pattern SSInProgress :: ScanStatus
pattern SSInProgress = ScanStatus' "IN_PROGRESS"

{-# COMPLETE
  SSComplete,
  SSFailed,
  SSInProgress,
  ScanStatus'
  #-}

instance FromText ScanStatus where
  parser = (ScanStatus' . mk) <$> takeText

instance ToText ScanStatus where
  toText (ScanStatus' ci) = original ci

instance Hashable ScanStatus

instance NFData ScanStatus

instance ToByteString ScanStatus

instance ToQuery ScanStatus

instance ToHeader ScanStatus

instance FromJSON ScanStatus where
  parseJSON = parseJSONText "ScanStatus"
