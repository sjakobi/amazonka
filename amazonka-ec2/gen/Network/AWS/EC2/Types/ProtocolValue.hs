{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ProtocolValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ProtocolValue
  ( ProtocolValue
      ( ..,
        Gre
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ProtocolValue = ProtocolValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Gre :: ProtocolValue
pattern Gre = ProtocolValue' "gre"

{-# COMPLETE
  Gre,
  ProtocolValue'
  #-}

instance FromText ProtocolValue where
  parser = (ProtocolValue' . mk) <$> takeText

instance ToText ProtocolValue where
  toText (ProtocolValue' ci) = original ci

instance Hashable ProtocolValue

instance NFData ProtocolValue

instance ToByteString ProtocolValue

instance ToQuery ProtocolValue

instance ToHeader ProtocolValue

instance FromXML ProtocolValue where
  parseXML = parseXMLText "ProtocolValue"
