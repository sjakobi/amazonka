{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.OnDemandAllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OnDemandAllocationStrategy
  ( OnDemandAllocationStrategy
      ( ..,
        LowestPrice,
        Prioritized
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data OnDemandAllocationStrategy
  = OnDemandAllocationStrategy'
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

pattern LowestPrice :: OnDemandAllocationStrategy
pattern LowestPrice = OnDemandAllocationStrategy' "lowestPrice"

pattern Prioritized :: OnDemandAllocationStrategy
pattern Prioritized = OnDemandAllocationStrategy' "prioritized"

{-# COMPLETE
  LowestPrice,
  Prioritized,
  OnDemandAllocationStrategy'
  #-}

instance FromText OnDemandAllocationStrategy where
  parser = (OnDemandAllocationStrategy' . mk) <$> takeText

instance ToText OnDemandAllocationStrategy where
  toText (OnDemandAllocationStrategy' ci) = original ci

instance Hashable OnDemandAllocationStrategy

instance NFData OnDemandAllocationStrategy

instance ToByteString OnDemandAllocationStrategy

instance ToQuery OnDemandAllocationStrategy

instance ToHeader OnDemandAllocationStrategy

instance FromXML OnDemandAllocationStrategy where
  parseXML = parseXMLText "OnDemandAllocationStrategy"
