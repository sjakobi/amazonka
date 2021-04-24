{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.RefreshStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.RefreshStrategy
  ( RefreshStrategy
      ( ..,
        Rolling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RefreshStrategy = RefreshStrategy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Rolling :: RefreshStrategy
pattern Rolling = RefreshStrategy' "Rolling"

{-# COMPLETE
  Rolling,
  RefreshStrategy'
  #-}

instance FromText RefreshStrategy where
  parser = (RefreshStrategy' . mk) <$> takeText

instance ToText RefreshStrategy where
  toText (RefreshStrategy' ci) = original ci

instance Hashable RefreshStrategy

instance NFData RefreshStrategy

instance ToByteString RefreshStrategy

instance ToQuery RefreshStrategy

instance ToHeader RefreshStrategy
