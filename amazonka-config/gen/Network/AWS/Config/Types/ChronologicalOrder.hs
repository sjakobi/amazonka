{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ChronologicalOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ChronologicalOrder
  ( ChronologicalOrder
      ( ..,
        Forward,
        Reverse
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChronologicalOrder
  = ChronologicalOrder'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Forward :: ChronologicalOrder
pattern Forward = ChronologicalOrder' "Forward"

pattern Reverse :: ChronologicalOrder
pattern Reverse = ChronologicalOrder' "Reverse"

{-# COMPLETE
  Forward,
  Reverse,
  ChronologicalOrder'
  #-}

instance FromText ChronologicalOrder where
  parser = (ChronologicalOrder' . mk) <$> takeText

instance ToText ChronologicalOrder where
  toText (ChronologicalOrder' ci) = original ci

instance Hashable ChronologicalOrder

instance NFData ChronologicalOrder

instance ToByteString ChronologicalOrder

instance ToQuery ChronologicalOrder

instance ToHeader ChronologicalOrder

instance ToJSON ChronologicalOrder where
  toJSON = toJSONText
