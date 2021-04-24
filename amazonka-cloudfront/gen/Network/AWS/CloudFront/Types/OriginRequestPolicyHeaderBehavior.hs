{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyHeaderBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyHeaderBehavior
  ( OriginRequestPolicyHeaderBehavior
      ( ..,
        ORPHBAllViewer,
        ORPHBAllViewerAndWhitelistCloudFront,
        ORPHBNone,
        ORPHBWhitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OriginRequestPolicyHeaderBehavior
  = OriginRequestPolicyHeaderBehavior'
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

pattern ORPHBAllViewer :: OriginRequestPolicyHeaderBehavior
pattern ORPHBAllViewer = OriginRequestPolicyHeaderBehavior' "allViewer"

pattern ORPHBAllViewerAndWhitelistCloudFront :: OriginRequestPolicyHeaderBehavior
pattern ORPHBAllViewerAndWhitelistCloudFront = OriginRequestPolicyHeaderBehavior' "allViewerAndWhitelistCloudFront"

pattern ORPHBNone :: OriginRequestPolicyHeaderBehavior
pattern ORPHBNone = OriginRequestPolicyHeaderBehavior' "none"

pattern ORPHBWhitelist :: OriginRequestPolicyHeaderBehavior
pattern ORPHBWhitelist = OriginRequestPolicyHeaderBehavior' "whitelist"

{-# COMPLETE
  ORPHBAllViewer,
  ORPHBAllViewerAndWhitelistCloudFront,
  ORPHBNone,
  ORPHBWhitelist,
  OriginRequestPolicyHeaderBehavior'
  #-}

instance FromText OriginRequestPolicyHeaderBehavior where
  parser = (OriginRequestPolicyHeaderBehavior' . mk) <$> takeText

instance ToText OriginRequestPolicyHeaderBehavior where
  toText (OriginRequestPolicyHeaderBehavior' ci) = original ci

instance Hashable OriginRequestPolicyHeaderBehavior

instance NFData OriginRequestPolicyHeaderBehavior

instance ToByteString OriginRequestPolicyHeaderBehavior

instance ToQuery OriginRequestPolicyHeaderBehavior

instance ToHeader OriginRequestPolicyHeaderBehavior

instance FromXML OriginRequestPolicyHeaderBehavior where
  parseXML = parseXMLText "OriginRequestPolicyHeaderBehavior"

instance ToXML OriginRequestPolicyHeaderBehavior where
  toXML = toXMLText
