{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.ProcessBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ProcessBehavior
  ( ProcessBehavior
      ( ..,
        Build,
        Save
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProcessBehavior = ProcessBehavior' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Build :: ProcessBehavior
pattern Build = ProcessBehavior' "BUILD"

pattern Save :: ProcessBehavior
pattern Save = ProcessBehavior' "SAVE"

{-# COMPLETE
  Build,
  Save,
  ProcessBehavior'
  #-}

instance FromText ProcessBehavior where
  parser = (ProcessBehavior' . mk) <$> takeText

instance ToText ProcessBehavior where
  toText (ProcessBehavior' ci) = original ci

instance Hashable ProcessBehavior

instance NFData ProcessBehavior

instance ToByteString ProcessBehavior

instance ToQuery ProcessBehavior

instance ToHeader ProcessBehavior

instance ToJSON ProcessBehavior where
  toJSON = toJSONText
