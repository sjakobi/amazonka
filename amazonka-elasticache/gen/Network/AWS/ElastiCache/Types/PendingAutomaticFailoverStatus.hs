{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus
  ( PendingAutomaticFailoverStatus
      ( ..,
        PAFSDisabled,
        PAFSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PendingAutomaticFailoverStatus
  = PendingAutomaticFailoverStatus'
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

pattern PAFSDisabled :: PendingAutomaticFailoverStatus
pattern PAFSDisabled = PendingAutomaticFailoverStatus' "disabled"

pattern PAFSEnabled :: PendingAutomaticFailoverStatus
pattern PAFSEnabled = PendingAutomaticFailoverStatus' "enabled"

{-# COMPLETE
  PAFSDisabled,
  PAFSEnabled,
  PendingAutomaticFailoverStatus'
  #-}

instance FromText PendingAutomaticFailoverStatus where
  parser = (PendingAutomaticFailoverStatus' . mk) <$> takeText

instance ToText PendingAutomaticFailoverStatus where
  toText (PendingAutomaticFailoverStatus' ci) = original ci

instance Hashable PendingAutomaticFailoverStatus

instance NFData PendingAutomaticFailoverStatus

instance ToByteString PendingAutomaticFailoverStatus

instance ToQuery PendingAutomaticFailoverStatus

instance ToHeader PendingAutomaticFailoverStatus

instance FromXML PendingAutomaticFailoverStatus where
  parseXML = parseXMLText "PendingAutomaticFailoverStatus"
