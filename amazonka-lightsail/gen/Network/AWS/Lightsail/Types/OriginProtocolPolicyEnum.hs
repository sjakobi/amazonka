{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.OriginProtocolPolicyEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.OriginProtocolPolicyEnum
  ( OriginProtocolPolicyEnum
      ( ..,
        HTTPOnly,
        HTTPSOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OriginProtocolPolicyEnum
  = OriginProtocolPolicyEnum'
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

pattern HTTPOnly :: OriginProtocolPolicyEnum
pattern HTTPOnly = OriginProtocolPolicyEnum' "http-only"

pattern HTTPSOnly :: OriginProtocolPolicyEnum
pattern HTTPSOnly = OriginProtocolPolicyEnum' "https-only"

{-# COMPLETE
  HTTPOnly,
  HTTPSOnly,
  OriginProtocolPolicyEnum'
  #-}

instance FromText OriginProtocolPolicyEnum where
  parser = (OriginProtocolPolicyEnum' . mk) <$> takeText

instance ToText OriginProtocolPolicyEnum where
  toText (OriginProtocolPolicyEnum' ci) = original ci

instance Hashable OriginProtocolPolicyEnum

instance NFData OriginProtocolPolicyEnum

instance ToByteString OriginProtocolPolicyEnum

instance ToQuery OriginProtocolPolicyEnum

instance ToHeader OriginProtocolPolicyEnum

instance ToJSON OriginProtocolPolicyEnum where
  toJSON = toJSONText

instance FromJSON OriginProtocolPolicyEnum where
  parseJSON = parseJSONText "OriginProtocolPolicyEnum"
