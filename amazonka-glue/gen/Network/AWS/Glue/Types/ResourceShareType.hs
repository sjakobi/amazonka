{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ResourceShareType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ResourceShareType
  ( ResourceShareType
      ( ..,
        RSTAll,
        RSTForeign
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceShareType = ResourceShareType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RSTAll :: ResourceShareType
pattern RSTAll = ResourceShareType' "ALL"

pattern RSTForeign :: ResourceShareType
pattern RSTForeign = ResourceShareType' "FOREIGN"

{-# COMPLETE
  RSTAll,
  RSTForeign,
  ResourceShareType'
  #-}

instance FromText ResourceShareType where
  parser = (ResourceShareType' . mk) <$> takeText

instance ToText ResourceShareType where
  toText (ResourceShareType' ci) = original ci

instance Hashable ResourceShareType

instance NFData ResourceShareType

instance ToByteString ResourceShareType

instance ToQuery ResourceShareType

instance ToHeader ResourceShareType

instance ToJSON ResourceShareType where
  toJSON = toJSONText
