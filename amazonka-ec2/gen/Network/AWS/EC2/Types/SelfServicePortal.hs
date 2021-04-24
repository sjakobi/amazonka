{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SelfServicePortal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SelfServicePortal
  ( SelfServicePortal
      ( ..,
        SSPDisabled,
        SSPEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data SelfServicePortal = SelfServicePortal' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSPDisabled :: SelfServicePortal
pattern SSPDisabled = SelfServicePortal' "disabled"

pattern SSPEnabled :: SelfServicePortal
pattern SSPEnabled = SelfServicePortal' "enabled"

{-# COMPLETE
  SSPDisabled,
  SSPEnabled,
  SelfServicePortal'
  #-}

instance FromText SelfServicePortal where
  parser = (SelfServicePortal' . mk) <$> takeText

instance ToText SelfServicePortal where
  toText (SelfServicePortal' ci) = original ci

instance Hashable SelfServicePortal

instance NFData SelfServicePortal

instance ToByteString SelfServicePortal

instance ToQuery SelfServicePortal

instance ToHeader SelfServicePortal
