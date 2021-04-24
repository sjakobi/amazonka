{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPNState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPNState
  ( VPNState
      ( ..,
        VPNSAvailable,
        VPNSDeleted,
        VPNSDeleting,
        VPNSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPNState = VPNState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VPNSAvailable :: VPNState
pattern VPNSAvailable = VPNState' "available"

pattern VPNSDeleted :: VPNState
pattern VPNSDeleted = VPNState' "deleted"

pattern VPNSDeleting :: VPNState
pattern VPNSDeleting = VPNState' "deleting"

pattern VPNSPending :: VPNState
pattern VPNSPending = VPNState' "pending"

{-# COMPLETE
  VPNSAvailable,
  VPNSDeleted,
  VPNSDeleting,
  VPNSPending,
  VPNState'
  #-}

instance FromText VPNState where
  parser = (VPNState' . mk) <$> takeText

instance ToText VPNState where
  toText (VPNState' ci) = original ci

instance Hashable VPNState

instance NFData VPNState

instance ToByteString VPNState

instance ToQuery VPNState

instance ToHeader VPNState

instance FromXML VPNState where
  parseXML = parseXMLText "VPNState"
