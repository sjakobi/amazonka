{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationType
  ( AutomationType
      ( ..,
        CrossAccount,
        Local
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutomationType = AutomationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CrossAccount :: AutomationType
pattern CrossAccount = AutomationType' "CrossAccount"

pattern Local :: AutomationType
pattern Local = AutomationType' "Local"

{-# COMPLETE
  CrossAccount,
  Local,
  AutomationType'
  #-}

instance FromText AutomationType where
  parser = (AutomationType' . mk) <$> takeText

instance ToText AutomationType where
  toText (AutomationType' ci) = original ci

instance Hashable AutomationType

instance NFData AutomationType

instance ToByteString AutomationType

instance ToQuery AutomationType

instance ToHeader AutomationType

instance FromJSON AutomationType where
  parseJSON = parseJSONText "AutomationType"
