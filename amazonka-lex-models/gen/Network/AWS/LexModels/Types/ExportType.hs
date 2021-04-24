{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.ExportType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ExportType
  ( ExportType
      ( ..,
        AlexaSkillsKit,
        Lex
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExportType = ExportType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AlexaSkillsKit :: ExportType
pattern AlexaSkillsKit = ExportType' "ALEXA_SKILLS_KIT"

pattern Lex :: ExportType
pattern Lex = ExportType' "LEX"

{-# COMPLETE
  AlexaSkillsKit,
  Lex,
  ExportType'
  #-}

instance FromText ExportType where
  parser = (ExportType' . mk) <$> takeText

instance ToText ExportType where
  toText (ExportType' ci) = original ci

instance Hashable ExportType

instance NFData ExportType

instance ToByteString ExportType

instance ToQuery ExportType

instance ToHeader ExportType

instance ToJSON ExportType where
  toJSON = toJSONText

instance FromJSON ExportType where
  parseJSON = parseJSONText "ExportType"
