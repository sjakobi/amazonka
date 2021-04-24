{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.Statistic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.Statistic
  ( Statistic
      ( ..,
        Average,
        Maximum,
        Minimum,
        SampleCount,
        Sum
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

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

pattern Average :: Statistic
pattern Average = Statistic' "Average"

pattern Maximum :: Statistic
pattern Maximum = Statistic' "Maximum"

pattern Minimum :: Statistic
pattern Minimum = Statistic' "Minimum"

pattern SampleCount :: Statistic
pattern SampleCount = Statistic' "SampleCount"

pattern Sum :: Statistic
pattern Sum = Statistic' "Sum"

{-# COMPLETE
  Average,
  Maximum,
  Minimum,
  SampleCount,
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

instance FromXML Statistic where
  parseXML = parseXMLText "Statistic"
