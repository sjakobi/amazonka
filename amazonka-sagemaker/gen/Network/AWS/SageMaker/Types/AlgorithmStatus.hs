{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AlgorithmStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmStatus
  ( AlgorithmStatus
      ( ..,
        ACompleted,
        ADeleting,
        AFailed,
        AInProgress,
        APending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AlgorithmStatus = AlgorithmStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ACompleted :: AlgorithmStatus
pattern ACompleted = AlgorithmStatus' "Completed"

pattern ADeleting :: AlgorithmStatus
pattern ADeleting = AlgorithmStatus' "Deleting"

pattern AFailed :: AlgorithmStatus
pattern AFailed = AlgorithmStatus' "Failed"

pattern AInProgress :: AlgorithmStatus
pattern AInProgress = AlgorithmStatus' "InProgress"

pattern APending :: AlgorithmStatus
pattern APending = AlgorithmStatus' "Pending"

{-# COMPLETE
  ACompleted,
  ADeleting,
  AFailed,
  AInProgress,
  APending,
  AlgorithmStatus'
  #-}

instance FromText AlgorithmStatus where
  parser = (AlgorithmStatus' . mk) <$> takeText

instance ToText AlgorithmStatus where
  toText (AlgorithmStatus' ci) = original ci

instance Hashable AlgorithmStatus

instance NFData AlgorithmStatus

instance ToByteString AlgorithmStatus

instance ToQuery AlgorithmStatus

instance ToHeader AlgorithmStatus

instance FromJSON AlgorithmStatus where
  parseJSON = parseJSONText "AlgorithmStatus"
