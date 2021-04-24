{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AllocationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AllocationStrategy
  ( AllocationStrategy
      ( ..,
        ASCapacityOptimized,
        ASDiversified,
        ASLowestPrice
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AllocationStrategy
  = AllocationStrategy'
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

pattern ASCapacityOptimized :: AllocationStrategy
pattern ASCapacityOptimized = AllocationStrategy' "capacityOptimized"

pattern ASDiversified :: AllocationStrategy
pattern ASDiversified = AllocationStrategy' "diversified"

pattern ASLowestPrice :: AllocationStrategy
pattern ASLowestPrice = AllocationStrategy' "lowestPrice"

{-# COMPLETE
  ASCapacityOptimized,
  ASDiversified,
  ASLowestPrice,
  AllocationStrategy'
  #-}

instance FromText AllocationStrategy where
  parser = (AllocationStrategy' . mk) <$> takeText

instance ToText AllocationStrategy where
  toText (AllocationStrategy' ci) = original ci

instance Hashable AllocationStrategy

instance NFData AllocationStrategy

instance ToByteString AllocationStrategy

instance ToQuery AllocationStrategy

instance ToHeader AllocationStrategy

instance FromXML AllocationStrategy where
  parseXML = parseXMLText "AllocationStrategy"
