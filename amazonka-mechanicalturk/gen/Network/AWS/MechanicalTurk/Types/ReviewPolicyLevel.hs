{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewPolicyLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ReviewPolicyLevel
  ( ReviewPolicyLevel
      ( ..,
        Assignment,
        Hit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReviewPolicyLevel = ReviewPolicyLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Assignment :: ReviewPolicyLevel
pattern Assignment = ReviewPolicyLevel' "Assignment"

pattern Hit :: ReviewPolicyLevel
pattern Hit = ReviewPolicyLevel' "HIT"

{-# COMPLETE
  Assignment,
  Hit,
  ReviewPolicyLevel'
  #-}

instance FromText ReviewPolicyLevel where
  parser = (ReviewPolicyLevel' . mk) <$> takeText

instance ToText ReviewPolicyLevel where
  toText (ReviewPolicyLevel' ci) = original ci

instance Hashable ReviewPolicyLevel

instance NFData ReviewPolicyLevel

instance ToByteString ReviewPolicyLevel

instance ToQuery ReviewPolicyLevel

instance ToHeader ReviewPolicyLevel

instance ToJSON ReviewPolicyLevel where
  toJSON = toJSONText
