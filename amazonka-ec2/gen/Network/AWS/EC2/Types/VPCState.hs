{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCState
  ( VPCState
      ( ..,
        VSAvailable,
        VSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VPCState = VPCState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VSAvailable :: VPCState
pattern VSAvailable = VPCState' "available"

pattern VSPending :: VPCState
pattern VSPending = VPCState' "pending"

{-# COMPLETE
  VSAvailable,
  VSPending,
  VPCState'
  #-}

instance FromText VPCState where
  parser = (VPCState' . mk) <$> takeText

instance ToText VPCState where
  toText (VPCState' ci) = original ci

instance Hashable VPCState

instance NFData VPCState

instance ToByteString VPCState

instance ToQuery VPCState

instance ToHeader VPCState

instance FromXML VPCState where
  parseXML = parseXMLText "VPCState"
