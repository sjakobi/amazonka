{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.Format
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.Format
  ( Format
      ( ..,
        URLEncoded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Format = Format' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern URLEncoded :: Format
pattern URLEncoded = Format' "URLEncoded"

{-# COMPLETE
  URLEncoded,
  Format'
  #-}

instance FromText Format where
  parser = (Format' . mk) <$> takeText

instance ToText Format where
  toText (Format' ci) = original ci

instance Hashable Format

instance NFData Format

instance ToByteString Format

instance ToQuery Format

instance ToHeader Format

instance FromXML Format where
  parseXML = parseXMLText "Format"

instance ToXML Format where
  toXML = toXMLText
