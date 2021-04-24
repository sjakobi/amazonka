{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.ReplicaMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ReplicaMode
  ( ReplicaMode
      ( ..,
        Mounted,
        OpenReadOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReplicaMode = ReplicaMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Mounted :: ReplicaMode
pattern Mounted = ReplicaMode' "mounted"

pattern OpenReadOnly :: ReplicaMode
pattern OpenReadOnly = ReplicaMode' "open-read-only"

{-# COMPLETE
  Mounted,
  OpenReadOnly,
  ReplicaMode'
  #-}

instance FromText ReplicaMode where
  parser = (ReplicaMode' . mk) <$> takeText

instance ToText ReplicaMode where
  toText (ReplicaMode' ci) = original ci

instance Hashable ReplicaMode

instance NFData ReplicaMode

instance ToByteString ReplicaMode

instance ToQuery ReplicaMode

instance ToHeader ReplicaMode

instance FromXML ReplicaMode where
  parseXML = parseXMLText "ReplicaMode"
