{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.SSLProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.SSLProtocol
  ( SSLProtocol
      ( ..,
        SSLV3,
        TLSV1,
        TLSV1_1,
        TLSV1_2
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SSLProtocol = SSLProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSLV3 :: SSLProtocol
pattern SSLV3 = SSLProtocol' "SSLv3"

pattern TLSV1 :: SSLProtocol
pattern TLSV1 = SSLProtocol' "TLSv1"

pattern TLSV1_1 :: SSLProtocol
pattern TLSV1_1 = SSLProtocol' "TLSv1.1"

pattern TLSV1_2 :: SSLProtocol
pattern TLSV1_2 = SSLProtocol' "TLSv1.2"

{-# COMPLETE
  SSLV3,
  TLSV1,
  TLSV1_1,
  TLSV1_2,
  SSLProtocol'
  #-}

instance FromText SSLProtocol where
  parser = (SSLProtocol' . mk) <$> takeText

instance ToText SSLProtocol where
  toText (SSLProtocol' ci) = original ci

instance Hashable SSLProtocol

instance NFData SSLProtocol

instance ToByteString SSLProtocol

instance ToQuery SSLProtocol

instance ToHeader SSLProtocol

instance FromXML SSLProtocol where
  parseXML = parseXMLText "SSLProtocol"

instance ToXML SSLProtocol where
  toXML = toXMLText
