{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.UsageClassType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UsageClassType
  ( UsageClassType
      ( ..,
        UCTOnDemand,
        UCTSpot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data UsageClassType = UsageClassType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UCTOnDemand :: UsageClassType
pattern UCTOnDemand = UsageClassType' "on-demand"

pattern UCTSpot :: UsageClassType
pattern UCTSpot = UsageClassType' "spot"

{-# COMPLETE
  UCTOnDemand,
  UCTSpot,
  UsageClassType'
  #-}

instance FromText UsageClassType where
  parser = (UsageClassType' . mk) <$> takeText

instance ToText UsageClassType where
  toText (UsageClassType' ci) = original ci

instance Hashable UsageClassType

instance NFData UsageClassType

instance ToByteString UsageClassType

instance ToQuery UsageClassType

instance ToHeader UsageClassType

instance FromXML UsageClassType where
  parseXML = parseXMLText "UsageClassType"
