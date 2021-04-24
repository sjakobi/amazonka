{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.RequirePin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.RequirePin
  ( RequirePin
      ( ..,
        NO,
        Optional,
        Yes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RequirePin = RequirePin' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NO :: RequirePin
pattern NO = RequirePin' "NO"

pattern Optional :: RequirePin
pattern Optional = RequirePin' "OPTIONAL"

pattern Yes :: RequirePin
pattern Yes = RequirePin' "YES"

{-# COMPLETE
  NO,
  Optional,
  Yes,
  RequirePin'
  #-}

instance FromText RequirePin where
  parser = (RequirePin' . mk) <$> takeText

instance ToText RequirePin where
  toText (RequirePin' ci) = original ci

instance Hashable RequirePin

instance NFData RequirePin

instance ToByteString RequirePin

instance ToQuery RequirePin

instance ToHeader RequirePin

instance ToJSON RequirePin where
  toJSON = toJSONText

instance FromJSON RequirePin where
  parseJSON = parseJSONText "RequirePin"
