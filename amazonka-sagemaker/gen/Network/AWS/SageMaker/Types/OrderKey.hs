{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OrderKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OrderKey
  ( OrderKey
      ( ..,
        OKAscending,
        OKDescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrderKey = OrderKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OKAscending :: OrderKey
pattern OKAscending = OrderKey' "Ascending"

pattern OKDescending :: OrderKey
pattern OKDescending = OrderKey' "Descending"

{-# COMPLETE
  OKAscending,
  OKDescending,
  OrderKey'
  #-}

instance FromText OrderKey where
  parser = (OrderKey' . mk) <$> takeText

instance ToText OrderKey where
  toText (OrderKey' ci) = original ci

instance Hashable OrderKey

instance NFData OrderKey

instance ToByteString OrderKey

instance ToQuery OrderKey

instance ToHeader OrderKey

instance ToJSON OrderKey where
  toJSON = toJSONText
