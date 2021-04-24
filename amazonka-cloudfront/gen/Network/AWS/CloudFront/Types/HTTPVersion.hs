{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.HTTPVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.HTTPVersion
  ( HTTPVersion
      ( ..,
        HTTP1_1,
        HTTP2
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HTTPVersion = HTTPVersion' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTTP1_1 :: HTTPVersion
pattern HTTP1_1 = HTTPVersion' "http1.1"

pattern HTTP2 :: HTTPVersion
pattern HTTP2 = HTTPVersion' "http2"

{-# COMPLETE
  HTTP1_1,
  HTTP2,
  HTTPVersion'
  #-}

instance FromText HTTPVersion where
  parser = (HTTPVersion' . mk) <$> takeText

instance ToText HTTPVersion where
  toText (HTTPVersion' ci) = original ci

instance Hashable HTTPVersion

instance NFData HTTPVersion

instance ToByteString HTTPVersion

instance ToQuery HTTPVersion

instance ToHeader HTTPVersion

instance FromXML HTTPVersion where
  parseXML = parseXMLText "HTTPVersion"

instance ToXML HTTPVersion where
  toXML = toXMLText
