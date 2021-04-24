{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemEventFilterOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemEventFilterOperator
  ( OpsItemEventFilterOperator
      ( ..,
        OIEFOEqual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OpsItemEventFilterOperator
  = OpsItemEventFilterOperator'
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

pattern OIEFOEqual :: OpsItemEventFilterOperator
pattern OIEFOEqual = OpsItemEventFilterOperator' "Equal"

{-# COMPLETE
  OIEFOEqual,
  OpsItemEventFilterOperator'
  #-}

instance FromText OpsItemEventFilterOperator where
  parser = (OpsItemEventFilterOperator' . mk) <$> takeText

instance ToText OpsItemEventFilterOperator where
  toText (OpsItemEventFilterOperator' ci) = original ci

instance Hashable OpsItemEventFilterOperator

instance NFData OpsItemEventFilterOperator

instance ToByteString OpsItemEventFilterOperator

instance ToQuery OpsItemEventFilterOperator

instance ToHeader OpsItemEventFilterOperator

instance ToJSON OpsItemEventFilterOperator where
  toJSON = toJSONText
