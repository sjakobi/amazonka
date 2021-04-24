{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingStatusCode
  ( ScalingStatusCode
      ( ..,
        Active,
        Inactive,
        PartiallyActive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalingStatusCode = ScalingStatusCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: ScalingStatusCode
pattern Active = ScalingStatusCode' "Active"

pattern Inactive :: ScalingStatusCode
pattern Inactive = ScalingStatusCode' "Inactive"

pattern PartiallyActive :: ScalingStatusCode
pattern PartiallyActive = ScalingStatusCode' "PartiallyActive"

{-# COMPLETE
  Active,
  Inactive,
  PartiallyActive,
  ScalingStatusCode'
  #-}

instance FromText ScalingStatusCode where
  parser = (ScalingStatusCode' . mk) <$> takeText

instance ToText ScalingStatusCode where
  toText (ScalingStatusCode' ci) = original ci

instance Hashable ScalingStatusCode

instance NFData ScalingStatusCode

instance ToByteString ScalingStatusCode

instance ToQuery ScalingStatusCode

instance ToHeader ScalingStatusCode

instance FromJSON ScalingStatusCode where
  parseJSON = parseJSONText "ScalingStatusCode"
