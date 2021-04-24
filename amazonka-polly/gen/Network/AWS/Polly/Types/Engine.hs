{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.Engine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.Engine
  ( Engine
      ( ..,
        Neural,
        Standard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Engine = Engine' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Neural :: Engine
pattern Neural = Engine' "neural"

pattern Standard :: Engine
pattern Standard = Engine' "standard"

{-# COMPLETE
  Neural,
  Standard,
  Engine'
  #-}

instance FromText Engine where
  parser = (Engine' . mk) <$> takeText

instance ToText Engine where
  toText (Engine' ci) = original ci

instance Hashable Engine

instance NFData Engine

instance ToByteString Engine

instance ToQuery Engine

instance ToHeader Engine

instance ToJSON Engine where
  toJSON = toJSONText

instance FromJSON Engine where
  parseJSON = parseJSONText "Engine"
