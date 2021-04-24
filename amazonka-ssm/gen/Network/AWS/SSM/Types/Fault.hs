{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Fault
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Fault
  ( Fault
      ( ..,
        Client,
        Server,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Fault = Fault' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Client :: Fault
pattern Client = Fault' "Client"

pattern Server :: Fault
pattern Server = Fault' "Server"

pattern Unknown :: Fault
pattern Unknown = Fault' "Unknown"

{-# COMPLETE
  Client,
  Server,
  Unknown,
  Fault'
  #-}

instance FromText Fault where
  parser = (Fault' . mk) <$> takeText

instance ToText Fault where
  toText (Fault' ci) = original ci

instance Hashable Fault

instance NFData Fault

instance ToByteString Fault

instance ToQuery Fault

instance ToHeader Fault

instance FromJSON Fault where
  parseJSON = parseJSONText "Fault"
