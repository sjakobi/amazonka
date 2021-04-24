{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.IPSetDescriptorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.IPSetDescriptorType
  ( IPSetDescriptorType
      ( ..,
        IPV4,
        IPV6
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPSetDescriptorType
  = IPSetDescriptorType'
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

pattern IPV4 :: IPSetDescriptorType
pattern IPV4 = IPSetDescriptorType' "IPV4"

pattern IPV6 :: IPSetDescriptorType
pattern IPV6 = IPSetDescriptorType' "IPV6"

{-# COMPLETE
  IPV4,
  IPV6,
  IPSetDescriptorType'
  #-}

instance FromText IPSetDescriptorType where
  parser = (IPSetDescriptorType' . mk) <$> takeText

instance ToText IPSetDescriptorType where
  toText (IPSetDescriptorType' ci) = original ci

instance Hashable IPSetDescriptorType

instance NFData IPSetDescriptorType

instance ToByteString IPSetDescriptorType

instance ToQuery IPSetDescriptorType

instance ToHeader IPSetDescriptorType

instance ToJSON IPSetDescriptorType where
  toJSON = toJSONText

instance FromJSON IPSetDescriptorType where
  parseJSON = parseJSONText "IPSetDescriptorType"
