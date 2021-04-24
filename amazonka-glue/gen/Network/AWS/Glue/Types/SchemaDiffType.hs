{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.SchemaDiffType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaDiffType
  ( SchemaDiffType
      ( ..,
        SyntaxDiff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SchemaDiffType = SchemaDiffType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SyntaxDiff :: SchemaDiffType
pattern SyntaxDiff = SchemaDiffType' "SYNTAX_DIFF"

{-# COMPLETE
  SyntaxDiff,
  SchemaDiffType'
  #-}

instance FromText SchemaDiffType where
  parser = (SchemaDiffType' . mk) <$> takeText

instance ToText SchemaDiffType where
  toText (SchemaDiffType' ci) = original ci

instance Hashable SchemaDiffType

instance NFData SchemaDiffType

instance ToByteString SchemaDiffType

instance ToQuery SchemaDiffType

instance ToHeader SchemaDiffType

instance ToJSON SchemaDiffType where
  toJSON = toJSONText
