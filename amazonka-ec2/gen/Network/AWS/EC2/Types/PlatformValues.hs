{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PlatformValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PlatformValues
  ( PlatformValues
      ( ..,
        Windows
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data PlatformValues = PlatformValues' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Windows :: PlatformValues
pattern Windows = PlatformValues' "Windows"

{-# COMPLETE
  Windows,
  PlatformValues'
  #-}

instance FromText PlatformValues where
  parser = (PlatformValues' . mk) <$> takeText

instance ToText PlatformValues where
  toText (PlatformValues' ci) = original ci

instance Hashable PlatformValues

instance NFData PlatformValues

instance ToByteString PlatformValues

instance ToQuery PlatformValues

instance ToHeader PlatformValues

instance FromXML PlatformValues where
  parseXML = parseXMLText "PlatformValues"
