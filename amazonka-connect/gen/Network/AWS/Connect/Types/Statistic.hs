{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Statistic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Statistic
  ( Statistic
      ( ..,
        Avg,
        Max,
        Sum
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Statistic = Statistic' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Avg :: Statistic
pattern Avg = Statistic' "AVG"

pattern Max :: Statistic
pattern Max = Statistic' "MAX"

pattern Sum :: Statistic
pattern Sum = Statistic' "SUM"

{-# COMPLETE
  Avg,
  Max,
  Sum,
  Statistic'
  #-}

instance FromText Statistic where
  parser = (Statistic' . mk) <$> takeText

instance ToText Statistic where
  toText (Statistic' ci) = original ci

instance Hashable Statistic

instance NFData Statistic

instance ToByteString Statistic

instance ToQuery Statistic

instance ToHeader Statistic

instance ToJSON Statistic where
  toJSON = toJSONText

instance FromJSON Statistic where
  parseJSON = parseJSONText "Statistic"
