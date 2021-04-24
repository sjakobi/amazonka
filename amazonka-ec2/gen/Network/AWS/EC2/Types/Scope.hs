{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Scope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Scope
  ( Scope
      ( ..,
        SAvailabilityZone,
        SRegion
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data Scope = Scope' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SAvailabilityZone :: Scope
pattern SAvailabilityZone = Scope' "Availability Zone"

pattern SRegion :: Scope
pattern SRegion = Scope' "Region"

{-# COMPLETE
  SAvailabilityZone,
  SRegion,
  Scope'
  #-}

instance FromText Scope where
  parser = (Scope' . mk) <$> takeText

instance ToText Scope where
  toText (Scope' ci) = original ci

instance Hashable Scope

instance NFData Scope

instance ToByteString Scope

instance ToQuery Scope

instance ToHeader Scope

instance FromXML Scope where
  parseXML = parseXMLText "Scope"
