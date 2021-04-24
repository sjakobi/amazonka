{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.OutpostMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.OutpostMode
  ( OutpostMode
      ( ..,
        CrossOutpost,
        SingleOutpost
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OutpostMode = OutpostMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CrossOutpost :: OutpostMode
pattern CrossOutpost = OutpostMode' "cross-outpost"

pattern SingleOutpost :: OutpostMode
pattern SingleOutpost = OutpostMode' "single-outpost"

{-# COMPLETE
  CrossOutpost,
  SingleOutpost,
  OutpostMode'
  #-}

instance FromText OutpostMode where
  parser = (OutpostMode' . mk) <$> takeText

instance ToText OutpostMode where
  toText (OutpostMode' ci) = original ci

instance Hashable OutpostMode

instance NFData OutpostMode

instance ToByteString OutpostMode

instance ToQuery OutpostMode

instance ToHeader OutpostMode
