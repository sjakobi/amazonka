{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.MFADeleteStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.MFADeleteStatus
  ( MFADeleteStatus
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data MFADeleteStatus = MFADeleteStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: MFADeleteStatus
pattern Disabled = MFADeleteStatus' "Disabled"

pattern Enabled :: MFADeleteStatus
pattern Enabled = MFADeleteStatus' "Enabled"

{-# COMPLETE
  Disabled,
  Enabled,
  MFADeleteStatus'
  #-}

instance FromText MFADeleteStatus where
  parser = (MFADeleteStatus' . mk) <$> takeText

instance ToText MFADeleteStatus where
  toText (MFADeleteStatus' ci) = original ci

instance Hashable MFADeleteStatus

instance NFData MFADeleteStatus

instance ToByteString MFADeleteStatus

instance ToQuery MFADeleteStatus

instance ToHeader MFADeleteStatus

instance FromXML MFADeleteStatus where
  parseXML = parseXMLText "MFADeleteStatus"
