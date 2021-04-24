{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.SkillTypeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SkillTypeFilter
  ( SkillTypeFilter
      ( ..,
        STFAll,
        STFPrivate,
        STFPublic
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SkillTypeFilter = SkillTypeFilter' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern STFAll :: SkillTypeFilter
pattern STFAll = SkillTypeFilter' "ALL"

pattern STFPrivate :: SkillTypeFilter
pattern STFPrivate = SkillTypeFilter' "PRIVATE"

pattern STFPublic :: SkillTypeFilter
pattern STFPublic = SkillTypeFilter' "PUBLIC"

{-# COMPLETE
  STFAll,
  STFPrivate,
  STFPublic,
  SkillTypeFilter'
  #-}

instance FromText SkillTypeFilter where
  parser = (SkillTypeFilter' . mk) <$> takeText

instance ToText SkillTypeFilter where
  toText (SkillTypeFilter' ci) = original ci

instance Hashable SkillTypeFilter

instance NFData SkillTypeFilter

instance ToByteString SkillTypeFilter

instance ToQuery SkillTypeFilter

instance ToHeader SkillTypeFilter

instance ToJSON SkillTypeFilter where
  toJSON = toJSONText
