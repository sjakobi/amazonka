{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AutoPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AutoPlacement
  ( AutoPlacement
      ( ..,
        ON,
        Off
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AutoPlacement = AutoPlacement' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ON :: AutoPlacement
pattern ON = AutoPlacement' "on"

pattern Off :: AutoPlacement
pattern Off = AutoPlacement' "off"

{-# COMPLETE
  ON,
  Off,
  AutoPlacement'
  #-}

instance FromText AutoPlacement where
  parser = (AutoPlacement' . mk) <$> takeText

instance ToText AutoPlacement where
  toText (AutoPlacement' ci) = original ci

instance Hashable AutoPlacement

instance NFData AutoPlacement

instance ToByteString AutoPlacement

instance ToQuery AutoPlacement

instance ToHeader AutoPlacement

instance FromXML AutoPlacement where
  parseXML = parseXMLText "AutoPlacement"
