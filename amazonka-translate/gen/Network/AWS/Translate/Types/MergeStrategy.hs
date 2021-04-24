{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.MergeStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.MergeStrategy
  ( MergeStrategy
      ( ..,
        Overwrite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MergeStrategy = MergeStrategy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Overwrite :: MergeStrategy
pattern Overwrite = MergeStrategy' "OVERWRITE"

{-# COMPLETE
  Overwrite,
  MergeStrategy'
  #-}

instance FromText MergeStrategy where
  parser = (MergeStrategy' . mk) <$> takeText

instance ToText MergeStrategy where
  toText (MergeStrategy' ci) = original ci

instance Hashable MergeStrategy

instance NFData MergeStrategy

instance ToByteString MergeStrategy

instance ToQuery MergeStrategy

instance ToHeader MergeStrategy

instance ToJSON MergeStrategy where
  toJSON = toJSONText
