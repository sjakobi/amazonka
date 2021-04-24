{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CopyTagsFromSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CopyTagsFromSource
  ( CopyTagsFromSource
      ( ..,
        Volume
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CopyTagsFromSource
  = CopyTagsFromSource'
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

pattern Volume :: CopyTagsFromSource
pattern Volume = CopyTagsFromSource' "volume"

{-# COMPLETE
  Volume,
  CopyTagsFromSource'
  #-}

instance FromText CopyTagsFromSource where
  parser = (CopyTagsFromSource' . mk) <$> takeText

instance ToText CopyTagsFromSource where
  toText (CopyTagsFromSource' ci) = original ci

instance Hashable CopyTagsFromSource

instance NFData CopyTagsFromSource

instance ToByteString CopyTagsFromSource

instance ToQuery CopyTagsFromSource

instance ToHeader CopyTagsFromSource
