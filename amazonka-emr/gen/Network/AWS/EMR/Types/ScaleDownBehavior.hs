{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.ScaleDownBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ScaleDownBehavior
  ( ScaleDownBehavior
      ( ..,
        TerminateAtInstanceHour,
        TerminateAtTaskCompletion
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScaleDownBehavior = ScaleDownBehavior' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TerminateAtInstanceHour :: ScaleDownBehavior
pattern TerminateAtInstanceHour = ScaleDownBehavior' "TERMINATE_AT_INSTANCE_HOUR"

pattern TerminateAtTaskCompletion :: ScaleDownBehavior
pattern TerminateAtTaskCompletion = ScaleDownBehavior' "TERMINATE_AT_TASK_COMPLETION"

{-# COMPLETE
  TerminateAtInstanceHour,
  TerminateAtTaskCompletion,
  ScaleDownBehavior'
  #-}

instance FromText ScaleDownBehavior where
  parser = (ScaleDownBehavior' . mk) <$> takeText

instance ToText ScaleDownBehavior where
  toText (ScaleDownBehavior' ci) = original ci

instance Hashable ScaleDownBehavior

instance NFData ScaleDownBehavior

instance ToByteString ScaleDownBehavior

instance ToQuery ScaleDownBehavior

instance ToHeader ScaleDownBehavior

instance ToJSON ScaleDownBehavior where
  toJSON = toJSONText

instance FromJSON ScaleDownBehavior where
  parseJSON = parseJSONText "ScaleDownBehavior"
