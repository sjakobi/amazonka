{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.RemediationActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.RemediationActionType
  ( RemediationActionType
      ( ..,
        Modify,
        Remove
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RemediationActionType
  = RemediationActionType'
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

pattern Modify :: RemediationActionType
pattern Modify = RemediationActionType' "MODIFY"

pattern Remove :: RemediationActionType
pattern Remove = RemediationActionType' "REMOVE"

{-# COMPLETE
  Modify,
  Remove,
  RemediationActionType'
  #-}

instance FromText RemediationActionType where
  parser = (RemediationActionType' . mk) <$> takeText

instance ToText RemediationActionType where
  toText (RemediationActionType' ci) = original ci

instance Hashable RemediationActionType

instance NFData RemediationActionType

instance ToByteString RemediationActionType

instance ToQuery RemediationActionType

instance ToHeader RemediationActionType

instance FromJSON RemediationActionType where
  parseJSON = parseJSONText "RemediationActionType"
