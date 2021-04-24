{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.DetectorStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DetectorStatus
  ( DetectorStatus
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DetectorStatus = DetectorStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: DetectorStatus
pattern Disabled = DetectorStatus' "DISABLED"

pattern Enabled :: DetectorStatus
pattern Enabled = DetectorStatus' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  DetectorStatus'
  #-}

instance FromText DetectorStatus where
  parser = (DetectorStatus' . mk) <$> takeText

instance ToText DetectorStatus where
  toText (DetectorStatus' ci) = original ci

instance Hashable DetectorStatus

instance NFData DetectorStatus

instance ToByteString DetectorStatus

instance ToQuery DetectorStatus

instance ToHeader DetectorStatus

instance FromJSON DetectorStatus where
  parseJSON = parseJSONText "DetectorStatus"
