{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ProvisioningType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ProvisioningType
  ( ProvisioningType
      ( ..,
        FullyMutable,
        Immutable,
        NonProvisionable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProvisioningType = ProvisioningType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FullyMutable :: ProvisioningType
pattern FullyMutable = ProvisioningType' "FULLY_MUTABLE"

pattern Immutable :: ProvisioningType
pattern Immutable = ProvisioningType' "IMMUTABLE"

pattern NonProvisionable :: ProvisioningType
pattern NonProvisionable = ProvisioningType' "NON_PROVISIONABLE"

{-# COMPLETE
  FullyMutable,
  Immutable,
  NonProvisionable,
  ProvisioningType'
  #-}

instance FromText ProvisioningType where
  parser = (ProvisioningType' . mk) <$> takeText

instance ToText ProvisioningType where
  toText (ProvisioningType' ci) = original ci

instance Hashable ProvisioningType

instance NFData ProvisioningType

instance ToByteString ProvisioningType

instance ToQuery ProvisioningType

instance ToHeader ProvisioningType

instance FromXML ProvisioningType where
  parseXML = parseXMLText "ProvisioningType"
