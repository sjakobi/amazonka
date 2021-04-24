{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.InsightCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightCategory
  ( InsightCategory
      ( ..,
        Fault
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InsightCategory = InsightCategory' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Fault :: InsightCategory
pattern Fault = InsightCategory' "FAULT"

{-# COMPLETE
  Fault,
  InsightCategory'
  #-}

instance FromText InsightCategory where
  parser = (InsightCategory' . mk) <$> takeText

instance ToText InsightCategory where
  toText (InsightCategory' ci) = original ci

instance Hashable InsightCategory

instance NFData InsightCategory

instance ToByteString InsightCategory

instance ToQuery InsightCategory

instance ToHeader InsightCategory

instance FromJSON InsightCategory where
  parseJSON = parseJSONText "InsightCategory"
