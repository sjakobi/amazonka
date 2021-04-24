{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.RegistryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.RegistryType
  ( RegistryType
      ( ..,
        Module,
        Resource
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RegistryType = RegistryType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Module :: RegistryType
pattern Module = RegistryType' "MODULE"

pattern Resource :: RegistryType
pattern Resource = RegistryType' "RESOURCE"

{-# COMPLETE
  Module,
  Resource,
  RegistryType'
  #-}

instance FromText RegistryType where
  parser = (RegistryType' . mk) <$> takeText

instance ToText RegistryType where
  toText (RegistryType' ci) = original ci

instance Hashable RegistryType

instance NFData RegistryType

instance ToByteString RegistryType

instance ToQuery RegistryType

instance ToHeader RegistryType

instance FromXML RegistryType where
  parseXML = parseXMLText "RegistryType"
