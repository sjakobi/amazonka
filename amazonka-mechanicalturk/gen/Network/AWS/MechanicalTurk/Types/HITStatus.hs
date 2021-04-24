{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.HITStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.HITStatus
  ( HITStatus
      ( ..,
        Assignable,
        Disposed,
        Reviewable,
        Reviewing,
        Unassignable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HITStatus = HITStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Assignable :: HITStatus
pattern Assignable = HITStatus' "Assignable"

pattern Disposed :: HITStatus
pattern Disposed = HITStatus' "Disposed"

pattern Reviewable :: HITStatus
pattern Reviewable = HITStatus' "Reviewable"

pattern Reviewing :: HITStatus
pattern Reviewing = HITStatus' "Reviewing"

pattern Unassignable :: HITStatus
pattern Unassignable = HITStatus' "Unassignable"

{-# COMPLETE
  Assignable,
  Disposed,
  Reviewable,
  Reviewing,
  Unassignable,
  HITStatus'
  #-}

instance FromText HITStatus where
  parser = (HITStatus' . mk) <$> takeText

instance ToText HITStatus where
  toText (HITStatus' ci) = original ci

instance Hashable HITStatus

instance NFData HITStatus

instance ToByteString HITStatus

instance ToQuery HITStatus

instance ToHeader HITStatus

instance FromJSON HITStatus where
  parseJSON = parseJSONText "HITStatus"
