{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyType
  ( OriginRequestPolicyType
      ( ..,
        ORPTCustom,
        ORPTManaged
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OriginRequestPolicyType
  = OriginRequestPolicyType'
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

pattern ORPTCustom :: OriginRequestPolicyType
pattern ORPTCustom = OriginRequestPolicyType' "custom"

pattern ORPTManaged :: OriginRequestPolicyType
pattern ORPTManaged = OriginRequestPolicyType' "managed"

{-# COMPLETE
  ORPTCustom,
  ORPTManaged,
  OriginRequestPolicyType'
  #-}

instance FromText OriginRequestPolicyType where
  parser = (OriginRequestPolicyType' . mk) <$> takeText

instance ToText OriginRequestPolicyType where
  toText (OriginRequestPolicyType' ci) = original ci

instance Hashable OriginRequestPolicyType

instance NFData OriginRequestPolicyType

instance ToByteString OriginRequestPolicyType

instance ToQuery OriginRequestPolicyType

instance ToHeader OriginRequestPolicyType

instance FromXML OriginRequestPolicyType where
  parseXML = parseXMLText "OriginRequestPolicyType"

instance ToXML OriginRequestPolicyType where
  toXML = toXMLText
