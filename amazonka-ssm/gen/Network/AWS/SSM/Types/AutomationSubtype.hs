{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationSubtype
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationSubtype
  ( AutomationSubtype
      ( ..,
        ChangeRequest
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutomationSubtype = AutomationSubtype' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ChangeRequest :: AutomationSubtype
pattern ChangeRequest = AutomationSubtype' "ChangeRequest"

{-# COMPLETE
  ChangeRequest,
  AutomationSubtype'
  #-}

instance FromText AutomationSubtype where
  parser = (AutomationSubtype' . mk) <$> takeText

instance ToText AutomationSubtype where
  toText (AutomationSubtype' ci) = original ci

instance Hashable AutomationSubtype

instance NFData AutomationSubtype

instance ToByteString AutomationSubtype

instance ToQuery AutomationSubtype

instance ToHeader AutomationSubtype

instance FromJSON AutomationSubtype where
  parseJSON = parseJSONText "AutomationSubtype"
