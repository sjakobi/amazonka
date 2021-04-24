{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CachePolicyHeaderBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyHeaderBehavior
  ( CachePolicyHeaderBehavior
      ( ..,
        CPHBNone,
        CPHBWhitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CachePolicyHeaderBehavior
  = CachePolicyHeaderBehavior'
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

pattern CPHBNone :: CachePolicyHeaderBehavior
pattern CPHBNone = CachePolicyHeaderBehavior' "none"

pattern CPHBWhitelist :: CachePolicyHeaderBehavior
pattern CPHBWhitelist = CachePolicyHeaderBehavior' "whitelist"

{-# COMPLETE
  CPHBNone,
  CPHBWhitelist,
  CachePolicyHeaderBehavior'
  #-}

instance FromText CachePolicyHeaderBehavior where
  parser = (CachePolicyHeaderBehavior' . mk) <$> takeText

instance ToText CachePolicyHeaderBehavior where
  toText (CachePolicyHeaderBehavior' ci) = original ci

instance Hashable CachePolicyHeaderBehavior

instance NFData CachePolicyHeaderBehavior

instance ToByteString CachePolicyHeaderBehavior

instance ToQuery CachePolicyHeaderBehavior

instance ToHeader CachePolicyHeaderBehavior

instance FromXML CachePolicyHeaderBehavior where
  parseXML = parseXMLText "CachePolicyHeaderBehavior"

instance ToXML CachePolicyHeaderBehavior where
  toXML = toXMLText
