{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.ComputeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ComputeType
  ( ComputeType
      ( ..,
        Acu1,
        Acu2
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComputeType = ComputeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Acu1 :: ComputeType
pattern Acu1 = ComputeType' "ACU_1"

pattern Acu2 :: ComputeType
pattern Acu2 = ComputeType' "ACU_2"

{-# COMPLETE
  Acu1,
  Acu2,
  ComputeType'
  #-}

instance FromText ComputeType where
  parser = (ComputeType' . mk) <$> takeText

instance ToText ComputeType where
  toText (ComputeType' ci) = original ci

instance Hashable ComputeType

instance NFData ComputeType

instance ToByteString ComputeType

instance ToQuery ComputeType

instance ToHeader ComputeType

instance ToJSON ComputeType where
  toJSON = toJSONText

instance FromJSON ComputeType where
  parseJSON = parseJSONText "ComputeType"
