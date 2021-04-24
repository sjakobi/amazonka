{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.BlueprintType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.BlueprintType
  ( BlueprintType
      ( ..,
        App,
        OS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BlueprintType = BlueprintType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern App :: BlueprintType
pattern App = BlueprintType' "app"

pattern OS :: BlueprintType
pattern OS = BlueprintType' "os"

{-# COMPLETE
  App,
  OS,
  BlueprintType'
  #-}

instance FromText BlueprintType where
  parser = (BlueprintType' . mk) <$> takeText

instance ToText BlueprintType where
  toText (BlueprintType' ci) = original ci

instance Hashable BlueprintType

instance NFData BlueprintType

instance ToByteString BlueprintType

instance ToQuery BlueprintType

instance ToHeader BlueprintType

instance FromJSON BlueprintType where
  parseJSON = parseJSONText "BlueprintType"
