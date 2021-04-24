{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.BGPStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BGPStatus
  ( BGPStatus
      ( ..,
        Down,
        UP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data BGPStatus = BGPStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Down :: BGPStatus
pattern Down = BGPStatus' "down"

pattern UP :: BGPStatus
pattern UP = BGPStatus' "up"

{-# COMPLETE
  Down,
  UP,
  BGPStatus'
  #-}

instance FromText BGPStatus where
  parser = (BGPStatus' . mk) <$> takeText

instance ToText BGPStatus where
  toText (BGPStatus' ci) = original ci

instance Hashable BGPStatus

instance NFData BGPStatus

instance ToByteString BGPStatus

instance ToQuery BGPStatus

instance ToHeader BGPStatus

instance FromXML BGPStatus where
  parseXML = parseXMLText "BGPStatus"
