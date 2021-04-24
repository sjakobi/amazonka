{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AssociatedNetworkType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AssociatedNetworkType
  ( AssociatedNetworkType
      ( ..,
        VPC
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AssociatedNetworkType
  = AssociatedNetworkType'
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

pattern VPC :: AssociatedNetworkType
pattern VPC = AssociatedNetworkType' "vpc"

{-# COMPLETE
  VPC,
  AssociatedNetworkType'
  #-}

instance FromText AssociatedNetworkType where
  parser = (AssociatedNetworkType' . mk) <$> takeText

instance ToText AssociatedNetworkType where
  toText (AssociatedNetworkType' ci) = original ci

instance Hashable AssociatedNetworkType

instance NFData AssociatedNetworkType

instance ToByteString AssociatedNetworkType

instance ToQuery AssociatedNetworkType

instance ToHeader AssociatedNetworkType

instance FromXML AssociatedNetworkType where
  parseXML = parseXMLText "AssociatedNetworkType"
