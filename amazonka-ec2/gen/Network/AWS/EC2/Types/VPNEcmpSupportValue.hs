{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPNEcmpSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPNEcmpSupportValue
  ( VPNEcmpSupportValue
      ( ..,
        Disable,
        Enable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPNEcmpSupportValue
  = VPNEcmpSupportValue'
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

pattern Disable :: VPNEcmpSupportValue
pattern Disable = VPNEcmpSupportValue' "disable"

pattern Enable :: VPNEcmpSupportValue
pattern Enable = VPNEcmpSupportValue' "enable"

{-# COMPLETE
  Disable,
  Enable,
  VPNEcmpSupportValue'
  #-}

instance FromText VPNEcmpSupportValue where
  parser = (VPNEcmpSupportValue' . mk) <$> takeText

instance ToText VPNEcmpSupportValue where
  toText (VPNEcmpSupportValue' ci) = original ci

instance Hashable VPNEcmpSupportValue

instance NFData VPNEcmpSupportValue

instance ToByteString VPNEcmpSupportValue

instance ToQuery VPNEcmpSupportValue

instance ToHeader VPNEcmpSupportValue

instance FromXML VPNEcmpSupportValue where
  parseXML = parseXMLText "VPNEcmpSupportValue"
