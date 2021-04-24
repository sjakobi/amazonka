{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.Capability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Capability
  ( Capability
      ( ..,
        CapabilityAutoExpand,
        CapabilityIAM,
        CapabilityNamedIAM
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Capability = Capability' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CapabilityAutoExpand :: Capability
pattern CapabilityAutoExpand = Capability' "CAPABILITY_AUTO_EXPAND"

pattern CapabilityIAM :: Capability
pattern CapabilityIAM = Capability' "CAPABILITY_IAM"

pattern CapabilityNamedIAM :: Capability
pattern CapabilityNamedIAM = Capability' "CAPABILITY_NAMED_IAM"

{-# COMPLETE
  CapabilityAutoExpand,
  CapabilityIAM,
  CapabilityNamedIAM,
  Capability'
  #-}

instance FromText Capability where
  parser = (Capability' . mk) <$> takeText

instance ToText Capability where
  toText (Capability' ci) = original ci

instance Hashable Capability

instance NFData Capability

instance ToByteString Capability

instance ToQuery Capability

instance ToHeader Capability

instance FromXML Capability where
  parseXML = parseXMLText "Capability"
