{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SubnetState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SubnetState
  ( SubnetState
      ( ..,
        SAvailable,
        SPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SubnetState = SubnetState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SAvailable :: SubnetState
pattern SAvailable = SubnetState' "available"

pattern SPending :: SubnetState
pattern SPending = SubnetState' "pending"

{-# COMPLETE
  SAvailable,
  SPending,
  SubnetState'
  #-}

instance FromText SubnetState where
  parser = (SubnetState' . mk) <$> takeText

instance ToText SubnetState where
  toText (SubnetState' ci) = original ci

instance Hashable SubnetState

instance NFData SubnetState

instance ToByteString SubnetState

instance ToQuery SubnetState

instance ToHeader SubnetState

instance FromXML SubnetState where
  parseXML = parseXMLText "SubnetState"
