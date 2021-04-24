{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.HypervisorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HypervisorType
  ( HypervisorType
      ( ..,
        HTOvm,
        HTXen
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data HypervisorType = HypervisorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTOvm :: HypervisorType
pattern HTOvm = HypervisorType' "ovm"

pattern HTXen :: HypervisorType
pattern HTXen = HypervisorType' "xen"

{-# COMPLETE
  HTOvm,
  HTXen,
  HypervisorType'
  #-}

instance FromText HypervisorType where
  parser = (HypervisorType' . mk) <$> takeText

instance ToText HypervisorType where
  toText (HypervisorType' ci) = original ci

instance Hashable HypervisorType

instance NFData HypervisorType

instance ToByteString HypervisorType

instance ToQuery HypervisorType

instance ToHeader HypervisorType

instance FromXML HypervisorType where
  parseXML = parseXMLText "HypervisorType"
