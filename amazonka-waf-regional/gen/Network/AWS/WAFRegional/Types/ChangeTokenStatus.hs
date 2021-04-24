{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.ChangeTokenStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.ChangeTokenStatus
  ( ChangeTokenStatus
      ( ..,
        Insync,
        Pending,
        Provisioned
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChangeTokenStatus = ChangeTokenStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Insync :: ChangeTokenStatus
pattern Insync = ChangeTokenStatus' "INSYNC"

pattern Pending :: ChangeTokenStatus
pattern Pending = ChangeTokenStatus' "PENDING"

pattern Provisioned :: ChangeTokenStatus
pattern Provisioned = ChangeTokenStatus' "PROVISIONED"

{-# COMPLETE
  Insync,
  Pending,
  Provisioned,
  ChangeTokenStatus'
  #-}

instance FromText ChangeTokenStatus where
  parser = (ChangeTokenStatus' . mk) <$> takeText

instance ToText ChangeTokenStatus where
  toText (ChangeTokenStatus' ci) = original ci

instance Hashable ChangeTokenStatus

instance NFData ChangeTokenStatus

instance ToByteString ChangeTokenStatus

instance ToQuery ChangeTokenStatus

instance ToHeader ChangeTokenStatus

instance FromJSON ChangeTokenStatus where
  parseJSON = parseJSONText "ChangeTokenStatus"
