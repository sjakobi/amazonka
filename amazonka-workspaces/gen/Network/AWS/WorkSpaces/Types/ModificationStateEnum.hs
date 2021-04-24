{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.ModificationStateEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ModificationStateEnum
  ( ModificationStateEnum
      ( ..,
        UpdateInProgress,
        UpdateInitiated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModificationStateEnum
  = ModificationStateEnum'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UpdateInProgress :: ModificationStateEnum
pattern UpdateInProgress = ModificationStateEnum' "UPDATE_IN_PROGRESS"

pattern UpdateInitiated :: ModificationStateEnum
pattern UpdateInitiated = ModificationStateEnum' "UPDATE_INITIATED"

{-# COMPLETE
  UpdateInProgress,
  UpdateInitiated,
  ModificationStateEnum'
  #-}

instance FromText ModificationStateEnum where
  parser = (ModificationStateEnum' . mk) <$> takeText

instance ToText ModificationStateEnum where
  toText (ModificationStateEnum' ci) = original ci

instance Hashable ModificationStateEnum

instance NFData ModificationStateEnum

instance ToByteString ModificationStateEnum

instance ToQuery ModificationStateEnum

instance ToHeader ModificationStateEnum

instance FromJSON ModificationStateEnum where
  parseJSON = parseJSONText "ModificationStateEnum"
