{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.IsModifiable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.IsModifiable
  ( IsModifiable
      ( ..,
        Conditional,
        False',
        True'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IsModifiable = IsModifiable' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Conditional :: IsModifiable
pattern Conditional = IsModifiable' "CONDITIONAL"

pattern False' :: IsModifiable
pattern False' = IsModifiable' "FALSE"

pattern True' :: IsModifiable
pattern True' = IsModifiable' "TRUE"

{-# COMPLETE
  Conditional,
  False',
  True',
  IsModifiable'
  #-}

instance FromText IsModifiable where
  parser = (IsModifiable' . mk) <$> takeText

instance ToText IsModifiable where
  toText (IsModifiable' ci) = original ci

instance Hashable IsModifiable

instance NFData IsModifiable

instance ToByteString IsModifiable

instance ToQuery IsModifiable

instance ToHeader IsModifiable

instance FromJSON IsModifiable where
  parseJSON = parseJSONText "IsModifiable"
