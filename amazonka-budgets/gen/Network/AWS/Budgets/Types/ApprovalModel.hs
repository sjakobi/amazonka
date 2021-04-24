{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ApprovalModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ApprovalModel
  ( ApprovalModel
      ( ..,
        Automatic,
        Manual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApprovalModel = ApprovalModel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Automatic :: ApprovalModel
pattern Automatic = ApprovalModel' "AUTOMATIC"

pattern Manual :: ApprovalModel
pattern Manual = ApprovalModel' "MANUAL"

{-# COMPLETE
  Automatic,
  Manual,
  ApprovalModel'
  #-}

instance FromText ApprovalModel where
  parser = (ApprovalModel' . mk) <$> takeText

instance ToText ApprovalModel where
  toText (ApprovalModel' ci) = original ci

instance Hashable ApprovalModel

instance NFData ApprovalModel

instance ToByteString ApprovalModel

instance ToQuery ApprovalModel

instance ToHeader ApprovalModel

instance ToJSON ApprovalModel where
  toJSON = toJSONText

instance FromJSON ApprovalModel where
  parseJSON = parseJSONText "ApprovalModel"
