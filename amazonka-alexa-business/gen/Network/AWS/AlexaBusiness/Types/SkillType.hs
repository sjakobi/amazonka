{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.SkillType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SkillType
  ( SkillType
      ( ..,
        Private,
        Public
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SkillType = SkillType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Private :: SkillType
pattern Private = SkillType' "PRIVATE"

pattern Public :: SkillType
pattern Public = SkillType' "PUBLIC"

{-# COMPLETE
  Private,
  Public,
  SkillType'
  #-}

instance FromText SkillType where
  parser = (SkillType' . mk) <$> takeText

instance ToText SkillType where
  toText (SkillType' ci) = original ci

instance Hashable SkillType

instance NFData SkillType

instance ToByteString SkillType

instance ToQuery SkillType

instance ToHeader SkillType

instance FromJSON SkillType where
  parseJSON = parseJSONText "SkillType"
