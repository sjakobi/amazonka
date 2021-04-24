{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotInstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotInstanceState
  ( SpotInstanceState
      ( ..,
        SISActive,
        SISCancelled,
        SISClosed,
        SISFailed,
        SISOpen
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SpotInstanceState = SpotInstanceState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SISActive :: SpotInstanceState
pattern SISActive = SpotInstanceState' "active"

pattern SISCancelled :: SpotInstanceState
pattern SISCancelled = SpotInstanceState' "cancelled"

pattern SISClosed :: SpotInstanceState
pattern SISClosed = SpotInstanceState' "closed"

pattern SISFailed :: SpotInstanceState
pattern SISFailed = SpotInstanceState' "failed"

pattern SISOpen :: SpotInstanceState
pattern SISOpen = SpotInstanceState' "open"

{-# COMPLETE
  SISActive,
  SISCancelled,
  SISClosed,
  SISFailed,
  SISOpen,
  SpotInstanceState'
  #-}

instance FromText SpotInstanceState where
  parser = (SpotInstanceState' . mk) <$> takeText

instance ToText SpotInstanceState where
  toText (SpotInstanceState' ci) = original ci

instance Hashable SpotInstanceState

instance NFData SpotInstanceState

instance ToByteString SpotInstanceState

instance ToQuery SpotInstanceState

instance ToHeader SpotInstanceState

instance FromXML SpotInstanceState where
  parseXML = parseXMLText "SpotInstanceState"
