{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DefaultTargetCapacityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DefaultTargetCapacityType
  ( DefaultTargetCapacityType
      ( ..,
        DTCTOnDemand,
        DTCTSpot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DefaultTargetCapacityType
  = DefaultTargetCapacityType'
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

pattern DTCTOnDemand :: DefaultTargetCapacityType
pattern DTCTOnDemand = DefaultTargetCapacityType' "on-demand"

pattern DTCTSpot :: DefaultTargetCapacityType
pattern DTCTSpot = DefaultTargetCapacityType' "spot"

{-# COMPLETE
  DTCTOnDemand,
  DTCTSpot,
  DefaultTargetCapacityType'
  #-}

instance FromText DefaultTargetCapacityType where
  parser = (DefaultTargetCapacityType' . mk) <$> takeText

instance ToText DefaultTargetCapacityType where
  toText (DefaultTargetCapacityType' ci) = original ci

instance Hashable DefaultTargetCapacityType

instance NFData DefaultTargetCapacityType

instance ToByteString DefaultTargetCapacityType

instance ToQuery DefaultTargetCapacityType

instance ToHeader DefaultTargetCapacityType

instance FromXML DefaultTargetCapacityType where
  parseXML = parseXMLText "DefaultTargetCapacityType"
