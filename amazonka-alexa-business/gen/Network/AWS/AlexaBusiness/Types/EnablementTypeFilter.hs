{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.EnablementTypeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.EnablementTypeFilter
  ( EnablementTypeFilter
      ( ..,
        ETFEnabled,
        ETFPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnablementTypeFilter
  = EnablementTypeFilter'
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

pattern ETFEnabled :: EnablementTypeFilter
pattern ETFEnabled = EnablementTypeFilter' "ENABLED"

pattern ETFPending :: EnablementTypeFilter
pattern ETFPending = EnablementTypeFilter' "PENDING"

{-# COMPLETE
  ETFEnabled,
  ETFPending,
  EnablementTypeFilter'
  #-}

instance FromText EnablementTypeFilter where
  parser = (EnablementTypeFilter' . mk) <$> takeText

instance ToText EnablementTypeFilter where
  toText (EnablementTypeFilter' ci) = original ci

instance Hashable EnablementTypeFilter

instance NFData EnablementTypeFilter

instance ToByteString EnablementTypeFilter

instance ToQuery EnablementTypeFilter

instance ToHeader EnablementTypeFilter

instance ToJSON EnablementTypeFilter where
  toJSON = toJSONText
