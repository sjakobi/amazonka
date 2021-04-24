{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CachePolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyType
  ( CachePolicyType
      ( ..,
        Custom,
        Managed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CachePolicyType = CachePolicyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Custom :: CachePolicyType
pattern Custom = CachePolicyType' "custom"

pattern Managed :: CachePolicyType
pattern Managed = CachePolicyType' "managed"

{-# COMPLETE
  Custom,
  Managed,
  CachePolicyType'
  #-}

instance FromText CachePolicyType where
  parser = (CachePolicyType' . mk) <$> takeText

instance ToText CachePolicyType where
  toText (CachePolicyType' ci) = original ci

instance Hashable CachePolicyType

instance NFData CachePolicyType

instance ToByteString CachePolicyType

instance ToQuery CachePolicyType

instance ToHeader CachePolicyType

instance FromXML CachePolicyType where
  parseXML = parseXMLText "CachePolicyType"

instance ToXML CachePolicyType where
  toXML = toXMLText
