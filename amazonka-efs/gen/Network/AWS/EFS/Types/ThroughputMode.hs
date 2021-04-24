{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.Types.ThroughputMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.ThroughputMode
  ( ThroughputMode
      ( ..,
        Bursting,
        Provisioned
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ThroughputMode = ThroughputMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Bursting :: ThroughputMode
pattern Bursting = ThroughputMode' "bursting"

pattern Provisioned :: ThroughputMode
pattern Provisioned = ThroughputMode' "provisioned"

{-# COMPLETE
  Bursting,
  Provisioned,
  ThroughputMode'
  #-}

instance FromText ThroughputMode where
  parser = (ThroughputMode' . mk) <$> takeText

instance ToText ThroughputMode where
  toText (ThroughputMode' ci) = original ci

instance Hashable ThroughputMode

instance NFData ThroughputMode

instance ToByteString ThroughputMode

instance ToQuery ThroughputMode

instance ToHeader ThroughputMode

instance ToJSON ThroughputMode where
  toJSON = toJSONText

instance FromJSON ThroughputMode where
  parseJSON = parseJSONText "ThroughputMode"
