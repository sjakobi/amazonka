{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RootAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RootAccess
  ( RootAccess
      ( ..,
        RADisabled,
        RAEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RootAccess = RootAccess' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RADisabled :: RootAccess
pattern RADisabled = RootAccess' "Disabled"

pattern RAEnabled :: RootAccess
pattern RAEnabled = RootAccess' "Enabled"

{-# COMPLETE
  RADisabled,
  RAEnabled,
  RootAccess'
  #-}

instance FromText RootAccess where
  parser = (RootAccess' . mk) <$> takeText

instance ToText RootAccess where
  toText (RootAccess' ci) = original ci

instance Hashable RootAccess

instance NFData RootAccess

instance ToByteString RootAccess

instance ToQuery RootAccess

instance ToHeader RootAccess

instance ToJSON RootAccess where
  toJSON = toJSONText

instance FromJSON RootAccess where
  parseJSON = parseJSONText "RootAccess"
