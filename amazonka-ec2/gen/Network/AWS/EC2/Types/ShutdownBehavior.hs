{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ShutdownBehaviorStop,
        ShutdownBehaviorTerminate
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ShutdownBehavior = ShutdownBehavior'
  { fromShutdownBehavior ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ShutdownBehaviorStop :: ShutdownBehavior
pattern ShutdownBehaviorStop = ShutdownBehavior' "stop"

pattern ShutdownBehaviorTerminate :: ShutdownBehavior
pattern ShutdownBehaviorTerminate = ShutdownBehavior' "terminate"

{-# COMPLETE
  ShutdownBehaviorStop,
  ShutdownBehaviorTerminate,
  ShutdownBehavior'
  #-}

instance Prelude.FromText ShutdownBehavior where
  parser = ShutdownBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShutdownBehavior where
  toText (ShutdownBehavior' x) = x

instance Prelude.Hashable ShutdownBehavior

instance Prelude.NFData ShutdownBehavior

instance Prelude.ToByteString ShutdownBehavior

instance Prelude.ToQuery ShutdownBehavior

instance Prelude.ToHeader ShutdownBehavior

instance Prelude.FromXML ShutdownBehavior where
  parseXML = Prelude.parseXMLText "ShutdownBehavior"
