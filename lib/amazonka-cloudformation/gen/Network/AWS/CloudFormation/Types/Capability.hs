{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.Capability
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Capability where

import Network.AWS.Prelude

data Capability
  = CapabilityAutoExpand
  | CapabilityIAM
  | CapabilityNamedIAM
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Enum,
      Bounded,
      Data,
      Typeable,
      Generic
    )

instance FromText Capability where
  parser =
    takeLowerText >>= \case
      "capability_auto_expand" -> pure CapabilityAutoExpand
      "capability_iam" -> pure CapabilityIAM
      "capability_named_iam" -> pure CapabilityNamedIAM
      e ->
        fromTextError $
          "Failure parsing Capability from value: '" <> e
            <> "'. Accepted values: capability_auto_expand, capability_iam, capability_named_iam"

instance ToText Capability where
  toText = \case
    CapabilityAutoExpand -> "CAPABILITY_AUTO_EXPAND"
    CapabilityIAM -> "CAPABILITY_IAM"
    CapabilityNamedIAM -> "CAPABILITY_NAMED_IAM"

instance Hashable Capability

instance NFData Capability

instance ToByteString Capability

instance ToQuery Capability

instance ToHeader Capability

instance FromXML Capability where
  parseXML = parseXMLText "Capability"
