{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.SlotConstraint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.SlotConstraint
  ( SlotConstraint
      ( ..,
        Optional,
        Required
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SlotConstraint = SlotConstraint' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Optional :: SlotConstraint
pattern Optional = SlotConstraint' "Optional"

pattern Required :: SlotConstraint
pattern Required = SlotConstraint' "Required"

{-# COMPLETE
  Optional,
  Required,
  SlotConstraint'
  #-}

instance FromText SlotConstraint where
  parser = (SlotConstraint' . mk) <$> takeText

instance ToText SlotConstraint where
  toText (SlotConstraint' ci) = original ci

instance Hashable SlotConstraint

instance NFData SlotConstraint

instance ToByteString SlotConstraint

instance ToQuery SlotConstraint

instance ToHeader SlotConstraint

instance ToJSON SlotConstraint where
  toJSON = toJSONText

instance FromJSON SlotConstraint where
  parseJSON = parseJSONText "SlotConstraint"
