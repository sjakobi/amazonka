{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DomainType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DomainType
  ( DomainType
      ( ..,
        DTStandard,
        DTVPC
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DomainType = DomainType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DTStandard :: DomainType
pattern DTStandard = DomainType' "standard"

pattern DTVPC :: DomainType
pattern DTVPC = DomainType' "vpc"

{-# COMPLETE
  DTStandard,
  DTVPC,
  DomainType'
  #-}

instance FromText DomainType where
  parser = (DomainType' . mk) <$> takeText

instance ToText DomainType where
  toText (DomainType' ci) = original ci

instance Hashable DomainType

instance NFData DomainType

instance ToByteString DomainType

instance ToQuery DomainType

instance ToHeader DomainType

instance FromXML DomainType where
  parseXML = parseXMLText "DomainType"
