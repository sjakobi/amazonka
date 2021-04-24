{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.FilterCondition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.FilterCondition
  ( FilterCondition
      ( ..,
        Between,
        EQ',
        IN
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FilterCondition = FilterCondition' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Between :: FilterCondition
pattern Between = FilterCondition' "BETWEEN"

pattern EQ' :: FilterCondition
pattern EQ' = FilterCondition' "EQ"

pattern IN :: FilterCondition
pattern IN = FilterCondition' "IN"

{-# COMPLETE
  Between,
  EQ',
  IN,
  FilterCondition'
  #-}

instance FromText FilterCondition where
  parser = (FilterCondition' . mk) <$> takeText

instance ToText FilterCondition where
  toText (FilterCondition' ci) = original ci

instance Hashable FilterCondition

instance NFData FilterCondition

instance ToByteString FilterCondition

instance ToQuery FilterCondition

instance ToHeader FilterCondition

instance ToJSON FilterCondition where
  toJSON = toJSONText
