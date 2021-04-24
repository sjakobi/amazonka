{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Feedback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.Feedback
  ( Feedback
      ( ..,
        NotUseful,
        Useful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Feedback = Feedback' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NotUseful :: Feedback
pattern NotUseful = Feedback' "NOT_USEFUL"

pattern Useful :: Feedback
pattern Useful = Feedback' "USEFUL"

{-# COMPLETE
  NotUseful,
  Useful,
  Feedback'
  #-}

instance FromText Feedback where
  parser = (Feedback' . mk) <$> takeText

instance ToText Feedback where
  toText (Feedback' ci) = original ci

instance Hashable Feedback

instance NFData Feedback

instance ToByteString Feedback

instance ToQuery Feedback

instance ToHeader Feedback

instance ToJSON Feedback where
  toJSON = toJSONText
