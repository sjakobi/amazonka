{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.RecentlyActive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.RecentlyActive
  ( RecentlyActive
      ( ..,
        PT3H
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecentlyActive = RecentlyActive' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PT3H :: RecentlyActive
pattern PT3H = RecentlyActive' "PT3H"

{-# COMPLETE
  PT3H,
  RecentlyActive'
  #-}

instance FromText RecentlyActive where
  parser = (RecentlyActive' . mk) <$> takeText

instance ToText RecentlyActive where
  toText (RecentlyActive' ci) = original ci

instance Hashable RecentlyActive

instance NFData RecentlyActive

instance ToByteString RecentlyActive

instance ToQuery RecentlyActive

instance ToHeader RecentlyActive
