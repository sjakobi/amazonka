{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ShutdownBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ShutdownBehavior
  ( ShutdownBehavior
      ( ..,
        SBStop,
        SBTerminate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ShutdownBehavior = ShutdownBehavior' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SBStop :: ShutdownBehavior
pattern SBStop = ShutdownBehavior' "stop"

pattern SBTerminate :: ShutdownBehavior
pattern SBTerminate = ShutdownBehavior' "terminate"

{-# COMPLETE
  SBStop,
  SBTerminate,
  ShutdownBehavior'
  #-}

instance FromText ShutdownBehavior where
  parser = (ShutdownBehavior' . mk) <$> takeText

instance ToText ShutdownBehavior where
  toText (ShutdownBehavior' ci) = original ci

instance Hashable ShutdownBehavior

instance NFData ShutdownBehavior

instance ToByteString ShutdownBehavior

instance ToQuery ShutdownBehavior

instance ToHeader ShutdownBehavior

instance FromXML ShutdownBehavior where
  parseXML = parseXMLText "ShutdownBehavior"
