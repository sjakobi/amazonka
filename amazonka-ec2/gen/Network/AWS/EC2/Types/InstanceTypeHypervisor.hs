{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceTypeHypervisor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceTypeHypervisor
  ( InstanceTypeHypervisor
      ( ..,
        Nitro,
        Xen
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data InstanceTypeHypervisor
  = InstanceTypeHypervisor'
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

pattern Nitro :: InstanceTypeHypervisor
pattern Nitro = InstanceTypeHypervisor' "nitro"

pattern Xen :: InstanceTypeHypervisor
pattern Xen = InstanceTypeHypervisor' "xen"

{-# COMPLETE
  Nitro,
  Xen,
  InstanceTypeHypervisor'
  #-}

instance FromText InstanceTypeHypervisor where
  parser = (InstanceTypeHypervisor' . mk) <$> takeText

instance ToText InstanceTypeHypervisor where
  toText (InstanceTypeHypervisor' ci) = original ci

instance Hashable InstanceTypeHypervisor

instance NFData InstanceTypeHypervisor

instance ToByteString InstanceTypeHypervisor

instance ToQuery InstanceTypeHypervisor

instance ToHeader InstanceTypeHypervisor

instance FromXML InstanceTypeHypervisor where
  parseXML = parseXMLText "InstanceTypeHypervisor"
