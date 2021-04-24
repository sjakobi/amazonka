{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.StatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.StatusType
  ( StatusType
      ( ..,
        Detected,
        Missed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StatusType = StatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Detected :: StatusType
pattern Detected = StatusType' "Detected"

pattern Missed :: StatusType
pattern Missed = StatusType' "Missed"

{-# COMPLETE
  Detected,
  Missed,
  StatusType'
  #-}

instance FromText StatusType where
  parser = (StatusType' . mk) <$> takeText

instance ToText StatusType where
  toText (StatusType' ci) = original ci

instance Hashable StatusType

instance NFData StatusType

instance ToByteString StatusType

instance ToQuery StatusType

instance ToHeader StatusType

instance ToJSON StatusType where
  toJSON = toJSONText
