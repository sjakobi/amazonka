{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCAttributeName
  ( VPCAttributeName
      ( ..,
        EnableDNSHostnames,
        EnableDNSSupport
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPCAttributeName = VPCAttributeName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EnableDNSHostnames :: VPCAttributeName
pattern EnableDNSHostnames = VPCAttributeName' "enableDnsHostnames"

pattern EnableDNSSupport :: VPCAttributeName
pattern EnableDNSSupport = VPCAttributeName' "enableDnsSupport"

{-# COMPLETE
  EnableDNSHostnames,
  EnableDNSSupport,
  VPCAttributeName'
  #-}

instance FromText VPCAttributeName where
  parser = (VPCAttributeName' . mk) <$> takeText

instance ToText VPCAttributeName where
  toText (VPCAttributeName' ci) = original ci

instance Hashable VPCAttributeName

instance NFData VPCAttributeName

instance ToByteString VPCAttributeName

instance ToQuery VPCAttributeName

instance ToHeader VPCAttributeName
